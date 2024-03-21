SELECT date_date
, (operational_margin - ads_cost) AS ads_margin
, average_basket
, operational_margin
, ads_cost
, ads_impressions
, ads_clicks
, nb_transactions
, revenue 
, margin 
, purchase_cost 
, shipping_fee 
, logcost
, ship_cost
, quantity 
FROM {{ref("int_campaigns_day")}}
JOIN {{ref("finance_days")}}
USING (date_date)
ORDER BY date_date DESC