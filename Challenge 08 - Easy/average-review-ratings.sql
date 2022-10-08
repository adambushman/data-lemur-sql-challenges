/*
*** Challenge 08 - Easy
*** Average Review Ratings - Amazon
*** Official Submission - Adam Bushman
*/

-- Key here is the extract function
SELECT 
  EXTRACT('month' FROM submit_date) AS mth, 
  product_id AS product, 
  ROUND(AVG(stars), 2) AS avg_stars
FROM
  reviews
GROUP BY
  EXTRACT('month' FROM submit_date), 
  product_id
ORDER BY
  EXTRACT('month' FROM submit_date), 
  product_id