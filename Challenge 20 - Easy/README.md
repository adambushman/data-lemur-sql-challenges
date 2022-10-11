# Second Day Confirmation

Data Lemur SQL challenge to find users who confirmed on the second day of sign-up.

## Problem

New TikTok users sign up with their emails and each user receives a text confirmation to activate their account. Assume you are given the below tables about emails and texts.

Write a query to display the ids of the users who did not confirm on the first day of sign-up, but confirmed on the second day.

## Solution

The key with this one was utilizing the action date. When filtering for confirmed, we just needed to check that the action date was the day after the signup date. From there we select the user id and we're done.

The official solution approached it the same way as well. I felt really good about that one!

[Full Challenge Description](https://datalemur.com/questions/second-day-confirmation)