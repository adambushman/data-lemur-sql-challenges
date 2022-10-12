/*
*** Challenge 30 - Medium
*** Signup Confirmation Rate - TikTok
*** Official Submission - Adam Bushman
*/

-- CTE specifically joining unconventionally to preserve all user emails
WITH master_signups AS (
  SELECT
      *
    FROM 
      emails AS e  
    LEFT JOIN
      texts AS t  
        ON t.email_id = e.email_id
    ORDER BY
      e.user_id, 
      t.text_id
)

SELECT
  -- Avoiding integer division
  ROUND( 
    1.0 * SUM(
      CASE WHEN signup_action = 'Confirmed' THEN 1 ELSE 0 END
    ) / COUNT(DISTINCT user_id)
  , 2) AS confirm_rate
FROM
  master_signups