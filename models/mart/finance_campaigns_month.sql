SELECT EXTRACT(MONTH FROM date_date)
, ads_margin
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
FROM {{ref("finance_campaigns_day")}}
GROUP BY EXTRACT(MONTH FROM date_date)