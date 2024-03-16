with 

source as (

    select * from {{ source('data', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price AS purchase_price

    from source

)

select * from renamed
