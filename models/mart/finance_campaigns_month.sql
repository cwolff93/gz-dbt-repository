SELECT DATE_TRUNC(date_date, MONTH) AS datemonth
, SUM(ads_margin) AS ads_margin
, ROUND(SUM(average_basket),2) AS average_basket
, SUM(operational_margin) AS operational_margin
, SUM(ads_cost) AS ads_cost
, SUM(ads_impressions) AS ads_impressions
, SUM(ads_clicks) AS ads_clicks
, SUM(nb_transactions) AS nb_transactions
, SUM(revenue) AS revenue
, SUM(margin) AS margin
, SUM(purchase_cost) AS purchase_cost
, SUM(shipping_fee) AS shipping_fee
, SUM(logcost) AS logcost
, SUM(ship_cost) AS ship_cost
, SUM(quantity) AS quantity
FROM {{ref("finance_campaigns_day")}}
GROUP BY datemonth