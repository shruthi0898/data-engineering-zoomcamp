select * from green_taxi_trips_2019 limit 10;

select * from green_taxi_trips_2019 where lpep_pickup_datetime::date = '2019-01-15' 
and lpep_dropoff_datetime::date = '2019-01-15';

select count(*) from green_taxi_trips_2019 where lpep_pickup_datetime::date = '2019-01-15' 
and lpep_dropoff_datetime::date = '2019-01-15';

select lpep_pickup_datetime, max(trip_distance) as maxTD from green_taxi_trips_2019 
group by lpep_pickup_datetime order by maxTD desc;

select * from green_taxi_trips_2019 where lpep_pickup_datetime::date = '2019-01-01' 
and passenger_count = 2;

select * from green_taxi_trips_2019 where lpep_pickup_datetime::date = '2019-01-01' 
and passenger_count = 3;

select * from zones;

select * from zones where "Zone" = 'Astoria';

select "DOLocationID", max(tip_amount) as mta from green_taxi_trips_2019 where "PULocationID" = 7
group by "DOLocationID" order by mta desc;

select * from zones where "LocationID" in (select "DOLocationID" from (select "DOLocationID", max(tip_amount)as mta from green_taxi_trips_2019 where "PULocationID" = 7
group by "DOLocationID" order by mta desc limit 1) t);