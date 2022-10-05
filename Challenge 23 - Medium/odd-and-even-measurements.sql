/*
*** Challenge 23 - Medium
*** Odd and Even Measurements - Google
*** Official Submission - Adam Bushman
*/

-- CTE to get the ranks properly setup for the date group
WITH odds_evens AS (
  SELECT 
    *, 
    DATE_TRUNC('day', measurement_time) AS time_group, 
    RANK() OVER (
      PARTITION BY DATE_TRUNC('day', measurement_time)
      ORDER BY measurement_time
    ) AS ranked
  FROM measurements
  ORDER BY measurement_time ASC
), 
-- Another CTE off the first to isolate odds and sum their measurement
odds_group AS (
  SELECT time_group, SUM(measurement_value) AS summed
  FROM odds_evens
  WHERE (ranked % 2) != 0
    GROUP BY time_group
), 
-- Another CTE off the first to isolate evens and sum their measurement
evens_group AS (
  SELECT time_group, SUM(measurement_value) AS summed
  FROM odds_evens
  WHERE (ranked % 2) = 0
  GROUP BY time_group
)

-- Finally a query with multiple joins
SELECT 
  oe.time_group AS measurement_day, 
  og.summed AS odd_sum, 
  eg.summed AS even_sum

-- From statement ensures we have every date group from the first CTE
FROM 
  (SELECT DISTINCT time_group FROM odds_evens) AS oe
LEFT JOIN odds_group og
  ON og.time_group = oe.time_group
LEFT JOIN evens_group eg
  ON eg.time_group = oe.time_group

ORDER BY oe.time_group