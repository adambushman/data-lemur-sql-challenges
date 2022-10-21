/*
*** Challenge 46 - Hard
*** Reactivated Users - Facebook
*** Official Submission - Adam Bushman
*/

SELECT
  EXTRACT('month' FROM login_date) AS current_month, 
  COUNT(DISTINCT ul.user_id) AS reactivated_users
FROM 
  user_logins AS ul
LEFT JOIN
  (
    SELECT
      user_id, 
      login_date + INTERVAL '1 month' AS next_month
    FROM
      user_logins
  ) AS ll 
    ON DATE_TRUNC('month', ll.next_month) = DATE_TRUNC('month', ul.login_date)
      AND ul.user_id = ll.user_id 
WHERE
  next_month IS NULL
GROUP BY
  EXTRACT('month' FROM login_date)