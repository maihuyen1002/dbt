with cte as (
    select *
    from {{ source('USCRIME', 'URBAN_CRIME_INCIDENT_LOG') }}
)

SELECT *
FROM CTE