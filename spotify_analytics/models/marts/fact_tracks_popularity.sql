select
track_id,
popularity,
duration_minutes,
danceability,
energy,
loudness,
speechiness,
acousticness,
instrumentalness,
liveness,
valence,
tempo
from {{ ref ('stg_spotify_tracks')}}

