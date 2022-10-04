# Cities With Completed Trades

Data Lemur SQL challenge to find the top cities in completed trade orders.

## Problem

You are given the tables below containing information on Robinhood trades and users. Write a query to list the top three cities that have the most completed trade orders in descending order.

Output the city and number of orders.

## Solution

My solution was very straight forward. A left join between the trades and users table, and filtering for only completed orders. The big key here was that we count the number of individual orders (via the id) and not worrying about the details of the trade(price, quantity, etc). It was therefore a simple count aggregator function, grouped by the city, ordered from largest to smallest, and limited to 3 records.

The official solution approaches very similarly but used an inner join. Nothing wrong there, I often like to be explicit about which table has unique records and which don't.

[Full Challenge Description](https://datalemur.com/questions/completed-trades)