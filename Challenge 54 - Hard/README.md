# Repeated Payments

Data Lemur SQL challenge to find any payments repeated by accident.

## Problem

Sometimes, payment transactions are repeated by accident; it could be due to user error, API failure or a retry error that causes a credit card to be charged twice.

Using the transactions table, identify any payments made at the same merchant with the same credit card for the same amount within 10 minutes of each other. Count such repeated payments.

## Solution

This problem was about testing transactions per the conditions. I decided to use a rank function to group transactions that met the merchant it, credit card id, and amount criteria. I then used a lag function to compare the next date in the sequence. I threw all of that in a CTE. The next CTE turned the date difference into total time in minutes. I then filtered out the nulled transactions from the lag function and removed any transactions without a duplicate rank value. Finally, after both these CTEs, it was a simple matter of counting up the transactions after filtering for in 10 minute window.

The official solution did this quite a bit more simply and neatly. The used a single CTE, didn't worry about a rank function, and used a lag function as I did. The rest was pretty similar.

[Full Challenge Description](https://datalemur.com/questions/repeated-payments)