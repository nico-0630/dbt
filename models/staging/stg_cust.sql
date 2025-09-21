with source as (
    select * from {{ref('raw_cust')}}
),
renamed as (
    select
        customerid AS 'customer_id'
        , lastname AS 'last_name'
        , firstname AS 'first_name'
        , areacode AS 'area_cd'
        , birthday AS 'birthday'
        , sex AS 'sex'
    from source
)
select * from renamed