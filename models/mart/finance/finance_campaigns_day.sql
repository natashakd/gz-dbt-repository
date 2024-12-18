SELECT
f.date_date,
ROUND(f.operational_margin - c.ads_cost, 2) AS ads_margin,
f.average_basket,
f.operational_margin,
f.total_quantity AS quantity,
f.total_revenue AS revenue,
f.total_purchase_cost AS purchase_cost,
f.total_shipping_fees AS shipping_fee,
f.total_log_costs AS log_cost,
c.ads_cost,
c.ads_impressions,
c.ads_clicks
FROM {{ ref('int_campaigns_day') }} c
LEFT JOIN {{ ref('finance_days') }} f
USING (date_date)
ORDER BY f.date_date DESC