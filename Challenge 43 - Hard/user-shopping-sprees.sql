/*
*** Challenge 43 - Hard
*** User Shopping Sprees - Amazon
*** Official Submission - Adam Bushman
*/

-- Used a CTE featuring a window function to find the # of days difference between two consecutive transactions
WITH diffed_transactions AS (
  SELECT user_id, COALESCE(DATE_PART('day', transaction_date - last_transaction_date), NULL) AS diff
  
  FROM (
    SELECT 
      *, 
      LAG(transaction_date, 1) OVER 
        (PARTITION BY user_id ORDER BY user_id, transaction_date) AS last_transaction_date
    FROM transactions
  ) i
)

SELECT DISTINCT diffed_transactions.user_id
FROM diffed_transactions
-- Subquery tests for which users have consecutive transactions
-- Improperly filtering
INNER JOIN (
  SELECT user_id, SUM(CASE WHEN diff = 1 THEN 1 ELSE 0 END) AS diffs
  FROM diffed_transactions
  GROUP BY user_id
  HAVING SUM(CASE WHEN diff = 1 THEN 1 ELSE 0 END) > 1
) t ON t.user_id = diffed_transactions.user_id

ORDER BY user_id


/* Altered Solution After Examining Official Solution */
-- Use of two CTEs
WITH unique_trans  AS (
  SELECT DISTINCT user_id, transaction_date
  FROM transactions
  GROUP BY user_id, transaction_date
), 
-- By subtracting rank, we'll have a new column that has the same date were consecutive days of transactions
ranked_trans AS (
  SELECT 
    *, 
    transaction_date - (RANK() OVER (
      PARTITION BY user_id 
      ORDER BY transaction_date
    ) * INTERVAL '1 day') AS date_group
  FROM transactions
)

SELECT rt.user_id
FROM ranked_trans rt
LEFT JOIN unique_trans ut 
  ON CONCAT(ut.user_id, ut.transaction_date) = CONCAT(rt.user_id, rt.transaction_date)

GROUP BY rt.user_id, rt.date_group
-- Filtering for the requisite number of consecutive days of transactions
HAVING COUNT(rt.date_group) > 2

ORDER BY rt.user_id