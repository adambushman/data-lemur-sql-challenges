/*
*** Challenge 51 - Hard
*** Advertiser Status - Facebook
*** Official Submission - Adam Bushman
*/

SELECT 
  t.user_id, 
  CASE
    WHEN dp.user_id IS NULL THEN 'CHURN'
    WHEN a.user_id IS NULL THEN 'NEW'
    ELSE (
      CASE 
        WHEN status = 'NEW' THEN 'EXISTING'
        WHEN status = 'EXISTING' THEN status
        WHEN status = 'CHURN' THEN 'RESURRECT'
        WHEN status = 'RESURRECT' THEN 'EXISTING'
      END
    )
  END AS new_status
FROM (
  SELECT user_id
  FROM advertiser
  UNION
  SELECT user_id
  FROM daily_pay
) AS t
LEFT JOIN
  advertiser AS a
    ON a.user_id = t.user_id
LEFT JOIN
  daily_pay AS dp
    ON dp.user_id = t.user_id
ORDER BY
  t.user_id