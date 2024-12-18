SELECT
orders.orders_id,
orders.date_date,
ROUND(orders.margin + ship.shipping_fee - ship.log_cost - ship.ship_cost, 2) AS operational_margin,
orders.revenue,
orders.quantity,
orders.purchase_cost,
orders.margin,
ship.shipping_fee,
ship.log_cost,
ship.ship_cost
FROM {{ ref('int_orders_margin') }} AS orders
LEFT JOIN {{ ref('stg_raw_ship') }} AS ship
USING(orders_id)
ORDER BY orders_id DESC