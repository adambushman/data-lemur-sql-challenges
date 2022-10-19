/*
*** Challenge 33 - Medium
*** Spotify Listening History - Spotify
*** Official Submission - Adam Bushman
*/

WITH complete AS (
  SELECT user_id, song_id
  FROM songs_history
  
  UNION
  
  SELECT user_id, song_id
  FROM songs_weekly
  WHERE DATE_TRUNC('day', listen_time) < DATE('08/05/2022 00:00:00')
), 
songs AS (
  SELECT 
    user_id, 
    song_id, 
    COUNT(*) AS freq
  FROM
    songs_weekly
  WHERE DATE_TRUNC('day', listen_time) < DATE('08/05/2022 00:00:00')
  GROUP BY
    user_id, 
    song_id
)

SELECT 
  c.user_id, 
  c.song_id, 
  COALESCE(s.freq, 0) + 
  COALESCE(sh.song_plays, 0) AS song_plays
FROM complete AS c
LEFT JOIN songs_history AS sh
  ON sh.user_id = c.user_id AND sh.song_id = c.song_id
LEFT JOIN songs AS s
  ON s.user_id = c.user_id AND s.song_id = c.song_id
ORDER BY
  COALESCE(s.freq, 0) + 
  COALESCE(sh.song_plays, 0) DESC