/*
*** Challenge 12 - Easy
*** spare Server Capacity - Microsoft
*** Official Submission - Adam Bushman
*/

SELECT 
  dc.datacenter_id, 
  dc.monthly_capacity - fd.demand AS spare_capacity
-- We had to group up all the demand and then join
FROM (
  SELECT datacenter_id, SUM(monthly_demand) AS demand
  FROM forecasted_demand
  GROUP BY datacenter_id
) AS fd 
INNER JOIN 
  datacenters AS dc ON dc.datacenter_id = fd.datacenter_id
ORDER BY
  dc.datacenter_id