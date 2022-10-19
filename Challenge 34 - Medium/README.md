# User Session Activity

Data Lemur SQL challenge to rank session duration totals by type.

## Problem

Assume you are given the table below containing information on user session activity. Write a query that ranks users according to their total session durations (in minutes) by descending order for each session type between the start date (2022-01-01) and end date (2022-02-01). Output the user id, session type, and the ranking of the total session duration.

## Solution

This problem had two tricky bits I picked up on a pretty quick. The first was in filtering for the date range. Because of the timestamp, we needed to truncate to a day format and then filter. Second, we needed to rank by the aggregation of session duration by type in order for the rankings to work. I was able to execute all this in a single select statement.

The official solution broke up that aggregation into a CTE or subquery. I feel my solution was more readable and straight forward.

[Full Challenge Description](https://datalemur.com/questions/sql-session-activity)