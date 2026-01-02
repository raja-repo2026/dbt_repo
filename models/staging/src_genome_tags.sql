with raw_genome_tags as (
    select * from  {{source('demo','r_genome_tags')}}
)
select 
tagid as tag_id,
tag
from raw_genome_tags