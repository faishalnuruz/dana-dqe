-- Rule: Ensure userid is unique and non-null.
SELECT userid, COUNT(*)
FROM `data-dqe.review_system.ods_dim_user`
GROUP BY userid
HAVING COUNT(*) > 1 OR userid IS NULL;