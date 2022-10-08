# Histogram of Tweets

Data Lemur SQL challenge to evaluate top purchasing customers on eBay.

## Problem

Assume that you are given the table below containing information on various orders made by eBay customers. Write a query to obtain the user IDs and number of products purchased by the top 3 customers; these customers must have spent at least $1,000 in total.

Output the user id and number of products in descending order. To break ties (i.e., if 2 customers both bought 10 products), the user who spent more should take precedence.

## Solution

My approach to solve the challenge was a fairly simple select statement, grouping by the user id for the count of products. However, we needed to filter for customers whose purchases totalled at least $1,000. Thus, a "where" clause wouldn't work and we had to implement "having". We also used "limit" to get the top 3.

The official solution approached the challenge exactly the same.

[Full Challenge Description](https://datalemur.com/questions/sql-highest-products)