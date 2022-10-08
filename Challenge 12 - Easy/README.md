# Spare Server Capacity

Data Lemur SQL challenge to find the total monthly unused server capacity by data center.

## Problem

Microsoft Azure's capacity planning team wants to understand how much data its customers are using, and how much spare capacity is left in each of it's data centers. You’re given three tables: customers, datacenters, and forecasted_demand.

Write a query to find the total monthly unused server capacity for each data center. Output the data center id in ascending order and the total spare capacity.

## Solution

This one was slightly tricky. A simple join would've meant that capacity was being overestimated. Instead, we needed a subquery to total all the demand by datacenter and then join. After that, it was about taking the capacity/demand difference and voilla.

The official solution tackles the problem similarly with the exception of using a CTE instead of a subquery.

[Full Challenge Description](https://datalemur.com/questions/sql-spare-server-capacity)