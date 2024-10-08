-- List the 10 slowest tracks in the database
-- Order by tempo, with the slowest first
-- Include the track id, track title and track tempo
SELECT t.id, t.name, f.tempo FROM tracks t
INNER JOIN features f ON t.id = f.track_id
ORDER BY f.tempo
LIMIT 10;