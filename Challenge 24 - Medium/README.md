# Highest-Grossing Items

Data Lemur SQL challenge to identify the two highest-grossing products of each category in 2022.

## Problem

Assume you are given the table below containing information on Amazon customers and their spend on products belonging to various categories. Identify the top two highest-grossing products within each category in 2022. Output the category, product, and total spend.

## Solution

My approach was to use two CTEs to group sum, order, and rank the product spend in each group. Finally, a select statement will return the right columns thanks to a where statement featuring a union of two select statements. The first gets the top product by category and the second gets the second top product by category.

Didn't love it. I wish there was a more efficient function to slice the top or bottom given a certain number (essentially a limit that respects groupings).

The official solution followed this same approach but simplified that where statement greatly. Because we wanted the top two, we could have just filtered for rankings of 2 or less (i.e. top 2). In retrospect, that was pretty obvious.

[Full Challenge Description](https://datalemur.com/questions/sql-highest-grossing)