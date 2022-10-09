/*
*** Challenge 14 - Easy
*** Teams Power Users - Microsoft
*** Official Submission - Adam Bushman
*/

-- Fairly straight forwad query grouping, counting, and limiting
SELECT 
  sender_id, 
  COUNT(message_id) AS message_count
FROM
  messages
WHERE sent_date >= '2022-08-01'
AND sent_date <= '2022-08-31'
GROUP BY 
  sender_id
ORDER BY
  COUNT(message_id) DESC
LIMIT 
  2