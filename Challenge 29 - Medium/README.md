# Top 5 Artists

Data Lemur SQL challenge to find and order the top 5 artists whose songs appear in the Top 10 Global Rank.

## Problem

Assume there are three Spotify tables containing information about the artists, songs, and music charts. Write a query to determine the top 5 artists whose songs appear in the Top 10 of the global_song_rank table the highest number of times. From now on, we'll refer to this ranking number as "song appearances".

Output the top 5 artist names in ascending order along with their song appearances ranking (not the number of song appearances, but the rank of who has the most appearances). The order of the rank should take precedence.

## Solution

My solution seems a little complicated at first glance but really I approached the solution by chaining CTEs, which created a transformation pipeline, essentially. Ultimately what was needed was to filter the global ranks to only top 10, join up the songs to the master song/artist table, group and count the occurances, rank, and apply the final filter for the "top 5" and display.

The official solution was a little more compact but included a CTE, subquery, and multiple joins. Were someone to land on my solution and think of it like a pipeline, I think it's a bit more readable. I do not, however, know if such approaches are frowned upon in the industry.

[Full Challenge Description](https://datalemur.com/questions/linkedin-power-creators-part2)