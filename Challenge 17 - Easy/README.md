# Ad Campaign ROAS

Data Lemur SQL challenge to calculate the return on ad spend (ROAS) for each advertiser.

## Problem

Google marketing managers are analyzing the performance of various advertising accounts over the last month. They need your help to gather the relevant data.

Write a query to calculate the return on ad spend (ROAS) for each advertiser across all ad campaigns. Round your answer to 2 decimal places, and order your output by the advertiser_id.

## Solution

My solution was straight forward: sum and divide the revenue from the spend by the advertiser id. It became clear that the different data types weren't allowing division to work properly and respect the required data type for the round function. I simply casted the columns to a numeric data type and it worked perfectly.

The official solution casted just the integer column to a decimal data type.

[Full Challenge Description](https://datalemur.com/questions/ad-campaign-roas)