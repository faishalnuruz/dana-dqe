CREATE TABLE `data-dqe.review_system.dim_user` (
    userid INT64 NOT NULL,           -- Primary key
    name STRING NOT NULL,            -- User name
    age INT64,                       -- Age of the user
    gender STRING                    -- Gender of the user
)
PARTITION BY DATE(_PARTITIONTIME)    -- Optional: Partition by ingestion date
CLUSTER BY gender;                   -- Optional: Cluster by gender
