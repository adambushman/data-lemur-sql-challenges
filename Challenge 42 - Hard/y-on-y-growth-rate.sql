/*
*** Challenge 42 - Hard
*** Y-on-Y Growth Rate - Wayfair
*** Official Submission - Adam Bushman
*/

-- Use of a CTE allowed for an altered join to offset by a year
WITH grouped_spend AS (
  SELECT 
    EXTRACT('year' FROM transaction_date) AS yr, 
    product_id, 
    SUM(spend) AS total_spend
  FROM user_transactions
  GROUP BY EXTRACT('year' FROM transaction_date), product_id
)

SELECT 
  curr.yr AS year, 
  curr.product_id, 
  curr.total_spend AS curr_year_spend, 
  prev.total_spend AS prev_year_spend, 
  ROUND((curr.total_spend - prev.total_spend) * 100.0 / (prev.total_spend), 2) AS yoy_rate
  
FROM grouped_spend AS curr
-- This altered join shifts the prev table forward a year so that 2022 (current) compares to 2021 (previous)
LEFT JOIN grouped_spend AS prev 
  ON CONCAT(curr.yr, curr.product_id) = CONCAT(prev.yr + 1, prev.product_id)
  
ORDER BY curr.product_id, curr.yr