# Prime Warehouse Storage

Data Lemur SQL challenge to find prime/non-prime items to store in a warehouse.

## Problem

Amazon wants to maximize the number of items it can stock in a 500,000 square feet warehouse. It wants to stock as many prime items as possible, and afterwards use the remaining square footage to stock the most number of non-prime items.

Write a SQL query to find the number of prime and non-prime items that can be stored in the 500,000 square feet warehouse. Output the item type and number of items to be stocked.

## Solution

My solution was to implement two CTE's like a data transformation pipeline. The first would make the calculations for how many prime items can be warehoused and what space is left over. The second will allow the left over space to be used by non-prime items. Finally, we make the remaining calculation for the end result. Outside of that, the tricky part is executing the rounding at the right time.

The official solution didn't implement a lag function as I did to send the left over space from prime items to use for non-prime items. I feel that made the query a lot longer and harder to read.

[Full Challenge Description](https://datalemur.com/questions/prime-warehouse-storage)