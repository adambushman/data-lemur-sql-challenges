/*
*** Challenge 46 - Hard
*** Server Utilization Time - Amazon
*** Official Submission - Adam Bushman
*/

WITH
  altered AS (
    SELECT
      server_id, 
      status_time AS started, 
      CASE
        WHEN session_status = 'start' THEN (
          LAG(status_time, -1) OVER(
            PARTITION BY 
              server_id
            ORDER BY
              server_id, 
              status_time, 
              session_status
          )
        )
        ELSE NULL
      END AS stopped
    FROM
      server_utilization
  )
  
SELECT 
  FLOOR(
    SUM(DATE_PART('day', stopped - started)) + 
    (1.0 * SUM(DATE_PART('hour', stopped - started)) / 24)
  ) AS total_uptime_days
FROM 
  altered
WHERE 
  stopped IS NOT NULL