/*
*** Challenge 49 - Hard
*** Maximize Prime Item Inventory - Amazon
*** Official Submission - Adam Bushman
*/

WITH 
  setup AS (
    SELECT
      item_type, 
      COUNT(item_id) AS item_count, 
      SUM(square_footage) AS total_sf, 
      FLOOR(500000.0 / SUM(square_footage)) * COUNT(item_id) AS capacity, 
      MOD(500000, SUM(square_footage)) AS space_left
    FROM
      inventory
    GROUP BY
      item_type
    ORDER BY
      item_type DESC
  ), 
  lagged AS (
    SELECT 
      item_type, 
      item_count, 
      total_sf, 
      capacity, 
      LAG(space_left, 1) OVER (
        ORDER BY item_type DESC
      ) AS remaining
    FROM
      setup
  )
  
SELECT
  item_type, 
  COALESCE(
    FLOOR(1.0 * remaining / total_sf) * item_count, 
    capacity
  ) AS item_count
FROM lagged