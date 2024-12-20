-- Rule: Ensure quarter corresponds to the correct month range (e.g., 1 = Jan–Mar).
SELECT dateid, month, quarter
FROM `data-dqe.review_system.dwd_dim_date`
WHERE (month BETWEEN 1 AND 3 AND quarter != 1)
   OR (month BETWEEN 4 AND 6 AND quarter != 2)
   OR (month BETWEEN 7 AND 9 AND quarter != 3)
   OR (month BETWEEN 10 AND 12 AND quarter != 4);
