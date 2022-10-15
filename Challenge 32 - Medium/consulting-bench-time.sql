/*
*** Challenge 32 - Medium
*** Consulting Bench Time - Google
*** Official Submission - Adam Bushman
*/

SELECT 
  employee_id, 
  365 - 
  -- Key was that we needed to include both the end and start dates
    SUM(DATE(end_date + INTERVAL '1 day') - start_date) AS diff
FROM consulting_engagements AS ce 
INNER JOIN staffing AS s  
  ON ce.job_id = s.job_id
WHERE s.is_consultant = 'true'
GROUP BY
  employee_id