SELECT
    date_date,
    orders_id,
    products_id,
    purchase_price,
    revenue,
    quantity,
    quantity * purchase_price AS purchase_cost,
    ROUND(revenue - (quantity * purchase_price),2) AS margin
FROM {{ ref("stg_data__product") }}
JOIN {{ ref("stg_data__sales") }} 
USING (products_id)
