/*
*** Challenge 21 - Medium
*** Sending vs Opening Snaps - Snapchat
*** Official Submission - Adam Bushman
*/

-- Approached with a subquery to handle the 3 time values: send, open, total
-- Outer query handles the calcuation, scale, and rounding
SELECT 
  age_bucket, 
  ROUND(100.0 * (send_time / total_time), 2) AS send_perc, 
  ROUND(100.0 * (open_time / total_time), 2) AS open_perc

FROM (
  SELECT ab.age_bucket, 
    SUM(CASE WHEN a.activity_type = 'send' THEN a.time_spent END) AS send_time, 
    SUM(CASE WHEN a.activity_type = 'open' THEN a.time_spent END) AS open_time, 
    SUM(CASE WHEN a.activity_type IN ('send', 'open') THEN a.time_spent END) AS total_time
  
  FROM activities AS a
  LEFT JOIN age_breakdown AS ab ON ab.user_id = a.user_id
  
  GROUP BY ab.age_bucket
  ) r

/*
*** Other Variations
*/

-- Could simplify the subquery and handle the total time in the outer query
SELECT 
  age_bucket, 
  ROUND(100.0 * (send_time / (send_time + open_time)), 2) AS send_perc, 
  ROUND(100.0 * (open_time / (send_time + open_time)), 2) AS open_perc

FROM (
  SELECT ab.age_bucket, 
    SUM(CASE WHEN a.activity_type = 'send' THEN a.time_spent END) AS send_time, 
    SUM(CASE WHEN a.activity_type = 'open' THEN a.time_spent END) AS open_time
  
  FROM activities AS a
  LEFT JOIN age_breakdown AS ab ON ab.user_id = a.user_id
  
  GROUP BY ab.age_bucket
  ) r