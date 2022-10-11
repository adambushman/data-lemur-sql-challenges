/*
*** Challenge 18 - Easy
*** Apple Pay Volume - Visa
*** Official Submission - Adam Bushman
*/

SELECT 
  merchant_id, 
  -- Needed to implement "LOWER" to account for capitalization variances
  SUM(
    CASE WHEN LOWER(payment_method) = 'apple pay' THEN transaction_amount ELSE 0 END
  ) AS volume
FROM 
  transactions
GROUP BY
  merchant_id
ORDER BY
  SUM(
    CASE WHEN LOWER(payment_method) = 'apple pay' THEN transaction_amount ELSE 0 END
  ) DESC