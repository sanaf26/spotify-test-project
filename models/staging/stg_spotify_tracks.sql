select 
    track_id,
    track_name,
    track_genre as genre,
    album_name,
    artists,
    popularity,
    duration_ms,
    ROUND(CAST(duration_ms AS FLOAT64) / 60000, 2) as duration_minutes,
    explicit as is_explicit,
    danceability,
    energy,
    key as musical_key,
    loudness,
    mode,
    speechiness,
    acousticness,
    instrumentalness,
    liveness,
    valence,
    tempo,
    time_signature
from {{ source('spotify', 'spotify_tracks_raw') }}
where track_id is not null