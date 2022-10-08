# Data Science Skills

Data Lemur SQL challenge to filter job candidates who possess all the required skills.

## Problem

Given a table of candidates and their skills, you're tasked with finding the candidates best suited for an open Data Science job. You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.

Write a SQL query to list the candidates who possess all of the required skills for the job. Sort the the output by candidate ID in ascending order.

## Solution

At first glance, I thought I might approach the problem with a single "where" clause featuring an "in" operator listing the required skills. However, I was worried this wouldn't ensure that every candidate possessed all the skills.

I decided to use 3 subqueries that would filter for candidates who possessed each of the skills. Together with AND logic, I achieved the correct solution. I brainstormed other approaches but none seemed worthwhile.

Upon reviewing the official solution, my suspicion was correct. They solved the issue using a "having" clause to ensure a candidate had a count of skills matching 3. This is a strong solution.

[Full Challenge Description](https://datalemur.com/questions/matching-skills)