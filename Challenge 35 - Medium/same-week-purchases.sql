/*
*** Challenge 35 - Medium
*** Same Week Purchases - Etsy
*** Official Submission - Adam Bushman
*/

WITH 
  structured AS (
    SELECT
      s.user_id, 
      s.signup_date, 
      MIN(us.purchase_date) AS purchase_date, 
      DATE_PART('day', MIN(us.purchase_date) - s.signup_date) AS date_diff
    FROM
      signups AS s  
    LEFT JOIN
      user_purchases AS us
        ON us.user_id = s.user_id
    GROUP BY
      s.user_id, 
      s.signup_date
  )
  
SELECT 
  ROUND(
    100.0 * 
    SUM(
      CASE WHEN date_diff <= 7 THEN 1 ELSE 0 END
    ) / 
    COUNT(signup_date), 
  2) AS same_week_purchases_pct

FROM structured