/*
*** Challenge 40 - Medium
*** Photoshop Revenue Analysis - Adobe
*** Official Submission - Adam Bushman
*/

SELECT
  customer_id, 
  SUM(revenue) AS revenue
FROM
  adobe_transactions AS t
WHERE
  customer_id IN (
    SELECT DISTINCT customer_id
    FROM adobe_transactions
    WHERE product = 'Photoshop'
  )
AND product != 'Photoshop'
GROUP BY
  customer_id