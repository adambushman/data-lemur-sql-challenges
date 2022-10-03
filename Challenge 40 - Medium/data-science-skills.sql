/*
*** Challenge 40 - Easy
*** Data Science Skills - LinkedIn
*** Official Submission - Adam Bushman
*/

SELECT DISTINCT candidate_id

FROM candidates

-- Use of 3 subqueries
-- Because of the 3 subqueries, I made sure to eliminate candidates with fewer than all 3
WHERE candidate_id IN (SELECT candidate_id FROM candidates WHERE skill = 'Python')
AND candidate_id IN (SELECT candidate_id FROM candidates WHERE skill = 'Tableau')
AND candidate_id IN (SELECT candidate_id FROM candidates WHERE skill = 'PostgreSQL');
-- I forgot to order

/* 
*** Potential Modifications
*/

SELECT DISTINCT candidate_id

FROM candidates

-- A list using the IN operator actually does work
WHERE candidate_id IN ('Python', 'Tableau', 'PostgreSQL')
-- Here we ensure a candidate has ALL the skills
GROUP BY candidate_id
HAVING COUNT(skill) = 3

ORDER BY candidate_id;