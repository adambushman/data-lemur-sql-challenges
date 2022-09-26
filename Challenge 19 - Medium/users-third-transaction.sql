/*
*** Challenge 19 - Medium
*** User's Third Transaction - Uber
*** Official Submission - Adam Bushman
*/


SELECT user_id, spend, transaction_date
-- Approached as a subquery to facilitate filtering on the window function result
FROM (
  SELECT user_id, spend, transaction_date, 
    RANK() OVER (
      PARTITION BY user_id 
      ORDER BY transaction_date
    ) AS rnk
  FROM transactions
  ) ranked_transactions
-- Filtering for the third transaction
WHERE rnk = 3;

/* 
*** Potential Modifications
*/

-- Use of a CTE instead
WITH ranked AS (
  SELECT user_id, spend, transaction_date, 
    RANK() OVER (
      PARTITION BY user_id 
      ORDER BY transaction_date
    ) AS rnk
  FROM transactions
) 
-- Selecting from the CTE
SELECT user_id, spend, transaction_date
FROM ranked
WHERE rnk = 3;