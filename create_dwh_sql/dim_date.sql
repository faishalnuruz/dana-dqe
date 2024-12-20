CREATE OR REPLACE TABLE `data-dqe.review_system.dim_date` AS
SELECT 
    DISTINCT 
    date_id,
    day,
    month,
    year,
    weekday,
    quarter
FROM 
    `data-dqe.review_system.ods_date`
WHERE 
    date_id IS NOT NULL;
