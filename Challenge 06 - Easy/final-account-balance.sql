/*
*** Challenge 06 - Easy
*** Final Account Balance - PayPal
*** Official Submission - Adam Bushman
*/

-- CTE to execute the window functions for cumulative sum and rank
WITH cumulative AS (
  SELECT 
    *, 
    ROUND(
      SUM(
        CASE WHEN transaction_type = 'Withdrawal' THEN amount * -1.0 ELSE amount END
      ) OVER (
        PARTITION BY account_id
        ORDER BY transaction_id
      )
    , 2) AS balance, 
    RANK() OVER (
      PARTITION BY account_id
      ORDER BY transaction_id
    ) AS rnk
  FROM transactions
)

SELECT cum.account_id, cum.balance AS final_balance
FROM cumulative AS cum
-- Subquery in a join to match up the transactions
INNER JOIN (
  SELECT account_id, MAX(rnk) AS maxx
  FROM cumulative
  GROUP BY account_id
) fin ON CONCAT(fin.account_id, fin.maxx) = CONCAT(cum.account_id, cum.rnk)


/* Other Modifications */

-- This is A LOT simpler; I suppose with the above I was thinking about preserving time order of transactions
SELECT 
  account_id, 
  SUM(CASE WHEN transaction_type = 'Withdrawal' THEN amount * -1.0 ELSE amount END) AS final_balance
FROM transactions
GROUP BY account_id