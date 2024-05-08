SELECT
    playlistid AS playlist_id,
    trackid AS track_id
FROM {{source('music', 'playlisttrack')}}