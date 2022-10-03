# Compensation Outliers

Data Lemur SQL challenge to find employee compensation outliers for future analysis.

## Problem

An employee is considered to be potentially overpaid if they earn more than 2 times the average salary for people with the same title. Similarly, an employee might be underpaid if they earn less than half of the average for their title. We'll refer to employees who are both underpaid and overpaid as compensation outliers for the purposes of this problem.

Write a query that shows the following data for each compensation outlier: employee ID, salary, and whether they are potentially overpaid or potentially underpaid.

## Solution

I decided to approach the problem with a subquery to handle the averages by employee group, then a subquery to implement the logic for outliers, and finally an outer query to present the relevant, truncated data. I actually really like the solution and felt it was nice and concise.

The official solution implemented it similarly with a CTE but used a window function to reduce some of the complexity.

[Full Challenge Description](https://datalemur.com/questions/compensation-outliers)