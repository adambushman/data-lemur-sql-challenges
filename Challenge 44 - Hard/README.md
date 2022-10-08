# Monthly Merchant Balance

Data Lemur SQL challenge to track the cumulative balance of each merchant account by month.

## Problem

Say you have access to all the transactions for a given merchant account. Write a query to print the cumulative balance of the merchant account at the end of each day, with the total balance reset back to zero at the end of the month. Output the transaction date and cumulative balance.

## Solution

My solution was a CTE to group and sum the transaction amounts by day, accounting for "withdrawals" being negative and "deposits" being positive. A select statement with a sum window function partitioning by a month. It was a nice, concise solution from my perspective.

The official solution does things a touch more explicitly with new columns in the CTE for day, month, etc. to make the select statement obvious. But either way worked fine.

[Full Challenge Description](https://datalemur.com/questions/sql-monthly-merchant-balance)