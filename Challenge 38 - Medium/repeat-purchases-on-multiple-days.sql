/*
*** Challenge 38 - Medium
*** Repeat Purchases on Multiple Days - Stitch Fix
*** Official Submission - Adam Bushman
*/

WITH
  uniques AS(
    SELECT
      user_id, 
      product_id, 
      COUNT(
        DISTINCT DATE_TRUNC('day', purchase_date)
      ) AS date_counts
    FROM
      purchases
    GROUP BY
      user_id, 
      product_id
  )

SELECT 
  COUNT(DISTINCT user_id) AS users_num
FROM
  uniques
WHERE date_counts > 1