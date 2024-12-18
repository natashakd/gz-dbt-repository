SELECT
sales.product_id,
sales.date_date,
sales.orders_id,
sales.revenue,
sales.quantity,
product.purchase_price,
ROUND(sales.quantity * product.purchase_price, 2) AS purchase_cost,
ROUND(sales.revenue - sales.quantity * product.purchase_price, 2) AS margin
FROM {{ ref("stg_raw_sales")}} AS sales
LEFT JOIN {{ref("stg_raw_product")}} AS product
ON sales.product_id = product.products_id