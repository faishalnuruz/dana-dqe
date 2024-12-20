CREATE TABLE `data-dqe.review_system.dim_weather` (
    weatherid INT64 NOT NULL,        -- Primary key
    temperature FLOAT64,             -- Temperature data
    humidity FLOAT64,                -- Humidity data
    weather_condition STRING,        -- Weather condition description
    windspeed FLOAT64                -- Wind speed
)
PARTITION BY DATE(_PARTITIONTIME);   -- Optional: Partition by ingestion date
