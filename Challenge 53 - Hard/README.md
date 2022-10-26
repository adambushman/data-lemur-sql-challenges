# Weekly Churn Rates

Data Lemur SQL challenge to calculate the churn rate of users by week for the month of June 2022.

## Problem

Facebook is analyzing its user signup data for June 2022. Write a query to generate the churn rate by week in June 2022. Output the week number (1, 2, 3, 4, ...) and the corresponding churn rate rounded to 2 decimal places.

For example, week number 1 represents the dates from 30 May to 5 Jun, and week 2 is from 6 Jun to 12 Jun.

## Solution

My approach was to filter for the right month, implement a case statement for the 28 day churn threshold, and extract the sign-up week number in a CTE. From there I needed only select the week and perform the sum divided by count operation rounded and adjusted to a percentage.

The official solution executed the query almost identically.

[Full Challenge Description](https://datalemur.com/questions/first-month-retention)