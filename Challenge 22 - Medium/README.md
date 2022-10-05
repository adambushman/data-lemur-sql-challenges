# Tweets' Rolling Averages

Data Lemur SQL challenge to calculate rolling tweet averages.

## Problem

The table below contains information about tweets over a given period of time. Calculate the 3-day rolling average of tweets published by each user for each date that a tweet was posted. Output the user id, tweet date, and rolling averages rounded to 2 decimal places.

## Solution

This exercise was very difficult because I only had superficial knowledge of window functions at the time and hadn't worked with defining the rows the frame applies to. I used a series of subqueries and transformed columns to achieve the number of tweets and the corresponding number of days. But I still ended up using window functions. I designed a successful solution but it was very messy.

The official solution taught me that the simple way to solve this is a window function where we define the rows preceding that it applies to. This made my second solution very readable and compact compared to the first approach. Also using a CTE made it easier to understand as well. Definitely learned a lot!

[Full Challenge Description](https://datalemur.com/questions/rolling-average-tweets)