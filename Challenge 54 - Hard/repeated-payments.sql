/*
*** Challenge 54 - Hard
*** Repeated Payments - Stripe
*** Official Submission - Adam Bushman
*/

WITH
  evaluated AS (
    SELECT
      *, 
      RANK() OVER (
        ORDER BY
          merchant_id, 
          credit_card_id, 
          amount
      ), 
      LAG(transaction_timestamp, -1) OVER (
        PARTITION BY
          merchant_id, 
          credit_card_id
        ORDER BY
          merchant_id, 
          credit_card_id, 
          transaction_timestamp, 
          amount
      ) - transaction_timestamp AS time_diff
    FROM
      transactions
  ), 
  expanded AS (
    SELECT
      *, 
      (DATE_PART('day', time_diff) * 24 * 60) + 
        (DATE_PART('hour', time_diff) * 60) + 
        DATE_PART('minute', time_diff) AS total_time
    FROM
      evaluated
    WHERE
      time_diff IS NOT NULL
    AND
      rank IN (SELECT rank FROM evaluated GROUP BY rank HAVING COUNT(*) > 1)
  )
  
SELECT
  COUNT(*) AS payment_count
FROM 
  expanded
WHERE
  total_time <= 10