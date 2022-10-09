# Top Rated Businesses

Data Lemur SQL challenge to find the top two power users for Microsoft Teams.

## Problem

Assume you are given the table below containing information on user reviews. Write a query to obtain the number and percentage of businesses that are top rated. A top-rated busines is defined as one whose reviews contain only 4 or 5 stars.

Output the number of businesses and percentage of top rated businesses rounded to the nearest integer.

## Solution

The approach was fairly straight forward but the tricky part was avoiding integer division. I decided a subquery helped out here and made it fairly readable.

After reviewing the official solution, there was some opportunity to streamline a little more but that could be just preference. 

[Full Challenge Description](https://datalemur.com/questions/sql-top-businesses)