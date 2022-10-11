/*
*** Challenge 26 - Medium
*** Highest-Crossing Items - Amazon
*** Official Submission - Adam Bushman
*/

-- CTE to group and order the categories
WITH grouped AS (
  SELECT 
    category, 
    product, 
    SUM(spend) AS total
  FROM 
    product_spend
  WHERE 
    EXTRACT('year' FROM transaction_date) = 2022
  GROUP BY 
    category, 
    product
  ORDER BY 
    category, 
    SUM(spend) DESC
), 
-- CTE to determine ranking
maxxed AS (
  SELECT 
    *, 
    RANK() OVER (
    PARTITION BY category
    ORDER BY total DESC
    ) AS rnk
  FROM grouped
)

SELECT 
  category, 
  product, 
  total AS total_spend
FROM maxxed
-- Used a where statement with a subquery and join to find the to two transaction category/products
WHERE (category, rnk) IN 
  (SELECT category, MIN(rnk) AS rnk 
   FROM maxxed 
   GROUP BY category
   UNION
   SELECT 
      category, 
      CASE WHEN MAX(rnk) = 1 THEN 1 ELSE MIN(rnk) + 1 END AS rnk 
   FROM maxxed 
   GROUP BY category)