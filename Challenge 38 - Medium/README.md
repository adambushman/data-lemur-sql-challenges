# Repeat Purchases on Multiple Days

Data Lemur SQL challenge to find users who purchased the same product on different days.

## Problem

Assume you are given the table below containing information on user purchases. Write a query to obtain the number of users who purchased the same product on two or more different days. Output the number of unique users.

## Solution

My solution was to aggregate users and products counting the distinct number of purchase dates. Where the count was greater than 1 we know that the same product for the same user was purchased on different dates. I put that in a CTE and then we need only filter and count unique users.

The official solution approached the problem similarly.

[Full Challenge Description](https://datalemur.com/questions/sql-repeat-purchases)