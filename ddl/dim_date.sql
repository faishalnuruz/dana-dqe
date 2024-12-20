CREATE TABLE `data-dqe.review_system.dim_date` (
    dateid INT64 NOT NULL,           -- Primary key
    day INT64,                       -- Day of the month
    month INT64,                     -- Month of the year
    year INT64,                      -- Year
    weekday STRING,                  -- Day of the week
    quarter INT64                    -- Quarter of the year
)
PARTITION BY DATE(_PARTITIONTIME);   -- Optional: Partition by ingestion date
