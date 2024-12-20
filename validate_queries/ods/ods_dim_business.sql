-- Rule: Ensure businessid is unique and non-null.
SELECT businessid, COUNT(*)
FROM `data-dqe.review_system.ods_dim_business`
GROUP BY businessid
HAVING COUNT(*) > 1 OR businessid IS NULL;
