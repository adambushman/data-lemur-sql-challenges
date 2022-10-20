/*
*** Challenge 41 - Medium
*** Active User Retention - Facebook
*** Official Submission - Adam Bushman
*/

-- Approached the solution with a Common Table Expression (CTE)
WITH currMonth AS (
  -- This is the first CTE for the current month
  SELECT EXTRACT('month' FROM event_date) AS mon, user_id
  FROM user_actions
  WHERE DATE_TRUNC('month', event_date) = '2022-07-01'
  ), prevMonth AS (
  -- This is the second CTE for the previous month
  SELECT EXTRACT('month' FROM event_date) AS mon, user_id
  FROM user_actions
  WHERE DATE_TRUNC('month', event_date) = '2022-06-01'
  )
-- We reference both CTEs in an inner join to find the common users
SELECT cm.mon AS month, COUNT(DISTINCT cm.user_id) AS monthly_active_users
FROM currMonth cm
INNER JOIN prevMonth pm ON pm.user_id = cm.user_id
GROUP BY cm.mon

/*
*** Other Modifications
*/

-- We can make this query more useful with dynamic date filtering
WITH currMonth AS (
  SELECT EXTRACT('month' FROM event_date) AS mon, user_id
  FROM user_actions
  -- Instead of a fixed month, we'll reference the current month dynamically
  WHERE DATE_TRUNC('month', event_date) = DATE_TRUNC('month', DATE('now'))
  ), prevMonth AS (
  SELECT EXTRACT('month' FROM event_date) AS mon, user_id
  FROM user_actions
  -- We'll do the same thing here but shifted back a month
  WHERE DATE_TRUNC('month', event_date) = DATE_TRUNC('month', DATE(DATE('now') - INTERVAL '1 month'))
  )

SELECT cm.mon AS month, COUNT(DISTINCT cm.user_id) AS monthly_active_users
FROM currMonth cm
INNER JOIN prevMonth pm ON pm.user_id = cm.user_id
GROUP BY cm.mon