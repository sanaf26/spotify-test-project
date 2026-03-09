select
    track_id,
    TRIM (artist_name) as artist_name,
    popularity,
from {{ ref('stg_spotify_tracks') }},
UNNEST (SPLIT (artists, ';')) AS artist_name