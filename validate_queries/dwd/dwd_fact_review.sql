-- Rule: Ensure rating is between 1 and 5, and review is not null for valid records.
SELECT reviewid, rating, review
FROM `data-dqe.review_system.dwd_fact_review`
WHERE rating < 1 OR rating > 5 OR review IS NULL;

