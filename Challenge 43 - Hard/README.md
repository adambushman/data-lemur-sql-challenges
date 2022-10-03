# User Shopping Sprees

Data Lemur SQL challenge to identify customers who went on a shopping spree (purchases on 3 or more consecutive days).

## Problem

In an effort to identify high-value customers, Amazon asked for your help to obtain data about users who go on shopping sprees. A shopping spree occurs when a user makes purchases on 3 or more consecutive days.

List the user ids who have gone on at least 1 shopping spree sorted by alphabetical order.

## Solution

I attempted a solution which resulted in the correct output but isn't scalable. I used a CTE and window function to find the difference in days between transactions and a subquery to find users who had enough transactions within a day apart. The problem is it can't tell if consecutive days of transactions came in 3 consecutive days or 2 and 2, for example.

The official solution approaches with CTEs and ranks or lags to achieve what I was doing but features a unique purchases CTE. I decided to try again with the additional ideas.

After some additional experimentation, I understood that a "consecutive days" type problem can be handled nicely with subtracting a date from a rank function output, because that will naturally create a group for consecutive transactions. That trick was the bidge I quickly crossed and implemented in my second submission which is now scalable.

[Full Challenge Description](https://datalemur.com/questions/amazon-shopping-spree)