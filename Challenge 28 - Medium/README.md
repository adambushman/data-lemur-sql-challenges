# LinkedIn Power Creators Part 2

Data Lemur SQL challenge to identify power creator users with more followers than the company they work for.

## Problem

The LinkedIn Creator team is looking for power creators who use their personal profile as a company or influencer page. If someone's LinkedIn page has more followers than the company they work for, we can safely assume that person is a power creator.

Write a query to return the IDs of these LinkedIn power creators in ascending order.

## Solution

My approach was to join the requisite tables in a CTE and add a column testing the condition that each profile had more followers than their company. It was important the joins took place in the right order. From the CTE, a simple select statement with a "having" clause checking that the number of instances of matching the condition equaled that of the companies they work for. 

The official solution executed the aggregation within the CTE using a max function. I honestly prefer my approach. I think it's far more readable.

[Full Challenge Description](https://datalemur.com/questions/linkedin-power-creators-part2)