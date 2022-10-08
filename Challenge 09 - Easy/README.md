# Average Review Ratings

Data Lemur SQL challenge to calculate the average star rating for each product per month.

## Problem

Given the reviews table, write a query to get the average stars for each product every month.

The output should include the month in numerical value, product id, and average star rating rounded to two decimal places. Sort the output based on month followed by the product id.

## Solution

My solution featured the "extract" function which, when applied to a date/time, allows you to pull a singular value. In our case, we chose the month. This function also had to go in the "group by" and "order by" clauses.

The official solution approached the problem in the exact same manner.

[Full Challenge Description](https://datalemur.com/questions/sql-avg-review-ratings)