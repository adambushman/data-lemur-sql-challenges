/*
*** Challenge 44 - Hard
*** Monthly Merchant Balance - Visa
*** Official Submission - Adam Bushman
*/

-- CTE to group the sum based on logic of withdrawals and deposits
WITH summed AS (
  SELECT
    DATE_TRUNC('day', transaction_date) AS dte, 
    SUM(CASE WHEN type = 'withdrawal' THEN amount * -1.0 ELSE amount END) AS balance
  FROM transactions
  GROUP BY DATE_TRUNC('day', transaction_date)
  ORDER BY DATE_TRUNC('day', transaction_date)
)

-- Select statement featuring the cumulative sum
SELECT 
  dte AS transaction_date, 
  ROUND(SUM(balance) OVER (
    PARTITION BY DATE_TRUNC('month', dte)
    ORDER BY dte
  ), 2) AS sum
FROM summed