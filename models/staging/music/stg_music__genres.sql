SELECT
    genreid AS genre_id,
    name AS genre_name
FROM {{source('music', 'genre')}}