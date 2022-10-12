/*
*** Challenge 28 - Medium
*** LinkedIn Power Creators (Part 2) - LinkedIn
*** Official Submission - Adam Bushman
*/

-- CTE to evaluate users with more followers than their company
WITH power_users AS (
  SELECT 
    *, 
    CASE WHEN pp.followers > cp.followers THEN 1
      ELSE 0 
    END AS check_followers
  FROM 
    employee_company AS ec 
  LEFT JOIN 
    personal_profiles AS pp
      ON pp.profile_id = ec.personal_profile_id
  LEFT JOIN
    company_pages AS cp
      ON cp.company_id = ec.company_id
)

SELECT 
  profile_id
FROM 
  power_users
GROUP BY
  profile_id
-- Having clause made sure we only displayed users who met the condition each of their companies
HAVING SUM(check_followers) = COUNT(check_followers)
ORDER BY
  profile_id