# Odd and Even Measurements

Data Lemur SQL challenge to sum odd and even numbers in separate columns.

## Problem

Assume you are given the table below containing measurement values obtained from a sensor over several days. Measurements are taken several times within a given day.

Write a query to obtain the sum of the odd-numbered and even-numbered measurements on a particular day, in two different columns.

## Solution

I approached the problem with 3 CTEs. The first ranks the measurements within each day. The second refers to the first and sums the measurement for all odd rankings. The third also refers to the first and sums the measurement for all even rankings. Finally, a select statement with multiple joins from the CTE outputs achieve the requisite format for the solution. I'm very happy with it. It's a little lengthy but I think it breaks down the problem nicely and can be simple to follow.

The official solution uses the same process but simplifies things by avoiding the last two CTEs and multiple joins. Instead, they implemented two case statements wrapped in sum functions to get the requisite values. Slick, I like it!

[Full Challenge Description](https://datalemur.com/questions/odd-even-measurements)