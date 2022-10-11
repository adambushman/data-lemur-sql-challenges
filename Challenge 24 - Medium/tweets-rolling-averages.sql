/*
*** Challenge 24 - Medium
*** Tweets' Rolling Averages - Twitter
*** Official Submission - Adam Bushman
*/

-- Very clunky and messy approach with so many subquerys
-- This first try was purely my knowledge and solving the problem
SELECT
  user_id, 
  tweet_date, 
  ROUND(
    (tweet_num + COALESCE(past1, 0) + COALESCE(past2, 0)) / ((
      (CASE WHEN tweet_num = 0 THEN 0 ELSE 1 END) + 
      (CASE WHEN past1 = 0 THEN 0 ELSE 1 END) +
      (CASE WHEN past2 = 0 THEN 0 ELSE 1 END)
    ) * 1.0), 
  2) AS rolling_avg_3days

FROM (
  -- Subquery to associate in new columns the past 2 rows
  SELECT
    *, 
    COALESCE(LAG(tweet_num, 1) OVER(
      PARTITION BY user_id
      ORDER BY tweet_date
    ), 0) AS past1, 
    COALESCE(LAG(tweet_num, 2) OVER(
      PARTITION BY user_id
      ORDER BY tweet_date
    ), 0) AS past2
    
  FROM (
    SELECT
      user_id,
      tweet_date, 
      tweet_num
        
    FROM (
      -- Counting the number of tweets per day and grouping
      SELECT
        user_id, 
        tweet_date, 
        COUNT(*) AS tweet_num
      FROM tweets
      GROUP BY user_id, tweet_date
      ORDER BY user_id, tweet_date
    ) i
  ) o
) vo

/* Other modifications */

-- After seeing the official solution, I attempted again
WITH tweet_numbers AS (
  SELECT
    user_id, 
    tweet_date, 
    COUNT(DISTINCT tweet_id) AS tweet_num
  FROM tweets
  GROUP BY user_id, tweet_date
  ORDER BY user_id, tweet_date
)

SELECT 
  user_id, 
  tweet_date, 
  -- This window function simplifies greatly what I was trying to do without traditional programming methods
  -- We can adjust the "2" to be any number for our rolling average
  ROUND(AVG(tweet_num) OVER (
    PARTITION BY user_id
    ORDER BY tweet_date
      ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
  ), 2) AS rolling_avg_3days
FROM tweet_numbers