CREATE OR REPLACE TABLE `data-dqe.review_system.dim_weather` AS
SELECT 
    DISTINCT 
    weather_id,
    temperature,
    humidity,
    weather_condition,
    windspeed
FROM 
    `data-dqe.review_system.ods_weather`
WHERE 
    weather_id IS NOT NULL;
