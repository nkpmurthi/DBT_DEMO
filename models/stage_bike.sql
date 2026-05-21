WITH BIKE as (
    select
    RIDE_ID,
    REPLACE(started_at, '"', '') as started_at,
    REPLACE(ENDED_AT, '"', '') as ENDED_AT
    from {{ source('demo', 'bike')}}
    where RIDE_ID != '"bikeid"'
)


select
*
from BIKE