# Active User Retention

Data Lemur SQL challenge to evaluate the number of active users on Facebook's platform in a month

## Solution

I decided to tackle this problem with a Common Table Expression (CTE). I've been meaning to practice this technique and thought it was a good approach for this problem. Each CTE filtered the table for the corresponding month and a select statement thereafter performed an inner join to find the common users.

The official solution as explained in Data Lemur appears far more complex than my implementation and objectively less readable. The official solution used a subquery and had additional where statements, wheras I was able to condense the transformations more succinctly.

The result was the same, which is the ultimate goal.

[Full Challenge Description](https://datalemur.com/questions/user-retention)