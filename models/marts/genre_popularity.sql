SELECT
genre,
count (*) as track_count,
avg (popularity) as avg_popularity,
max (popularity) as max_popularity
from {{ ref ('stg_spotify_tracks')}}
group by genre
order by avg_popularity DESC