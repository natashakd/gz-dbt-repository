SELECT *
FROM {{ source('gz_raw_data', 'raw_gz_sales') }}

SELECT date_date,
orders_id,
pdt_id AS product_id,
revenue,
quantity
FROM {{ source('gz_raw_data', 'raw_gz_sales') }}