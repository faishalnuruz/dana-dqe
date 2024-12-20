CREATE OR REPLACE TABLE `data-dqe.review_system.dim_business` AS
SELECT 
    DISTINCT 
    business_id,
    name,
    location,
    star_rating,
    price_range
FROM 
    `data-dqe.review_system.ods_business`
WHERE 
    business_id IS NOT NULL;
