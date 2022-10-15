# Consulting Bench Time

Data Lemur SQL challenge to assess the time gap between client consulting engagements.

## Problem

In consulting, being "on the bench" means you have a gap between two client engagements. Google wants to know how many days of bench time each consultant had in 2021. Assume that each consultant is only staffed to one consulting engagement at a time.

Write a query to pull each employee ID and their total bench time in days during 2021.

## Solution

This one gave me some fits, mostly due to realizing that for the purpose of this exercise, we need to include both the start and end dates. This meant we increased the end date by one day before taking the difference, summing the days grouped by the employee, and taking the difference of 365 days and the result.

The official solution used a CTE to not only take the difference but to find out how many "inclusive days" are needed for each user. By shifting the end date, I took care of this is a more concise manner though likely in a less intuitive manner.

[Full Challenge Description](https://datalemur.com/questions/consulting-bench-time)