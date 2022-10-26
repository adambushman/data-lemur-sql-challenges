/*
*** Challenge 50 - Hard
*** Median Google Search Frequency - Google
*** Official Submission - Adam Bushman
*/

WITH 
  transformed AS (
    SELECT
      x.searches, 
      x.num_users, 
      ROW_NUMBER() OVER (
        PARTITION BY x.searches
      ) AS row_num
    FROM
      search_frequency AS x
    CROSS JOIN
      search_frequency AS y
  ), 
  adjusted AS (
    SELECT 
      ROW_NUMBER() OVER() AS row_id, 
      searches
    FROM
      transformed
    WHERE
      row_num <= num_users
  )

SELECT
  ROUND(1.0 * SUM(searches) / 2, 1) AS median
FROM
  adjusted 
WHERE
  row_id IN (
    SELECT COUNT(*) / 2 FROM adjusted
    UNION ALL
    SELECT 
      CASE WHEN MOD(COUNT(*), 2) = 0 THEN (COUNT(*) / 2) + 1 
      ELSE -1 END 
    FROM adjusted
  )