/*
*** Challenge 53 - Hard
*** Weekly Churn Rates - Facebook
*** Official Submission - Adam Bushman
*/

WITH
  churning AS (
    SELECT
      EXTRACT('week' FROM signup_date) - 21 AS signup_week, 
      CASE 
        WHEN DATE_PART('day', last_login - signup_date) > 28 THEN 0
        ELSE 1
      END AS churned
    FROM
      users
    WHERE
      DATE_TRUNC('month', signup_date) = '2022-06-01 00:00:00'
  )

SELECT
  signup_week, 
  ROUND(100.0 * SUM(churned) / COUNT(churned), 2) AS churn_rate
FROM
  churning
GROUP BY
  signup_week