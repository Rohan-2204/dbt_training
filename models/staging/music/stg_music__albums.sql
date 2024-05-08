WITH albums AS (
    SELECT * FROM {{source('music', 'album')}}
)

SELECT 
    albumid as album_id, 
    title as album_title, 
    artistid as artist_id
FROM albums
