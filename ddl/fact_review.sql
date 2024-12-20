CREATE TABLE `data-dqe.review_system.fact_review` (
    reviewid INT64 NOT NULL,         -- Primary key
    businessid INT64 NOT NULL,       -- Foreign key to dim_hotel
    userid INT64 NOT NULL,           -- Foreign key to dim_user
    rating FLOAT64,                  -- Review rating
    review STRING,                   -- Review text
    dateid INT64 NOT NULL,           -- Foreign key to dim_date
    weatherid INT64                  -- Foreign key to dim_weather
)
PARTITION BY DATE(_PARTITIONTIME)    -- Optional: Partition by ingestion date
CLUSTER BY businessid, userid;       -- Optional: Cluster by hotelid and userid