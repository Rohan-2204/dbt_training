SELECT 
    albumid AS album_id, 
    title AS album_title, 
    artistid AS atrist_id
FROM {{ source('music', 'album')}}


