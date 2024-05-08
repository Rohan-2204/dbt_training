SELECT
    artistid AS artist_id,
    name AS artist_name
FROM {{source('music', 'artist')}}