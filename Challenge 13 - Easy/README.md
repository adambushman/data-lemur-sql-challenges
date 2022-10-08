# Average Post Hiatus Part 1

Data Lemur SQL challenge to find the number of days between first and last post of the year 2021.

## Problem

Given a table of Facebook posts, for each user who posted at least twice in 2021, write a query to find the number of days between each user’s first post of the year and last post of the year in the year 2021. Output the user and number of the days between each user's first and last post.

## Solution

My first thought was a CTE and some joins to separate first and last, but then I remembered that simple "max" and "min" functions grouped by the user would suffice. After that we needed only implement a "where" clause to filter for the year and a "having" clause to ensure we had 2 or more posts.

The official solution approached the problem the exact same.

[Full Challenge Description](https://datalemur.com/questions/sql-average-post-hiatus-1)