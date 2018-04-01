--#1
select
	zip,
	date,
	max(MaxTemperatureF) MaxTemperatureF
from 
	weather


--#2
select
	start_station,
	count(*) starts
from 
	trips
group by 1


--#3
select
	trip_id,
	min(duration) duration
from 
	trips

--#4
select
	end_station,
	avg(duration) duration
from 
	trips
group by 1