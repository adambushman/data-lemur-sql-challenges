/*
*** Challenge 52 - Hard
*** Matching Rental Ammenities - Airbnb
*** Official Submission - Adam Bushman
*/

WITH 
  amenitites AS (
    SELECT
      rental_id, 
      ARRAY_AGG(amenity ORDER BY amenity) AS list
    FROM
      rental_amenities AS ra
    GROUP BY
      rental_id
  )

SELECT
  COUNT(*) / 2 AS matching_airbnb
FROM
  amenitites AS i
LEFT JOIN
  amenitites AS a
    ON i.list = a.list AND i.rental_id != a.rental_id
WHERE 
  a.rental_id IS NOT NULL