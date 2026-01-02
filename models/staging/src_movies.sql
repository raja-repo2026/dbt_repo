with raw_movies as (
    select * from {{source('demo','r_movies')}}
)
select 
movieId as movie_id,
title,
{{flatten_gen('genres')}} as genres
from raw_movies