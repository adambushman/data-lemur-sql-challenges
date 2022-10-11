# User's Third Transaction

Data Lemur SQL challenge to find over-/underpaid employees at Accenture.

## Problem

An employee is considered to be potentially overpaid if they earn more than 2 times the average salary for people with the same title. Similarly, an employee might be underpaid if they earn less than half of the average for their title. We'll refer to employees who are both underpaid and overpaid as compensation outliers for the purposes of this problem.

Write a query that shows the following data for each compensation outlier: employee ID, salary, and whether they are potentially overpaid or potentially underpaid.

## Solution

My only approach felt clunky by the end but I'm really trying to make use of CTEs. I started with a CTE that computed the salary averages by title. That CTE was referenced in a subquery with over-/underpaid logic. Outside of the subquery I filtered out non-outlier employee salaries.

Another avenue for solving this problem could have been using a second subquery but I believe that would've introduced a third level of nested queries and the use of a CTE felt more readable and practical.

The official solution was quite brilliant, actually. They also implemented a CTE but used a window function (need to practice those) to create the over-/underpaid thresholds. Then a "where" statement could filter out the the non-outlier employee salaries. The window function replaced the subquery I used. Neat!

[Full Challenge Description](https://datalemur.com/questions/compensation-outliers)