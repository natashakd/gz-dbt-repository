SELECT date_date,
orders_id,
CAST (pdt_id AS INT64) AS product_id,
revenue,
quantity
FROM {{ source('gz_raw_data', 'raw_gz_sales') }}