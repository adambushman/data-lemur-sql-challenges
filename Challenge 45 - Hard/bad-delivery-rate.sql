/*
*** Challenge 45 - Hard
*** Bad Delivery Rate - DoorDash
*** Official Submission - Adam Bushman
*/

WITH 
  evaled AS (
    SELECT 
      *, 
      CASE WHEN actual_delivery_timestamp < estimated_delivery_timestamp THEN 1 ELSE 0 END AS on_time
    FROM orders AS o
    LEFT JOIN customers AS c
      ON c.customer_id = o.customer_id
    LEFT JOIN trips AS t  
      ON t.trip_id = o.trip_id
    WHERE
      DATE_PART('day', order_timestamp - signup_timestamp) <= 14
    AND
      DATE_TRUNC('month', c.signup_timestamp) = '2022-06-01'
  )
  
SELECT
  ROUND(
    100.0 * 
    SUM(
      CASE 
        WHEN (
          status = 'completed successfully' AND 
          on_time = 1
        ) THEN 0
        ELSE 1
      END
    ) / 
    COUNT(*) 
  , 2) AS bad_experience_pct
FROM
  evaled