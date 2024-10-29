@with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        CAST (purchse_price AS FLOAT64) AS purchase_price

    from source

)

select * from renamed

 - name: product
   identifier: raw_gz_product
   description: products of Greenweez
   columns:
     - name: <products_id>
       description: id of the products
       tests:
         - unique
         - NOT_NULL
