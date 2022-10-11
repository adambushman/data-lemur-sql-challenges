/*
*** Challenge 17 - Easy
*** Ad Campaign ROAS - Google
*** Official Submission - Adam Bushman
*/

SELECT
  advertiser_id, 
  -- Key here was formatting correctly for the round
  ROUND(SUM(revenue::NUMERIC) / SUM(spend::NUMERIC), 2) AS "ROAS"
FROM
  ad_campaigns
GROUP BY
  advertiser_id
ORDER BY
  advertiser_id