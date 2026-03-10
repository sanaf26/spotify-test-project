select 
track_id,
track_name,
track_genre as genre,
album_name,
artists,
popularity,
duration_ms,
duration_ms / 60000 as duration_minutes,
explicit,
    danceability,
    energy,
    key,
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

      - name: genre
        tests:
          - not_null

      - name: is_explicit
        tests:
          - accepted_values:
              values: [true, false]
