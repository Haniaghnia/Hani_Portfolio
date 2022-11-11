/* Analyzing eCommerce Business Performance with SQLSkill 
Used : Join,  CTE', Temp Tables Aggregate Functions, Creating Views, Converting Data Types
Analytical Thinking, Business understanding, and SQL Reporting*/

---------------------------------------------------------------------------------------------

/* First Creating all Table  */
/* ERD  */
--Create entity relationships between tables, based on the schema below. And export Entity Relationship Diagram (ERD) --

alter table products add constraint pk_products primary key (product_id);
alter table order_items add foreign key (product_id) references products;

--Primary key for other tables--
alter table customers add constraint pk_cust primary key (customer_id);
alter table geolocation add constraint pk_geo primary key (geo_zip_code_prefix);
alter table orders add constraint pk_orders primary key (order_id);
alter table sellers add constraint pk_seller primary key (seller_id);

--Foreign key for relationships between other tables--
alter table customers add foreign key (customer_zip_code_prefix) references geolocation;
alter table orders add foreign key (customer_id) references customers;
alter table order_items add foreign key (order_id) references orders;
alter table order_items add foreign key (seller_id) references sellers;
alter table sellers add foreign key (seller_zip_code_prefix) references geolocation;
alter table payments add foreign key (order_id) references orders;
alter table order_items add foreign key (product_id) references products;
alter table reviews add foreign key (order_id) references orders; 

---------------------------------------------------------------------------------------------

/* Monthly Active User  */
--Create a temporary table of cte, cte counts the number of unique customers who actively 
--place orders every month, the number of unique customers is called Monthly Active User (MAU)--

select 
	year, 
	round(avg(mau), 2) as average_mau
from (
	select 
		date_part('year', o.order_purchase_timestamp) as year,
		date_part('month', o.order_purchase_timestamp) as month,
		count(distinct c.customer_unique_id) as mau
	from orders o 
	join customers c on o.customer_id = c.customer_id
	group by 1,2 
) subq
group by 1


---------------------------------------------------------------------------------------------

/* Number of new customers (first-time transacting) */

select 
	date_part('year', first_purchase_time) as year,
	count(1) as new_customers
from (
	select 
		c.customer_unique_id,
		min(o.order_purchase_timestamp) as first_purchase_time
	from orders o 
	join customers c on c.customer_id = o.customer_id
	group by 1
) subq
group by 1

---------------------------------------------------------------------------------------------

/* Number of customers who make purchases more than once (repeat orders) */

select 
	year, 
	count(distinct customer_unique_id) as repeating_customers
from (
	select 
		date_part('year', o.order_purchase_timestamp) as year,
		c.customer_unique_id,
		count(1) as purchase_frequency
	from orders o 
	join customers c on c.customer_id = o.customer_id
	group by 1, 2
	having count(1) > 1
) subq
group by 1

---------------------------------------------------------------------------------------------

/* The average number of orders made by customers for each year */

select 
	year, 
	round(avg(frequency_purchase),3) as avg_orders_per_customers 
from (
	select 
		date_part('year', o.order_purchase_timestamp) as year,
		c.customer_unique_id,
		count(1) as frequency_purchase
	from orders o 
	join customers c on c.customer_id = o.customer_id
	group by 1, 2
) a
group by 1

---------------------------------------------------------------------------------------------

/* Combines the three metrics displayed into one table view */

with 
calc_mau as (
select 
	year, 
	round(avg(mau), 2) as average_mau
from
(
	select 
		date_part('year', o.order_purchase_timestamp) as year,
		date_part('month', o.order_purchase_timestamp) as month,
		count(distinct c.customer_unique_id) as mau
	from orders o 
	join customers c on o.customer_id = c.customer_id
	group by 1,2 
) subq
group by 1
),
calc_newcust as (
select 
	date_part('year', first_purchase_time) as year,
	count(1) as new_customers
from 
(
	select 
		c.customer_unique_id,
		min(o.order_purchase_timestamp) as first_purchase_time
	from orders o 
	join customers c on c.customer_id = o.customer_id
	group by 1
) subq
group by 1
),
calc_repeat as (
select 
	year, 
	count(distinct customer_unique_id) as repeating_customers
from 
(
	select 
		date_part('year', o.order_purchase_timestamp) as year,
		c.customer_unique_id,
		count(1) as purchase_frequency
	from orders o 
	join customers c on c.customer_id = o.customer_id
	group by 1, 2
	having count(1) > 1
) subq
group by 1 
),
calc_avg_freq as (
select 
	year, 
	round(avg(frequency_purchase),3) as avg_orders_per_customers 
from 
(
	select 
		date_part('year', o.order_purchase_timestamp) as year,
		c.customer_unique_id,
		count(1) as frequency_purchase
	from orders o 
	join customers c on c.customer_id = o.customer_id
	group by 1, 2
) a
group by 1
)

