# Prime Warehouse Storage

Data Lemur SQL challenge to find prime/non-prime items to store in a warehouse.

## Problem

Google's marketing team is making a Superbowl commercial and needs a simple statistic to put on their TV ad: the median number of searches a person made last year.

However, at Google scale, querying the 2 trillion searches is too costly. Luckily, you have access to the summary table which tells you the number of searches made last year and how many Google users fall into that bucket.

Write a query to report the median of searches made by a user. Round the median to one decimal point.

## Solution

I definitely had to do some research here on how I could implement SQL principles to back convert an aggregation. There were some sequence functions that could work but I decided to cross-join the table, number the rows partitioned by the searches, and filter where the number of searches was less than or equal to the row number. I believe this could have some problems for larger values in the user number bucket. Then it was a matter of finding the middle-point and protecting against odd/even sized tables. Don't love the solution but certainly learned things along the way.

The official solution was, in hindsight, genius and obvious at the same time. They implemented the generate series function and then used the persentile function to get 0.5 (50%tile) which is be definition the median. Really nicely done!

[Full Challenge Description](https://datalemur.com/questions/median-search-freq)