/*
*** Challenge 20 - Easy
*** Second Day Confirmation - TikTok
*** Official Submission - Adam Bushman
*/

SELECT 
  e.user_id
FROM 
  texts AS t  
LEFT JOIN 
  emails AS e
    ON e.email_id = t.email_id

WHERE e.signup_date = DATE(t.action_date - INTERVAL '1 day')
AND t.signup_action = 'Confirmed'