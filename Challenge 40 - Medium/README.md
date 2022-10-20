# Photoshop Revenue Analysis

Data Lemur SQL challenge to find non-Photoshop revenue from Photoshop customers.

## Problem

For every customer that bought Photoshop, return a list of the customers, and the total spent on all the products except for Photoshop products.

Sort your answer by customer ids in ascending order.

## Solution

My approach was to use a subquery in the where statement to isolate customers who purchases Photoshop and a subsequent filter to remove Photoshop revenue from the other transactions. Then we sum and group the remaining revenue and voilla!

This was the exact approach used in the official solution.

[Full Challenge Description](https://datalemur.com/questions/photoshop-revenue-analysis)