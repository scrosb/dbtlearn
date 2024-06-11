{# WITH fct_reviews AS (
    SELECT * FROM {{ ref('fct_reviews') }}
),
dim_listings_cleased AS (
    SELECT * FROM {{ ref('dim_listings_cleansed') }}
)




SELECT * FROM fct_reviews f
LEFT JOIN dim_listings_cleansed d
ON f.listing_id = d.listing_id
WHERE TO_DATE(f.review_date) < TO_DATE(d.created_at) 
LIMIT 1 #}

SELECT * FROM {{ ref('dim_listings_cleansed') }} l
INNER JOIN {{ ref('fct_reviews') }} r
USING (listing_id)
WHERE l.created_at >= r.review_date