/*
*** Challenge 22 - Medium
*** Compensation Outliers - Accenture
*** Official Submission - Adam Bushman
*/

-- Used a CTE for the average salaries
WITH salary_avgs AS (
  SELECT title, AVG(salary) AS avg_sal
  FROM employee_pay
  GROUP BY title
  )

SELECT *
FROM (
  -- Subquery for the Over-/Underpaid logic
  SELECT employee_id, salary, 
    CASE WHEN salary > (sa.avg_sal * 2) THEN 'Overpaid'
         WHEN salary < (sa.avg_sal / 2) THEN 'Underpaid'
    END AS status
  FROM employee_pay ep
  LEFT JOIN salary_avgs sa ON sa.title = ep.title
  ) overall
-- Filter out salaries that aren't Over-/Underpaid
WHERE status IS NOT NULL;
