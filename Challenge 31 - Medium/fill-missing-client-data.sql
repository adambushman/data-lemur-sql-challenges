/*
*** Challenge 31 - Medium
*** Fill Missing Client Data - Accenture
*** Official Submission - Adam Bushman
*/

WITH aggs AS (
  SELECT
    *, 
    -- Key here was an array function to stack the category values
    -- The one we wanted was the last in the array
    ARRAY_AGG(category) 
    FILTER (
      WHERE category IS NOT NULL
    )
    OVER (
      ORDER BY product_id
    ) AS modified
  FROM
    products
)

SELECT 
  product_id, 
  -- We accessed the final element with an array method
  modified[ARRAY_LENGTH(modified, 1)] AS category, 
  name
FROM
  aggs