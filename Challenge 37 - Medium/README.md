# Histogram of Users and Purchases

Data Lemur SQL challenge to find the frequency of invalid searches by country.

## Problem

Assume you are given the below table on transactions from users. Bucketing users based on their latest transaction date, write a query to obtain the number of users who made a purchase and the total number of products bought for each transaction date.

Output the transaction date, number of users and number of products.

## Solution

The key to this solution was in counting the number of products by user and transaction date. Then, it was imperative to identify the latest transaction which I did with the rank window function. I put that all in a CTE and used a select statement thereafter to format the output and voilla!

The official solution approached the problem almost identically. Very neat!

[Full Challenge Description](https://datalemur.com/questions/histogram-users-purchases)