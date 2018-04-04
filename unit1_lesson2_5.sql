-- I selected listings from airbnb in Amsterdam.
-- #1

select 
name, 
price,
availability_365
from 
listings
order by price desc 
limit 5

-- The most expensive apartment is the diervriendelijk appartementje aan rand Amsterdam
-- It cost 5000 a night to stay there
-- It isn't available year round 

select 
name, 
number_of_reviews
from 
listings
order by number_of_reviews desc 
limit 5

-- The most popular airbnb would be The Backroom - Central private appt based on reviews

select 
neighbourhood,
avg(price) price
from 
listings
group by neighbourhood 
order by price desc

-- The most expensive neighbourhood would be Centrum-West with an average price of 177
-- The cheapest would be Gaasperdam - Driemond with an average price of 82.5

select 
neighbourhood,
avg(availability_365) availability_365
from 
listings
group by neighbourhood 
order by availability_365 desc 

-- The cheapest neighbourhood Gaasperdam - Driemond is also the most available 
-- The least available would be the Oud-Oost




