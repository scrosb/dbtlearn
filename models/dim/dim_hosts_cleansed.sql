{{
    config(
        materialized = 'view'
    )
}}


WITH src_hosts AS (
    SELECT * FROM {{ref('src_hosts')}}
)

SELECT 
    host_id,
    NVL(host_name, 'Anonymous') as host_name,
    created_at,
    updated_at,
    is_superhost
    FROM
     src_hosts