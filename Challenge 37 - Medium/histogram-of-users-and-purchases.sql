/*
*** Challenge 37 - Medium
*** Histogram of Users and Purchases - Walmart
*** Official Submission - Adam Bushman
*/

WITH
  core AS (
    SELECT 
      user_id, 
      transaction_date, 
      COUNT(product_id) AS products, 
      RANK() OVER (
        PARTITION BY user_id
        ORDER BY transaction_date DESC
      ) AS maxx
    FROM user_transactions
    GROUP BY
      user_id, 
      transaction_date
  )

SELECT
  transaction_date, 
  COUNT(DISTINCT user_id) AS number_of_users, 
  SUM(products) AS number_of_products
FROM core
WHERE maxx = 1
GROUP BY
  transaction_date