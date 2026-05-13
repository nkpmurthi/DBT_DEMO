WITH CTE AS (
    select
    *
    from 
    {{ source('demo', 'BIKE')}}
)


SELECT 
*
FROM CTE

