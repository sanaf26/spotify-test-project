select
    artist_name,
    count(distinct track_id) as track_count,
    avg(popularity) as avg_popularity,
    max(popularity) as max_popularity
from {{ ref('int_track_artists') }}
group by artist_name
order by avg_popularity desc
