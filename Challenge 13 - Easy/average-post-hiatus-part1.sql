/*
*** Challenge 13 - Easy
*** Average Post Hiatus Part 1 - Facebook
*** Official Submission - Adam Bushman
*/

-- Simple max and min functions in the group
SELECT
  user_id, 
  DATE_PART('day', MAX(post_date) - MIN(post_date)) AS days_between
FROM
  posts
WHERE 
  EXTRACT('year' FROM post_date) = 2021
GROUP BY
  user_id
-- Making sure we only have users with 2 or more posts in the year
HAVING COUNT(post_id) > 1