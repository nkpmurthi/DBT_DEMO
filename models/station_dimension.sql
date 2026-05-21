WITH BIKE as (
    select
    distinct
    start_LAT as sation_lat,
    START_LNG as startion_lng
    from {{ source('demo', 'bike') }}
)

select
*
from
BIKE