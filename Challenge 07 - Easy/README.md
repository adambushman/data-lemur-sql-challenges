# Final Account Balance

Data Lemur SQL challenge to calculate the ending balance by account.

## Problem

Given a table of bank deposits and withdrawals, return the final balance for each account.

## Solution

My first inclination to solve this challenge was just an aggregate sum. But then I asked myself if it would be important to preserve the order of time (i.e. this transaction, then that one, then the following). Ultimately, no it didn't matter but I decided to follow that train of thought. 

I executed a CTE with window functions for a cumulative sum and a rank, as well as a case statement ensured that "withdrawals" were negative while "deposits" were positive. . I then used a joined subquery which filtered for the final transactions of each account and then returned the right data.

The official solution disregarded order of transactions and used an aggregate sum with the previously explained case statement.

[Full Challenge Description](https://datalemur.com/questions/final-account-balance)