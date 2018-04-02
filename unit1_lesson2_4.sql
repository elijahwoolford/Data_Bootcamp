-- #1

with rain as(
select
date
From
weather
where events = 'Rain'
group by 1
)


select 
trip_id,
duration,
date(start_date) trip_date
from
trips
join
rain
on rain.date = trip_date
order by duration desc

-- #2

SELECT
status.station_id,
stations.name,
COUNT(CASE WHEN docks_available=0 then 1 END) empty_count
FROM status
JOIN stations
on stations.station_id = status.station_id
GROUP BY 1
ORDER BY empty_count DESC




-- #3 
select 
start_station,
dockcount,
count(*)
from 
trips
join 
stations
on stations.name=trips.start_station
group by 1,2
order by 2 desc