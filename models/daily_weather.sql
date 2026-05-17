WITH daily_werather as (
    select
    date(time) as daily_werathers,
    weather,
    temp,
    pressure,
    humidity,
    clouds
    from {{source('demo', 'weather')}}
),
daily_werather_agg as (
    select
    daily_werathers,
    weather,
    round(avg(temp), 2),
    round(avg(pressure), 2),
    round(avg(humidity), 2),
    round(avg(clouds), 2)
    from daily_werather
    GROUP BY daily_werathers, weather
    qualify ROW_NUMBER() OVER (PARTITION BY daily_werathers ORDER BY count(weather) desc) = 1

)

select
*
from daily_werather_agg