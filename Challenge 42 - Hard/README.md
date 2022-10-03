# Y-on-Y Growth Rate

Data Lemur SQL challenge to calculate the year-on-year growth rate for total spend by product.

## Problem

Assume you are given the table below containing information on user transactions for particular products. Write a query to obtain the year-on-year growth rate for the total spend of each product for each year.

Output the year (in ascending order) partitioned by product id, current year's spend, previous year's spend and year-on-year growth rate (percentage rounded to 2 decimal places).

## Solution

Using a CTE (where we can reference it multiple times in the same instance) was a really nice solution here. I could reference once for the current year and join for a second reference for the previous year. The one wrinkle was to consider that the previous year reference required adjust the year field forward by one while preserving the product_id field.

The official solution used what I think is a window function (LAG) to create a new column for the previous year. This is nice approach as well that eliminates the wrinkle of joining fields to preserve the year, product_id relationship. 

[Full Challenge Description](https://datalemur.com/questions/yoy-growth-rate)