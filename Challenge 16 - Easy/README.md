# Unique Money Transfer Relationships

Data Lemur SQL challenge to find unique two-way money transfer relationships.

## Problem

You are given a table of PayPal payments showing the payer, the recipient, and the amount paid. A two-way unique relationship is established when two people send money back and forth. Write a query to find the number of two-way unique relationships in this data.

## Solution

My original approach to the solution was to concatenate ids in a common order and then select a distinct count. This returned 6...not the right answer. This is because my solution didn't ensure that both parties had been a sender and receiver on at least one occasion previous.

The real approach was to intersect (set operation) for two select queries. This would ensure the output was true pairs who had been senders and receivers. We threw that into a CTE and counted off it.

[Full Challenge Description](https://datalemur.com/questions/money-transfer-relationships)