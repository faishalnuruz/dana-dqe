-- Rule: Ensure dateid is unique and corresponds to valid dates.
SELECT dateid, COUNT(*)
FROM `data-dqe.review_system.ods_dim_date`
GROUP BY dateid
HAVING COUNT(*) > 1 OR dateid IS NULL;

-- Check valid dates
SELECT dateid
FROM `data-dqe.review_system.ods_dim_date`
WHERE SAFE.PARSE_DATE('%Y-%m-%d', CONCAT(year, '-', month, '-', day)) IS NULL;
