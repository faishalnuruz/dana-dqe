CREATE OR REPLACE TABLE `data-dqe.review_system.fact_review` AS
SELECT 
    review_id,
    business_id,
    user_id,
    date_id,
    weather_id,
    rating,
    review
FROM 
    `data-dqe.review_system.ods_review`
WHERE 
    review_id IS NOT NULL
    AND business_id IS NOT NULL
    AND user_id IS NOT NULL
    AND date_id IS NOT NULL
    AND weather_id IS NOT NULL;
