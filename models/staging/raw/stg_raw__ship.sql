with 

source as (

    select * from {{ source('raw', 'ship') }}

),

ship as (

    select
        orders_id,
        shipping_fee,
        shipping_fee_1,
        logcost,
        ship_cost

    from source

)

select * from ship