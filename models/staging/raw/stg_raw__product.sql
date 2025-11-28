with 

source as (

    select * from {{ source('raw', 'product') }}

),

product as (

    select
        products_id,
        purchse_price

    from source

)

select * from product