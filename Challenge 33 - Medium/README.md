# Spotify Listening History

Data Lemur SQL challenge to tally song plays up to a certain day in the week.

## Problem

You are given a songs_history table that keeps track of users' listening history on Spotify. The songs_weekly table tracks how many times users listened to each song for all days between August 1 and August 7, 2022.

Write a query to show the user ID, song ID, and the number of times the user has played each song as of August 4, 2022. We'll refer to the number of song plays as song_plays. The rows with the most song plays should be at the top of the output.

## Solution

My solution aimed at finding a complete list of qualifying songs with a CTE and then joining weekly song and song history results inorder to sum the frequency from the history and the count of plays that week. It took a little while but I got it. It is a touch clunkier than I would've liked.

The official solution got away from these multiple parts by wrapping a union of two queries in a CTE. I like it!

[Full Challenge Description](https://datalemur.com/questions/spotify-listening-history)