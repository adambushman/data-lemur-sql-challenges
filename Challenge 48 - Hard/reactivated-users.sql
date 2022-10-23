/*
*** Challenge 47 - Hard
*** 2nd Level Managers - Google
*** Official Submission - Adam Bushman
*/

WITH
  all_managers AS (
    SELECT
      *
    FROM
      employees
    WHERE
      emp_id IN (SELECT DISTINCT manager_id FROM employees) 
  ), 
  second_level AS (
    SELECT
      *
    FROM
      all_managers
    WHERE
      emp_id IN (SELECT DISTINCT manager_id FROM all_managers) 
  ), 
  identified AS (
    SELECT 
      e.*, 
      CASE 
        WHEN emp_id IN (SELECT emp_id FROM all_managers) THEN 1
        ELSE 0
      END AS manager, 
      CASE 
        WHEN emp_id IN (SELECT emp_id FROM second_level) THEN 1
        ELSE 0
      END AS second_level
    FROM 
      employees AS e
  )

SELECT
  manager_name, 
  SUM(manager) AS direct_reports
FROM (
  SELECT DISTINCT
    i.*
  FROM
    second_level AS sl
  LEFT JOIN
    identified AS i
      ON sl.emp_id = i.manager_id
  WHERE
    i.second_level = 0
) AS t
GROUP BY
  manager_name
ORDER BY
  SUM(manager) DESC