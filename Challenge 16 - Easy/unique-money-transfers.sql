/*
*** Challenge 16 - Easy
*** Unique Money Transfer Relationships - PayPal
*** Official Submission - Adam Bushman
*/

-- Idea was to standardize the pairs and count distinct ones
SELECT 
  COUNT( 
    DISTINCT CONCAT(
      LEAST(payer_id, recipient_id), '-', GREATEST(payer_id, recipient_id)
    )
  ) AS unique_relationships
FROM
  payments;


/* Adjusted approach after learning from official solution */

WITH unique_pairs AS (
  SELECT
    payer_id, recipient_id
  FROM 
    payments
  INTERSECT
  SELECT
    recipient_id, payer_id
  FROM 
    payments
)

SELECT COUNT(*) / 2 AS unique_relationships
FROM unique_pairs