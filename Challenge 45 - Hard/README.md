# Bad Delivery Rate

Data Lemur SQL challenge to find the rate of bad experiences in the first 14 days of a new user signing up.

## Problem

DoorDash's Growth Team is trying to make sure new users (those who are making orders in their first 14 days) have a great experience on all their orders in their 2 weeks on the platform.

Unfortunately, many deliveries are being messed up because:

*   the orders are being completed incorrectly (missing items, wrong order, etc.)
*   the orders aren't being received (wrong address, wrong drop off spot)
*   the orders are being delivered late (the actual delivery time is 30 minutes later than when the order was placed). Note that the estimated_delivery_timestamp is automatically set to 30 minutes after the order_timestamp.

Write a query to find the bad experience rate in the first 14 days for new users who signed up in June 2022. Output the percentage of bad experience rounded to 2 decimal places.

## Solution

My solution was to write a CTE enclosing a query that would join the orders, customers, and trips tables and evaluate on time delivery, filter for June 2022 and orders within the first 14 days. Then a select statement thereafter counts all the "bad experience" transactions with a case statement from which we can divide the total number of transactions to get our result.

The official solution approached similarly but execute some of the joins outside of the CTE. I think they're both great!

[Full Challenge Description](https://datalemur.com/questions/sql-bad-experience)