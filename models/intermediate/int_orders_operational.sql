SELECT orders_id
, date_date
, ROUND((margin + shipping_fee - logcost - ship_cost),2) AS operational_margin
FROM {{ ref("int_orders_margin") }}
JOIN {{ ref("stg_data__ship") }}
USING(orders_id)
