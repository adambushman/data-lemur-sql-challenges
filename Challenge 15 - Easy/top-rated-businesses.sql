/*
*** Challenge 15 - Easy
*** Top Rated Businesses - Yelp
*** Official Submission - Adam Bushman
*/

SELECT
  business_count, 
  ROUND(business_count / all_count * 100, 0) AS top_rated_pct
FROM (
  SELECT
    SUM(
      CASE WHEN review_stars >= 4 THEN 1 ELSE 0 END
    ) AS business_count, 
    COUNT(business_id) * 1.0 AS all_count
  FROM
    reviews
) r