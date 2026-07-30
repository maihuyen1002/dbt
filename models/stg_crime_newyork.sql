with cte as (
    select *
    from {{ source('USCRIME', 'URBAN_CRIME_INCIDENT_LOG') }}
    where city = 'New York'
         and OFFENSE_CATEGORY IN  ('Theft'  , 'Driving Under The Influence')
)

SELECT *
FROM CTE