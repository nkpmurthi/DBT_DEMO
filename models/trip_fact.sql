with trips as (
    select 
    RIDE_ID,
    RIDEABLE_TYPE,
    DATE(TO_TIMESTAMP(started_at)) as trip_date
    from {{ source('demo', 'bike')}}
    limit 10
)



select
* 
from trips