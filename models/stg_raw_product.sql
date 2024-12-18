SELECT products_id,
CAST (purchSE_PRICE AS FLOAT64) AS purchase_price
FROM {{ source('gz_raw_data', 'raw_gz_product') }}