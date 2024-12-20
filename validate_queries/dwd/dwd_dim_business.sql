-- Rule: Validate star_rating falls within an acceptable range (e.g., 1-5).
SELECT businessid, star_rating
FROM `data-dqe.review_system.dwd_dim_business`
WHERE star_rating < 1 OR star_rating > 5;

