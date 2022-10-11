# Apple Pay Volume

Data Lemur SQL challenge to calculate the volume of transactions performed via Apple Pay.

## Problem

Visa is trying to analyze its Apply Pay partnership. Calculate the total transaction volume for each merchant where the transaction was performed via Apple Pay.

Output the merchant ID and the total transactions by merchant. For merchants with no Apple Pay transactions, output their total transaction volume as 0.

Display the result in descending order of transaction volume.

## Solution

My approach was a case statement wrapped inside of a sum where we could group by the merchant id. The case statement would test for Apple Pay as the payment method. If true, we'd keep the transaction amount. If false, we'd substitute 0. 

It turned out there were various value differences in the data. I quickly checked for unique payment methods and confirmed that all versions of Apple Pay had the same length, spacing, etc., so it was just a matter of adjusting for capitalization. I used a lower function for the test and got the proper output.

The official solution approached the problem nearly line for line.

[Full Challenge Description](https://datalemur.com/questions/apple-pay-volume)