# Unfinished Parts

Data Lemur SQL challenge to compare viewership on device (Laptop vs Mobile).

## Problem

Assume that you are given the table below containing information on viewership by device type (where the three types are laptop, tablet, and phone). Define “mobile” as the sum of tablet and phone viewership numbers. Write a query to compare the viewership on laptops versus mobile devices.

Output the total viewership for laptop and mobile devices in the format of "laptop_views" and "mobile_views".

## Solution

I approached the solution with a CTE to define the logic of what constitutes "mobile" vs "laptop". Then I implemented to subqueries in the select statement to get the right totals. I did not like the solution at all. Felt very clunky. I experimented with some other approaches but they felt just as messy.

The official solution was really slick. With the use of a case statement yielding integers, we can sum for two columns without needing CTEs or Subqueries. Definitely opened my eyes a little here.

[Full Challenge Description](https://datalemur.com/questions/laptop-mobile-viewership)