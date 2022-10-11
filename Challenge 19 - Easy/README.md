# App Click-Through Rate (CTR)

Data Lemur SQL challenge to calculate the click-through rate by app in 2022.

## Problem

Assume you have an events table on app analytics. Write a query to get the click-through rate (CTR %) per app in 2022. Output the results in percentages rounded to 2 decimal places.

## Solution

My approach was to nest some case statements inside of a pair of sum functions. One would "count" all of the clicks and the other would "count" all of the impressions. We executed division, ensured to multiply by 100.0 to avoid integer division, and grouped by the app id.

The official solution executed exactly the same. They did have another variation that used a sum() filter(). I'll have to research and practice those.

[Full Challenge Description](https://datalemur.com/questions/apple-pay-volume)