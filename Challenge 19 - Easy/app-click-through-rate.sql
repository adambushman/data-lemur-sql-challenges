/*
*** Challenge 19 - Easy
*** App Click Through Rate (CTR) - Facebook
*** Official Submission - Adam Bushman
*/

SELECT
  app_id, 
  ROUND(100.0 *
    SUM(
      CASE WHEN event_type = 'click' THEN 1 ELSE 0 END
    ) / 
    SUM(
      CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END
    ), 
  2) AS ctr
FROM
  events
WHERE EXTRACT('year' FROM timestamp) = 2022
GROUP BY
  app_id