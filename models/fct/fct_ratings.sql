{{
    config(
        materialized='incremental',
        on_schema_change='fail'
    )
}}

WITH src_ratings AS (
  SELECT * FROM {{ ref('src_ratings') }}
)

SELECT
  user_id,
  movie_id,
  rating,
  rating_timestamp
FROM src_ratings
WHERE rating IS NOT NULL

{% if is_incremental() %}
    and rating_timestamp > (select max(rating_timestamp) from {{this}})
{% endif %}