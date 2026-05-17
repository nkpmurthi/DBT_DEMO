WITH BIKE as (
    select
    distinct
    START_STATIO_ID as station_id,
    start_station_name as station_name,
    start_LAT as sation_lat,
    START_LNG as startion_lng
    from {{ source('demo', 'bike')}}
)


select
*
from
BIKE