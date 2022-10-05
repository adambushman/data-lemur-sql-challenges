/*
*** Challenge 05 - Easy
*** Duplicae Job Listings - LinkedIn
*** Official Submission - Adam Bushman
*/

SELECT COUNT(company_id) AS duplicate_companies

FROM (
  SELECT DISTINCT
    company_id
  
  FROM job_listings
  
  GROUP BY 
    company_id, 
    title, 
    description
    
  HAVING COUNT(DISTINCT job_id) > 1
) i;


/* Other Approaches/Modifications */

WITH duplicates AS (
  SELECT DISTINCT
    company_id
  
  FROM job_listings
  
  GROUP BY 
    company_id, 
    title, 
    description
    
  HAVING COUNT(DISTINCT job_id) > 1
)

SELECT COUNT(company_id) AS duplicate_companies
FROM duplicates;