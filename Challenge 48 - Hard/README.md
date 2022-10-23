# 2nd Level Managers

Data Lemur SQL challenge to discover the number of reactivated users for the current month.

## Problem

Assume we have a table of Google employees with their corresponding managers.

A manager is an employee with a direct report. A 2nd level manager is an employee who manages at least one manager, but none of their direct reports are 2nd level managers themselves. Write a query to find the 2nd level managers and their direct reports.

Output the manager's name and the count of their direct reports. The manager with the most direct reports should be the first result.

## Solution

My initial plan was to implement a recursive CTE but the Data Lemur editor doesn't appear to support such queries. Instead, I used two queries (inside of CTEs) to identify managers and second level managers. I then was able to get all direct reports for second level managers and count the direct reporting managers. It felt way to big but again, a recursive CTE query is what I would've liked to do.

The official solution was definitely more slick but didn't approach with recursive CTEs.

[Full Challenge Description](https://datalemur.com/questions/second-level-managers)