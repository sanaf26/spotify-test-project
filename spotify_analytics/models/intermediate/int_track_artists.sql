select
    track_id,
    artist_name,
    popularity
from {{ ref('stg_spotify_tracks') }},
UNNEST (SPLIT (artists, ';')) AS artist_name