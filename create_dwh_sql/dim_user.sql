CREATE OR REPLACE TABLE `data-dqe.review_system.dim_user` AS
SELECT 
    DISTINCT 
    user_id,
    name,
    age,
    gender
FROM 
    `data-dqe.review_system.ods_user`
WHERE 
    user_id IS NOT NULL;
