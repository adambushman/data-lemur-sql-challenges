# Teams Power Users

Data Lemur SQL challenge to find the top two power users for Microsoft Teams.

## Problem

Write a query to find the top 2 power users who sent the most messages on Microsoft Teams in August 2022. Display the IDs of these 2 users along with the total number of messages they sent. Output the results in descending count of the messages.

## Solution

My approach was a query that filtered for the month/year in question, grouping by the sender, counting up the messages, ordering the correct direction, and limiting the records to 2.

The official solution was no less straight forward.

[Full Challenge Description](https://datalemur.com/questions/teams-power-users)