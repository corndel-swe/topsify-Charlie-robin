-- Create a list of all album names
-- Include the total duration of the album
-- Sort the results by album duration, with the longest first
SELECT a.name, SUM(t.duration_ms) AS AlbumDuration FROM albums a
INNER JOIN tracks t ON a.id = t.album_id
GROUP BY a.id
ORDER BY AlbumDuration DESC;