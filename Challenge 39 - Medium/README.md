# Cumulative Purchases by Proudct Type

Data Lemur SQL challenge to find cumulative purchases for product types.

## Problem

Assume you are given the table below for the purchasing activity by order date and product type. Write a query to calculate the cumulative purchases for each product type over time in chronological order.

Output the order date, product, and the cumulative number of quantities purchased.

## Solution

The solution was pretty straight forward: implement a sum window function for the quantity ordered that's partitioned appropriately by the product type and ordered chronologoically.

The official solution looks nearly identical.

[Full Challenge Description](https://datalemur.com/questions/sql-purchasing-activity)