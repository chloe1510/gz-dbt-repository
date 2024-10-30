WITH int_campaigns_day AS (
    SELECT
        date_Date AS date_date,                   
        SUM(ads_cost) AS ads_cost,                
        SUM(ads_impression) AS ads_impression,   
        SUM(ads_clicks) AS ads_clicks             
    FROM {{ ref('int_campaigns') }}               
    GROUP BY date_Date                            
)

SELECT *
FROM int_campaigns_day
ORDER BY date_date DESC        