select 
	mau.year, 
	mau.average_mau, 
	newc.new_customers,
	rep.repeating_customers, 
	freq.avg_orders_per_customers
from calc_mau mau 
join calc_newcust newc on mau.year = newc.year
join calc_repeat rep on rep.year = mau.year
join calc_avg_freq freq on freq.year = mau.year

---------------------------------------------------------------------------------------------

/* Table total revenue for each year */

create table total_revenue_per_year as
select 
	date_part('year', o.order_purchase_timestamp) as year,
	sum(revenue_per_order) as revenue
from (
	select 
		order_id, 
		sum(price+freight_value) as revenue_per_order
	from order_items
	group by 1
) subq
join orders o on subq.order_id = o.order_id
where o.order_status = 'delivered'
group by 1

---------------------------------------------------------------------------------------------

/* Total number of canceled orders for each year */

create table total_cancel_per_year as 
select 
	date_part('year', order_purchase_timestamp) as year,
	count(1) as num_canceled_orders
from orders
where order_status = 'canceled'
group by 1

---------------------------------------------------------------------------------------------

/* Create a table for the product category names that provide the highest total revenue for 
each year */

create table top_product_category_by_revenue_per_year as 
select 
	year, 
	product_category_name, 
	revenue 
from (
select 
	date_part('year', o.order_purchase_timestamp) as year,
	p.product_category_name,
	sum(oi.price + oi.freight_value) as revenue,
	rank() over(partition by 
date_part('year', o.order_purchase_timestamp) 
 order by 
sum(oi.price + oi.freight_value) desc) as rk
from order_items oi
join orders o on o.order_id = oi.order_id
join products p on p.product_id = oi.product_id
where o.order_status = 'delivered'
group by 1,2) sq
where rk = 1

---------------------------------------------------------------------------------------------

/* Create a table for the name of the product category that has the highest number of canceled 
orders for each year */

create table most_canceled_product_category_per_year as 
select 
	year, 
	product_category_name, 
	num_canceled 
from (
select 
	date_part('year', o.order_purchase_timestamp) as year,
	p.product_category_name,
	count(1) as num_canceled,
	rank() over(partition by 
date_part('year', o.order_purchase_timestamp) 
			 order by count(1) desc) as rk
from order_items oi
join orders o on o.order_id = oi.order_id
join products p on p.product_id = oi.product_id
where o.order_status = 'canceled'
group by 1,2) sq
where rk = 1

---------------------------------------------------------------------------------------------

/* Combine the information that has been obtained into one table view */

select 
	a.year,
	a.product_category_name as top_product_category_by_revenue,
	a.revenue as category_revenue,
	b.revenue as year_total_revenue,
	c.product_category_name as most_canceled_product_category,
	c.num_canceled as category_num_canceled,
	d.num_canceled_orders as year_total_num_canceled
from top_product_category_by_revenue_per_year a
join total_revenue_per_year b on a.year = b.year 
join most_canceled_product_category_per_year c on a.year = c.year 
join total_cancel_per_year d on d.year = a.year

---------------------------------------------------------------------------------------------

/* Amount of use of each type of payment all the time sorted from the most favorite */

select 
	op.payment_type,
	count(1) as num_used
from order_payments op 
join orders o on o.order_id = op.order_id
group by 1
order by 2 desc

---------------------------------------------------------------------------------------------

/* Detailed information on the amount of use of each type of payment for each year */

with 
tmp as (
select 
	date_part('year', o.order_purchase_timestamp) as year,
	op.payment_type,
	count(1) as num_used
from order_payments op 
join orders o on o.order_id = op.order_id
group by 1, 2
) 

select *,
	case when year_2017 = 0 then NULL
		else round((year_2018 - year_2017) / year_2017, 2)
	end as pct_change_2017_2018
from (
select 
  payment_type,
  sum(case when year = '2016' then num_used else 0 end) as year_2016,
  sum(case when year = '2017' then num_used else 0 end) as year_2017,
  sum(case when year = '2018' then num_used else 0 end) as year_2018
from tmp 
group by 1) subq
order by 5 desc

---------------------------------------------------------------------------------------------

