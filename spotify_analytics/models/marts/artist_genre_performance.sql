SELECT
ita.artist_name,
st.genre,
count (distinct ita.track_id) as track_count,
avg (st.popularity) as avg_popularity
from {{ ref ('int_track_artists')}} ita   
join {{ ref('stg_spotify_tracks')}} st 
on ita.track_id = st.track_id
GROUP BY
ita.artist_name,
st.genre
ORDER BY
st.genre,
avg_popularity desc