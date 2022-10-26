# Advertiser status

Data Lemur SQL challenge to change advertiser statuses based on payment updates or lack thereof.

## Problem

Write a query to update the Facebook advertiser's status using the daily_pay table. Advertiser is a two-column table containing the user id and their payment status based on the last payment and daily_pay table has current information about their payment. Only advertisers who paid will show up in this table.

Output the user id and current payment status sorted by the user id.

## Solution

The first step was getting a master list of user ids, then joining the advertiser and daily pay tables. From there, I implemented a nested case statement to test for users that were new or churn. Then it was a matter of additional logic for changing the status based on the previous status when a user paid.

The official solution was able to simplify the case statements a little which is nice but outside of that there wasn't a whole lot different.

[Full Challenge Description](https://datalemur.com/questions/updated-status)