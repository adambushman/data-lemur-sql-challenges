/*
*** Challenge 27 - Medium
*** First Transaction - Etsy
*** Official Submission - Adam Bushman
*/

-- CTE to execute the window function for ranking
WITH ordered AS (
  SELECT 
    *, 
    RANK() OVER (
      PARTITION BY user_id
      ORDER BY transaction_date
    ) AS rnk
    FROM
      user_transactions
)

-- We get around the filtering for multiple rows of the same user by using distinct
SELECT 
  COUNT(DISTINCT user_id)
FROM ordered
WHERE rnk = 1
AND spend >= 50