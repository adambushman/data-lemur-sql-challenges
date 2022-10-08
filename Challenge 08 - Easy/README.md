# Histogram of Tweets

Data Lemur SQL challenge to determine values one might use for a histogram.

## Problem

Assume you are given the table below containing tweet data. Write a query to obtain a histogram of tweets posted per user in 2022. Output the tweet count per user as the bucket, and then the number of Twitter users who fall into that bucket.

## Solution

I approached the solution with a CTE that filtered the tweets for the right year, grouped and counted by the user. From that CTE, I was able to do a join with subqueries. The join allowed for users to be placed in a bucket and counted grouped by the bucket.

The official solution approached the problem similarly but with more subqueries.

[Full Challenge Description](https://datalemur.com/questions/sql-histogram-tweets)