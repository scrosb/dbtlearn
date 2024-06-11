{% snapshot scd_raw_listings %}
{# invalidate_hard_deletes if this is removed from the original inputs it will set the valid to column to the date it was removed.  #}
{{
   config(
       target_schema='DEV',
       unique_key='id',
       strategy='timestamp',
       updated_at='updated_at',
       invalidate_hard_deletes=True
   )
}}

select * FROM {{ source('airbnb', 'listings') }}

{% endsnapshot %}

