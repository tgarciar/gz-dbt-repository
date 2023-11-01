{{config( materialized = 'Table')}}

SELECT *
FROM 
{{ref('stg_gz_raw_data__raw_gz_product')}}
JOIN
{{ref('stg_gz_raw_data__raw_gz_sales')}}
USING (products_id)
JOIN 
{{ref('stg_gz_raw_data__raw_gz_ship')}}
USING (orders_id)
