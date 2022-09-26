/*
*** Challenge 02 - Easy
*** Page With No Likes - Facebook
*** Official Submission - Adam Bushman
*/

-- Approached as a join with HAVING instead of subquery
SELECT DISTINCT p.page_id

FROM pages p
LEFT JOIN page_likes pl ON pl.page_id = p.page_id

GROUP BY p.page_id
HAVING COUNT(pl.user_id) = 0

ORDER BY p.page_id ASC;

/* 
*** Potential Modifications
*/

SELECT DISTINCT page_id

FROM pages
-- Here we use a subquery, instead
WHERE page_id NOT IN (SELECT page_id FROM page_likes)

ORDER BY page_id ASC;


SELECT DISTINCT p.page_id

FROM pages p
LEFT JOIN page_likes pl ON pl.page_id = p.page_id
-- Here we simplify the filtering and avoid a subquery
WHERE pl.user_id IS NULL

ORDER BY p.page_id ASC;