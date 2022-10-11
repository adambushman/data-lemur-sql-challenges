# First Transaction

Data Lemur SQL challenge to identify the users whose first transaction was for $50 or more.

## Problem

Assume you are given the table below on user transactions. Write a query to obtain the list of customers whose first transaction was valued at $50 or more. Output the number of users.

## Solution

I executed a window function to rank the transactions by user ordering by the date. Because some orders were processed on the same day, I thought about also throwing the amount into the ordering. My thought there was that, given we don't know which was the first, we could make an explicit assumption to use the smaller of the two. Another assumption could have been to sum them (I didn't move forward with this). I ultimately threw a distinct call into the count of the ensuing select statement that also featured the filtering logic.

The official solution used the last assumption as well.

[Full Challenge Description](https://datalemur.com/questions/sql-first-transaction)