/*
*** Challenge 29 - Medium
*** Top 5 Artists - Spotify
*** Official Submission - Adam Bushman
*/

-- Series of CTEs chaining each other for the final output
WITH top_global AS (
  SELECT
    song_id
  FROM
    global_song_rank
  WHERE
    rank <= 10
), 
song_artists AS (
  SELECT
    song_id,
    artist_name
  FROM songs AS s
  LEFT JOIN artists AS a  
    ON a.artist_id = s.artist_id
), 
grouped AS (
  SELECT 
    artist_name, 
    COUNT(*) AS freq
  FROM top_global AS tg
  LEFT JOIN song_artists AS sa  
    ON sa.song_id = tg.song_id
  GROUP BY
    artist_name
), 
ranked AS (
    SELECT
    artist_name, 
    -- Dense Rank instead of Rank to keep from skipping
    DENSE_RANK() OVER(
      ORDER BY freq DESC
    ) AS artist_rank
  FROM grouped
)

SELECT
  *
FROM 
  ranked
WHERE 
  artist_rank <= 5