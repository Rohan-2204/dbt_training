SELECT
    playlistid AS playlist_id,
    name AS playlist_name
FROM {{source('music', 'playlist')}}