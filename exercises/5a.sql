-- How many tracks are longer than 5 minutes?
SELECT COUNT(t.id) FROM tracks t
WHERE t.duration_ms > 300000;