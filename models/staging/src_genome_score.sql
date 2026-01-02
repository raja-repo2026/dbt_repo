with raw_genome_socres as (
    select * from {{source('demo','r_genome_scores')}} 
)
select 
movieid as movie_id,
tagid as tag_id,
relevance
from raw_genome_socres