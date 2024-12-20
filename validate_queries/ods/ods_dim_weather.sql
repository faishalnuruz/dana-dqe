-- Rule: Ensure weatherid is unique and timestamps are in a valid format.
SELECT weatherid, COUNT(*)
FROM `data-dqe.review_system.ods_dim_weather`
GROUP BY weatherid
HAVING COUNT(*) > 1 OR weatherid IS NULL;

-- Validate timestamps
SELECT weather_condition
FROM `data-dqe.review_system.ods_dim_weather`
WHERE SAFE.PARSE_TIMESTAMP('%Y-%m-%d %H:%M:%S', weather_condition) IS NULL;
