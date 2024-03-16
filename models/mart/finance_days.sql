SELECT od_margin.date_date
, COUNT(orders_id) AS nb_transactions
, ROUND(SUM(revenue),2) AS revenue
, ROUND(AVG(revenue),2) AS average_basket
, ROUND(SUM(od_margin.margin),2) AS margin
, ROUND(SUM(operational_margin),2) AS operational_margin
FROM {{ref("int_orders_operational") }} AS operational
JOIN {{ref("int_orders_margin") }} AS od_margin
USING (orders_id)
GROUP BY od_margin.date_date
ORDER BY od_margin.date_date DESC