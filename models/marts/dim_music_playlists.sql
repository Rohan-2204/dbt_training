with int_tracks_joined_to_albums_artists_genres_mediatypes as(
    select * from {{ref('int_tracks_joined_to_albums_artists_genres_mediatypes')}}
),

playlists as(
    select * from {{ref('stg_music__playlists')}}
),

playlist_tracks as(
    select * from {{ref('stg_music__playlist_tracks')}}
),

joined as(
    select
        stg_music__playlist_tracks.playlist_id,
        stg_music__playlist_tracks.track_id,
        int_tracks_joined_to_albums_artists_genres_mediatypes.album_id,
        int_tracks_joined_to_albums_artists_genres_mediatypes.mediatype_id,
        int_tracks_joined_to_albums_artists_genres_mediatypes.genre_id,
        stg_music__playlists.playlist_name,
        int_tracks_joined_to_albums_artists_genres_mediatypes.track_name,
        int_tracks_joined_to_albums_artists_genres_mediatypes.track_composer,
        int_tracks_joined_to_albums_artists_genres_mediatypes.album_title,
        int_tracks_joined_to_albums_artists_genres_mediatypes.artist_name,
        int_tracks_joined_to_albums_artists_genres_mediatypes.mediatype_name,
        int_tracks_joined_to_albums_artists_genres_mediatypes.genre_name,
        int_tracks_joined_to_albums_artists_genres_mediatypes.track_length_ms,
        int_tracks_joined_to_albums_artists_genres_mediatypes.track_length_seconds,
        int_tracks_joined_to_albums_artists_genres_mediatypes.track_length_mins,
        int_tracks_joined_to_albums_artists_genres_mediatypes.Bytes,
        int_tracks_joined_to_albums_artists_genres_mediatypes.unit_price
    from int_tracks_joined_to_albums_artists_genres_mediatypes
    left join stg_music__playlist_tracks
        on int_tracks_joined_to_albums_artists_genres_mediatypes.track_id = stg_music__playlist_tracks.track_id
    left join stg_music__playlists
        on stg_music__playlist_tracks.playlist_id = stg_music__playlists.playlist_id
)

select * from joined