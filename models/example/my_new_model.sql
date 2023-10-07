{{
    config(
        materialized='
        '
    )
}}

with mytable as (

    select 2 
    union
    select 3
)
select * from mytable