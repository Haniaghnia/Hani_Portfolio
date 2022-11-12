/* Outlier Detection and Changes dimension data */

---------------------------------------------------------------------------------------------------------------------------------------------------------------

/* Outlier Detection */

with percentile as
(select 
	percentile_disc(0.5) within group (order by courier.discount_offered) as percentile_25_5, 
	percentile_disc(0.5) within group (order by courier.discount_offered) as percentile_75_5
from courier),

iqr as 
(select 
	percentile_25_5,
	percentile_75_5,
	(percentile_75_5 - percentile_25_5) as iqr_5
from 
	percentile
),

discount as
(select id , discount_offered
from courier 
group by id, discount_offered)

select id,discount_offered, 
	case when discount_offered >= percentile_75_5 +iqr_5 then 'Out of upper bound'
		 when discount_offered >= percentile_25_5 +iqr_5 then 'Out of lower bound'
		 else 'In bound ' end as status_outlier
from discount, 
	 iqr
order by discount_offered desc;


--------------------------------------------------------------------------------------------------------------------------

/* Changes dimension data */

select 	a.id as id, a.expedition as expedition, 
		a.mode_of_shipment as mode_of_shipment, 'CUSTOMER CARE CALLS' as indicator, 
		a.product_importance as product_importance , a.gender as gender, 
		a.province_code as province_code , b.province as province , 
		a.customer_care_calls as value
from courier a 
left join mapping_provinsi b using(province_code)

union all 

select a.id as id , a.expedition as expedition, 
		a.mode_of_shipment as mode_of_shipment, 'CUSTOMER RATING' as indicator, 
		a.product_importance as product_importance , a.gender as gender, 
		a.province_code as province_code , b.province as province , 
		a.customer_rating as value
from courier a 
left join mapping_provinsi b using(province_code)

union all 

select a.id as id , a.expedition as expedition, 
		a.mode_of_shipment as mode_of_shipment, 'COST OF THE PRODUCT' as indicator, 
		a.product_importance as product_importance , a.gender as gender, 
		a.province_code as province_code , b.province as province , 
		a.cost_of_the_product as value
from courier a 
left join mapping_provinsi b using(province_code)

union all 

select a.id as id , a.expedition as expedition, 
		a.mode_of_shipment as mode_of_shipment, 'DELAY OR NOT' as indicator, 
		a.product_importance as product_importance , a.gender as gender, 
		a.province_code as province_code , b.province as province , 
		a.delay_or_ontime as value
from courier a 
left join mapping_provinsi b using(province_code)

union all 

select a.id as id , a.expedition as expedition, 
		a.mode_of_shipment as mode_of_shipment, 'DISC. PERSENTAGE' as indicator, 
		a.product_importance as product_importance , a.gender as gender, 
		a.province_code as province_code , b.province as province , 
		a.disc_persentage as value
from courier a 
left join mapping_provinsi b using(province_code)

union all 

select a.id as id , a.expedition as expedition, 
		a.mode_of_shipment as mode_of_shipment, 'DISCOUNT OFFERED' as indicator, 
		a.product_importance as product_importance , a.gender as gender, 
		a.province_code as province_code , b.province as province , 
		a.discount_offered as value
from courier a 
left join mapping_provinsi b using(province_code)

union all 

select a.id as id , a.expedition as expedition, 
		a.mode_of_shipment as mode_of_shipment, 'PRIOR PURCHASES' as indicator, 
		a.product_importance as product_importance , a.gender as gender, 
		a.province_code as province_code , b.province as province , 
		a.prior_purchases as value
from courier a 
left join mapping_provinsi b using(province_code)

union all 

select a.id as id , a.expedition as expedition, 
		a.mode_of_shipment as mode_of_shipment, 'WEIGHT IN GMS' as indicator, 
		a.product_importance as product_importance , a.gender as gender, 
		a.province_code as province_code , b.province as province , 
		a.weight_in_gms as value
from courier a 
left join mapping_provinsi b using(province_code)



