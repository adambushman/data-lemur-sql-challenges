/*
*** Challenge 11 - Easy
*** Highest Number of Products - eBay
*** Official Submission - Adam Bushman
*/

SELECT 
  user_id, 
  COUNT(product_id) AS product_num
FROM 
  user_transactions
GROUP BY 
  user_id
-- Because we wanted to filter after we grouped and summed, we need a having clause
HAVING
  SUM(spend) >= 1000
ORDER BY
  COUNT(product_id) DESC, 
  SUM(spend) DESC
-- Getting the top 3
LIMIT
  3