# User's Third Transaction

Data Lemur SQL challenge to find the third transaction for every Uber user.

## Problem

Assume you are given the table below on Uber transactions made by users. Write a query to obtain the third transaction of every user. Output the user id, spend and transaction date.

## Solution

My only approach centered around use of the RANK() window function. I had to remind myself of the syntax but was able to add a column presenting the rank partitioned by the user id and ordered by the transaction date. 

I then needed to use either a CTE or a subquery in order to filter off the window function result. I tested both approaches and each worked just fine. I think I may prefer the CTE a little more.

The official solution uses my exact approach and demonstrates a subquery and CTE approach. They highlight how a CTE can be used multiple times in that query session and is more readable.

[Full Challenge Description](https://datalemur.com/questions/sql-third-transaction)