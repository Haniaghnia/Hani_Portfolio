/* Data Manipulation */

select count (transaction_id) as transaction_amount,
sales_outlet_id, 
count(customer_id) as number_of_customers,
count(distinct staff_id) as number_of_staff,
sum(quantity) as total_quantity,
sum(line_item_amount) total_payment,
promo_item_yn , store_city
from transaction_data
left join outlet_data using (sales_outlet_id)
group by sales_outlet_id, store_city, promo_item_yn;

--------------------------------------------------------------------------------------------------------------------------