# Invalid Search Results

Data Lemur SQL challenge to find the frequency of invalid searches by country.

## Problem

Assume you are given the table below containing the information on the searches attempted and the percentage of invalid searches by country. Write a query to obtain the percentage of invalid search result.

Output the country (in ascending order), total number of searches and percentage of invalid search rounded to 2 decimal places.

## Solution

The key to solving this was avoiding integer division and realizing that the per search category invalid percentages were pre-multiplied by 100. Realizing that, it was pretty straight forward to design a query to handle that and aggregate in the right way for the desired output.

The official solution made it seem a little more involved that it really was. Part of that may have been to fully communicate why/how to filter out NULL values.

[Full Challenge Description](https://datalemur.com/questions/invalid-search-pct)