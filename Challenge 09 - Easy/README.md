# Histogram of Tweets

Data Lemur SQL challenge to discover "power creators" amongst LinkedIn users.

## Problem

The LinkedIn Creator team is looking for power creators who use their personal profile as a company or influencer page. If someone's LinkedIn page has more followers than the company they work for, we can safely assume that person is a power creator.

Write a query to return the IDs of these LinkedIn power creators ordered by the IDs.

## Solution

This challenge was pretty straight forward: a select statement joining the two tables on the common field, filtering for more profile followers than that of their respective company and ordering.

The official solution was no less simple.

[Full Challenge Description](https://datalemur.com/questions/linkedin-power-creators)