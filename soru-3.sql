SELECT 
    t.track_id,
    t.name AS track_name,
    t.milliseconds,
    al.title AS album_title,
    ar.name AS artist_name
FROM track t
INNER JOIN album al ON t.album_id = al.album_id
INNER JOIN artist ar ON al.artist_id = ar.artist_id
WHERE al.title = 'Let There Be Rock'
ORDER BY t.milliseconds DESC;