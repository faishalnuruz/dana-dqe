CREATE TABLE `data-dqe.review_system.dim_business` (
    businessid INT64 NOT NULL,          -- Primary key
    name STRING NOT NULL,            -- Name of the hotel
    location STRING,                 -- Location of the hotel
    star_rating INT64,               -- Hotel star rating
    price_range STRING               -- Price range category
)
PARTITION BY DATE(_PARTITIONTIME)    -- Optional: Partition by ingestion date
CLUSTER BY location;                 -- Optional: Cluster by location
                -- Optional: Cluster by gender
