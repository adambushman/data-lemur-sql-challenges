/*
*** Challenge 42 - Hard
*** Compensation Outliers - Accenture
*** Official Submission - Adam Bushman
*/

-- Approached the solution with a Common Table Expression (CTE)
WITH salary_avgs AS (
  SELECT title, AVG(salary) AS avg_sal
  FROM employee_pay
  GROUP BY title
  )

SELECT *
FROM (
  SELECT employee_id, salary, 
    -- Applied the logic in a sub query
    CASE WHEN salary > (sa.avg_sal * 2) THEN 'Overpaid'
         WHEN salary < (sa.avg_sal / 2) THEN 'Underpaid'
    END AS status
  FROM employee_pay ep
  LEFT JOIN salary_avgs sa ON sa.title = ep.title
  ) overall
WHERE status IS NOT NULL;
