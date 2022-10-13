# Fill Missing Client Data

Data Lemur SQL challenge to fill in missing product catalog data.

## Problem

When you log in to your retailer client's database, you notice that their product catalog data is full of gaps in the category column. Can you write a SQL query that returns the product catalog with the missing data filled in?

## Solution

I had never done something like this in SQL before so I began Googling. It appeared as though the "first_value" window function could work but I soon realized that required a complete partition to work with. Instead, I found an example using an array that stacked the category values as it cascaded. All I had to do was implement such in a CTE and then access the final value in the array.

The official solution was quite impressive, honestly. They employed a "count" window function which would not incremement on a NULL value. That completed the partition I was missing during my approach. From there "first_value" was employed and done. 

[Full Challenge Description](https://datalemur.com/questions/fill-missing-product)