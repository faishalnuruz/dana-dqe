-- Rule: Ensure foreign keys (e.g., businessid, userid, dateid, weatherid) exist in respective dimension tables.
-- Check missing foreign keys
SELECT f.reviewid
FROM `data-dqe.review_system.ods_fact_review` f
LEFT JOIN `data-dqe.review_system.ods_dim_business` b ON f.businessid = b.businessid
WHERE b.businessid IS NULL;
