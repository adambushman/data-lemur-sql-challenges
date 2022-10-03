# Page With No Likes

Data Lemur SQL challenge to find Facebook pages without any likes.

## Problem

Assume you are given the tables below about Facebook pages and page likes. Write a query to return the page IDs of all the Facebook pages that don't have any likes. The output should be in ascending order.

## Solution

I approached the problem using a left join and a "having" clause to make sure the count was 0. This solution was correct and very interpretable but a touch long.

I decided to try another approach with a subquery in the "where" clause to make sure there's no page likes. This made the query very succinct but could be less interpretable in the onset. A third approach I experimented with was another left join but using a single "where" clause to filter for page likes as NULL. This was probably my favorite version of simplicity and interpretability.

Upon reviewing the official solution, they used the second and third approaches I came up with. All solutions appear very appropriate and could be a matter of taste.

[Full Challenge Description](https://datalemur.com/questions/sql-page-with-no-likes)