# Sending vs Opening Snaps

Data Lemur SQL challenge to compare behavior with snaps by age group.

## Problem

Assume you are given the tables below containing information on Snapchat users, their ages, and their time spent sending and opening snaps. Write a query to obtain a breakdown of the time spent sending vs. opening snaps (as a percentage of total time spent on these activities) for each of the different age groups.

Output the age bucket and percentage of sending and opening snaps. Round the percentages to 2 decimal places.

## Solution

My solution was to implement a subquery to handle the logic for grouping the time by send, open, and total. The outer query handles the presentation via formatting, scale, and calculation. Another modification was to avoid totalling the time in the subquery and execute that in the outer query. I think I like that better, in hindsight.

[Full Challenge Description](https://datalemur.com/questions/time-spent-snaps)