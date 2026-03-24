select *
from {{ ref('artist_genre_performance') }}
where track_count <= 0
   or avg_popularity < 0
   or avg_popularity > 100