-- Rule: Validate temperature and humidity are within realistic ranges.
SELECT weatherid, temperature, humidity
FROM `data-dqe.review_system.dwd_dim_weather`
WHERE temperature < -50 OR temperature > 60
   OR humidity < 0 OR humidity > 100;
