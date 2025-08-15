SELECT 
    t.track_id,
    t.name AS track_name,
    t.album_id,
    t.mediatype_id,
    t.genre_id,
    t.composer,
    t.milliseconds,
    t.bytes,
    t.unitprice,
    pt.playlist_id,
    p.name AS playlist_name
FROM track t
INNER JOIN playlisttrack pt ON t.track_id = pt.track_id
INNER JOIN playlist p ON pt.playlist_id = p.playlist_id
ORDER BY t.track_id, p.playlist_id;