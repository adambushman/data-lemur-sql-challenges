/*
*** Challenge 36 - Medium
*** Invalid Search Results - Google
*** Official Submission - Adam Bushman
*/

SELECT 
  country, 
  SUM(num_search) AS total_search, 
  ROUND(
    SUM(
      100.0 * num_search * invalid_result_pct
    ) / SUM(num_search) / 100
  , 2) AS invalid_result_pct
FROM search_category
WHERE invalid_result_pct IS NOT NULL
GROUP BY
  country