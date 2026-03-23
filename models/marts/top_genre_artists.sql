SELECT *
FROM {{ ref('artist_genre_performance') }}
QUALIFY ROW_NUMBER() OVER (
  PARTITION BY genre
  ORDER BY avg_popularity DESC
) <= 3