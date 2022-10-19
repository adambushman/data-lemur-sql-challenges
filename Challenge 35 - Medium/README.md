# Same Week Purchases

Data Lemur SQL challenge to find the frequency of users who signup and purchase within 7 days thereafter.

## Problem

Assume you are given the two tables containing information on Etsy’s user signups and purchases. Write a query to obtain the percentage of users who signed up and made a purchase within 7 days of signing up. The result should be rounded to the nearest 2 decimal places.

## Solution

This challenge was poorly worded. The detailed assumptions via the link below give the impression that users who haven't purchased yet should be treated like they have, which is faulty. 

My first approach operated under that assumption being faulty (it just doesn't make sense). I used a left join for signups and purchases to identify the users without a purchase and the difference in dates for the soonest purchase and the signup. That exists in a CTE where we can focus solely on output and counting logic in the ensuing select statement.

The official solution tackles the problem similarly but without a CTE. I found this made the select statement a bit hard to follow.

[Full Challenge Description](https://datalemur.com/questions/same-week-purchases)