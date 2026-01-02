{% macro flatten_gen(x) %}

case when {{x}} like 'Adventure%' then 'Adv'
    when {{x}} like 'Comedy%' then 'Com'
    when {{x}} like 'Action%' then 'Act'
    when {{x}} like 'Drama%' then 'Drm'
    when {{x}} like 'Crime%' then 'Crm'
    when {{x}} like 'Children%' then 'Child'
    when {{x}} like 'Mystery%' then 'Mys'
    when {{x}} like 'Documentary%' then 'Doc'
    else 'NA'
    end    
     
     
{% endmacro %}