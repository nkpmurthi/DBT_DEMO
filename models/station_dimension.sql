WITH BIKE as (
    select
    distinct
    start_station_name as station_name,
    start_LAT as sation_lat,
    START_LNG as startion_lng
    from {{ ref('stage_bike')}}
)

select
*
from
BIKE