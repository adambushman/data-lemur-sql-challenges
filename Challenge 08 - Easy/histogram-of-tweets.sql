/*
*** Challenge 08 - Easy
*** Histogram of Tweets - Twitter
*** Official Submission - Adam Bushman
*/

-- CTE to group by the user and count
WITH buckets AS (
  SELECT 
    user_id, 
    COUNT(tweet_id)
  FROM tweets
  WHERE EXTRACT('year' FROM tweet_date) = 2022
  GROUP BY
    user_id
  ORDER BY
    COUNT(tweet_id)
)

SELECT
  b.count AS tweet_bucket, 
  COUNT(u.user_id) AS users_num
-- Join betweent users and buckets
FROM (
  SELECT *
  FROM buckets
) u
LEFT JOIN (
  SELECT DISTINCT count
  FROM buckets
) b ON b.count = u.count
GROUP BY b.count