# Unfinished Parts

Data Lemur SQL challenge to find parts that have begun assembly but are unfinished.

## Problem

Tesla is investigating bottlenecks in their production, and they need your help to extract the relevant data. Write a SQL query that determines which parts have begun the assembly process but are not yet finished.

## Solution

I approached the problem with a simple filter for NULL or empty entries in the finish date. This means that the corresponding part had an incomplete step. All that was left is to select unique/distinct part names.

The official solution uses the same approach except for grouping instead of selecting distinct.

[Full Challenge Description](https://datalemur.com/questions/tesla-unfinished-parts)