SELECT
    TrackId AS track_id,
    Name AS track_name,
    AlbumId AS album_id,
    MediaTypeId AS mediatype_id,
    GenreId AS genre_id,
    Composer AS track_composer,
    Milliseconds AS track_length_ms,
    Bytes bytes,
    UnitPrice AS unit_price,
    (Milliseconds/1000) AS track_length_seconds,
    (Milliseconds/6000) AS track_length_mins
FROM {{source('music', 'playlisttrack')}}