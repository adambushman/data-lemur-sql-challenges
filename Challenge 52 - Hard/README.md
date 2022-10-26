# Matching Rental Amenities

Data Lemur SQL challenge to find the number of similar property combinations based on amenities.

## Problem

The Airbnb Booking Recommendations team is trying to understand the "substitutability" of two rentals and whether one rental is a good substitute for another. They want you to write a query to find the unique combination of two Airbnb rentals with the same exact amenities offered.

Output the count of the unique combination of Airbnb rentals.

## Solution

I'm really proud of and excited by this solution. I collapsed all amenities into a sorted array grouped by the rental id. This I put in a CTE, afterwhich I joined that CTE to itself. The join was on the amenities list while ensuring a rental id isn't matching itself. I filtered for non-null matching rentals, counted and divided by 2 to remove duplicates. Voilla!

The official solution was very similar.

[Full Challenge Description](https://datalemur.com/questions/matching-rental-amenities)