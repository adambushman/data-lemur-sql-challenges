# Reactivated Users

Data Lemur SQL challenge to discover the number of reactivated users for the current month.

## Problem

Assume you are given the table below containing information on Facebook user logins. Write a query to obtain the number of reactivated users (which are dormant users who did not log in the previous month, then logged in during the current month).

Output the current month (in numerical) and number of reactivated users.

## Solution

My solution was to find instances of a user logging into Facebook the month previous to the current one. I did this with joining a subquery and filtering for NULLs. Then it was a matter of counting distinct users and grouping on the month. Done!

The official solution executed the query nearly the same but put the subquery in the where statement. This solution is a bit more slick than mine but both perfectly functional.

[Full Challenge Description](https://datalemur.com/questions/reactivated-users)