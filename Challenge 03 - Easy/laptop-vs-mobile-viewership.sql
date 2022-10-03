/*
*** Challenge 03 - Easy
*** Laptop vs Mobile Viewership - New York Times
*** Official Submission - Adam Bushman
*/

-- Approached with a CTE
WITH viewership_mod AS (
  SELECT 
    *, 
    CASE WHEN device_type IN ('tablet', 'phone') THEN 'mobile'
         ELSE 'laptop'
    END AS device_type_mod
  FROM viewership
)
-- Because of column view, GROUP BY wouldn't have worked
SELECT 
  (SELECT COUNT(view_time) FROM viewership_mod WHERE device_type_mod = 'laptop') AS laptop_views, 
  (SELECT COUNT(view_time) FROM viewership_mod WHERE device_type_mod = 'mobile') AS mobile_views


/*
*** Official Solution Breakdown
*/
SELECT 
--  This is made possible without CTEs or Subqueries via defining integers to sum; very slick
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views, 
  SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0 END) AS mobile_views 
FROM viewership;