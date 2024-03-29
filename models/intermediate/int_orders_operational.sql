--SELECT orders_id
--, date_date
--, ROUND((margin + shipping_fee - logcost - ship_cost),2) AS operational_margin
--FROM {{ ref("int_orders_margin") }}
--JOIN {{ ref("stg_data__ship") }}
--USING(orders_id)


--Solution given by Le Wagon in order to build the model mart
SELECT
  o.orders_id
  ,o.date_date
  ,ROUND(o.margin + s.shipping_fee - (s.logcost + s.ship_cost),2) AS operational_margin 
  ,o.quantity
  ,o.revenue
  ,o.purchase_cost
  ,o.margin
  ,s.shipping_fee
  ,s.logcost
  ,s.ship_cost
FROM {{ref("int_orders_margin")}} o
LEFT JOIN {{ref("stg_data__ship")}} s 
  USING(orders_id)
ORDER BY orders_id desc