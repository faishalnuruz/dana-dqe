-- Rule: Validate age falls within a reasonable range (e.g., 18–100).
SELECT userid, age
FROM `data-dqe.review_system.dwd_dim_user`
WHERE age < 18 OR age > 100;
