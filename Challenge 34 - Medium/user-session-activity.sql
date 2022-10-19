/*
*** Challenge 34 - Medium
*** User Session Activity - Twitter
*** Official Submission - Adam Bushman
*/

SELECT 
  user_id, 
  session_type, 
  -- Required ranking by the aggregation of session duration by type
  RANK() OVER (
    PARTITION BY session_type
    ORDER BY SUM(duration) DESC
  ) AS ranking
FROM sessions
-- Required getting the date right for filtering
WHERE DATE_TRUNC('day', start_date) >= '2022-01-01 00:00:00'
AND DATE_TRUNC('day', start_date) <= '2022-02-01 00:00:00'
GROUP BY 
  user_id, 
  session_type