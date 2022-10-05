# Duplicate Job Listings

Data Lemur SQL challenge to find the number of companies who've posted duplicate job listings.

## Problem

Assume you are given the table below that shows job postings for all companies on the LinkedIn platform. Write a query to get the number of companies that have posted duplicate job listings (two jobs at the same company with the same title and description).

## Solution

Using a simple group by statement on the company, title, and description fields, we can count the number of unique job postings. For those greater than one, we need only implement a having clause and select unique companies. I threw all that in a subquery or CTE and a full aggregate count function with an alias returns the final solution. 

Such was the exact approach used for the official solution.

[Full Challenge Description](https://datalemur.com/questions/duplicate-job-listings)