-- Unit 1 lesson 2

-- #1
SELECT	
	trip_id
	duration 
FROM
	trips
WHERE
	duration > 500
ORDER BY duration


-- #2

SELECT
	*
FROM 
	stations
WHERE
	station_id = 84

-- #3
SELECT
	MinTemperatureF
FROM
	weather
WHERE
	zip = 94301
