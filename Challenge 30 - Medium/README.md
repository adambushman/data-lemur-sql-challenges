# Signup Confirmation Rate

Data Lemur SQL challenge to evaluate the rate at which users confirm their signups with text messages.

## Problem

New TikTok users sign up with their emails, so each signup requires a text confirmation to activate the new user's account.

Write a query to find the confirmation rate of users who confirmed their signups with text messages. Round the result to 2 decimal places.

## Solution

I'm really proud of my solution. I used a CTE containing an unconventional join which created duplicate email records for every text entry. This allowed me to count the distinct users (since they're all there) and then total a case statement looking for confirmed signups. Voilla!

The official solution tackled the problem very similarly...so maybe I wasn't all that clever :)

[Full Challenge Description](https://datalemur.com/questions/signup-confirmation-rate)