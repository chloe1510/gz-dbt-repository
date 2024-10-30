SELECT *
FROM {{ ref('int_orders_margin') }}  
UNION ALL
SELECT *
FROM {{ ref('int_orders_operational') }}  
UNION ALL
SELECT *
FROM {{ ref('int_sales_margin') }}
SELECT *
FROM {{ ref('int_campaigns') }}