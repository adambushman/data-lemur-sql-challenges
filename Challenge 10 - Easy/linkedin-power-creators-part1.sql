/*
*** Challenge 10 - Easy
*** LinkedIn Power Creators Part 1 - LinkedIn
*** Official Submission - Adam Bushman
*/

-- Simple select statement with a join and where statement for filtering
SELECT
  profile_id
FROM 
  personal_profiles AS pp
LEFT JOIN
  company_pages AS cp ON
    cp.company_id = pp.employer_id
WHERE 
  pp.followers > cp.followers
ORDER BY
  profile_id