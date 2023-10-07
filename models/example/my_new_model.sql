{{
    config(
        materialized='table'
        
    )
}}

with mytable as (

    select 2 as newcol
    union
    select 3 as newcol
)
select * from mytable