select
    track_id,
    TRIM (raw_artist_name) as artist_name,
    popularity,
from {{ ref('stg_spotify_tracks') }},
UNNEST (SPLIT (artists, ';')) AS raw_artist_name