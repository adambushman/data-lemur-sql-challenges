/*
*** Challenge 05 - Easy
*** Cities With Completed Trades - Robinhood
*** Official Submission - Adam Bushman
*/

SELECT 
  u.city, 
  COUNT(order_id) AS total_orders

FROM trades AS t
LEFT JOIN users AS u
  ON u.user_id = t.user_id

WHERE t.status = 'Completed'

GROUP BY u.city
ORDER BY COUNT(order_id) DESC
LIMIT 3