# Server Utilization Time

Data Lemur SQL challenge to evaluate run time of fleet servers.

## Problem

Amazon Web Services (AWS) is powered by fleets of servers. Senior management has requested data-driven solutions to optimize server usage.

Write a query that calculates the total time that the fleet of servers was running. The output should be in units of full days.

## Solution

I was really proud of this solution. I wanted to use a lag function to pull the stop time into a new column adjacent to the start time. This, however, meant that down time was also being calculated so I wrapped the lag function in a case statement to only apply on start times. I threw all this into a CTE and used an ensuing select statement to filter out NULL (or non-corresponding lagged times) out. Then, we had to total up the entire time (hours and days) and set a floor. All done!

The official solution used the lead window function, a perfect choice in this instance that didn't require some of the complexity I used in my workaround. Very nice!

[Full Challenge Description](https://datalemur.com/questions/total-utilization-time)