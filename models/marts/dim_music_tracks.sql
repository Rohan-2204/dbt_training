with int_tracks_joined_to_albums_artists_genres_mediatypes as(
    select * from {{ref('int_tracks_joined_to_albums_artists_genres_mediatypes')}}
)

select  
    track_id,
    album_id,
    mediatype_id,
    genre_id,
    track_name,
    track_composer,
    album_title,
    artist_name,
    mediatype_name,
    genre_name,
    track_length_ms,
    track_length_seconds,
    track_length_mins,
    Bytes,
    unit_price
from int_tracks_joined_to_albums_artists_genres_mediatypes
