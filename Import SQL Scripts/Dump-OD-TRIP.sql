
select
/*'csn','bid',*/'trip_start_date','trip_start_time','origin_mode','destination_mode','num_passengers','passenger_type','product_id','first_direction','first_route_taken','first_service_provider','origin','origin_service_agency','origin_lat','origin_lon','destination','destination_service_agency','destination_lat','destination_lon','destination_time','last_route_taken','last_direction','last_service_provider','last_mode','number_of_transfers','last_vehicle_id','last_trip_id','transfer_required','trip_start', 'trip_duration' UNION ALL
SELECT * from(
	SELECT  /*`csn`,`bid`,*/`trip_start_date`,`trip_start_time`,`origin_mode`,`destination_mode`,`num_passengers`,`passenger_type`,`product_id`,`first_direction`,`first_route_taken`,`first_service_provider`,`origin`,`origin_service_agency`,`origin_lat`,`origin_lon`,`destination`,`destination_service_agency`,`destination_lat`,`destination_lon`,`destination_time`,`last_route_taken`,`last_direction`,`last_service_provider`,`last_mode`,`number_of_transfers`,`last_vehicle_id`,`last_trip_id`,`transfer_required`,`trip_start`, `trip_duration`
    FROM `od-trip` order by csn, `trip_start_date`, `trip_start_time`) as tbl
    INTO OUTFILE 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Output\\od-trip-nocnsbid.csv'
    FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
    
select
/*'csn','bid',*/'trip_start_date','trip_start_time','origin_mode','destination_mode','num_passengers','passenger_type','product_id','first_direction','first_route_taken','first_service_provider','origin','origin_service_agency','origin_lat','origin_lon','destination','destination_service_agency','destination_lat','destination_lon','destination_time','last_route_taken','last_direction','last_service_provider','last_mode','number_of_transfers','last_vehicle_id','last_trip_id','transfer_required','trip_start' UNION ALL
SELECT * from(
	SELECT  /*`csn`,`bid`,*/`trip_start_date`,`trip_start_time`,`origin_mode`,`destination_mode`,`num_passengers`,`passenger_type`,`product_id`,`first_direction`,`first_route_taken`,`first_service_provider`,`origin`,`origin_service_agency`,`origin_lat`,`origin_lon`,`destination`,`destination_service_agency`,`destination_lat`,`destination_lon`,`destination_time`,`last_route_taken`,`last_direction`,`last_service_provider`,`last_mode`,`number_of_transfers`,`last_vehicle_id`,`last_trip_id`,`transfer_required`,`trip_start`
    FROM `od-trip-nodestination` order by csn, `trip_start_date`, `trip_start_time`) as tbl
    INTO OUTFILE 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Output\\od-trip-nodestination-nocnsbid.csv'
    FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

select
'csn','bid','trip_start_date','trip_start_time','origin_mode','destination_mode','num_passengers','passenger_type','product_id','first_direction','first_route_taken','first_service_provider','origin','origin_service_agency','origin_lat','origin_lon','destination','destination_service_agency','destination_lat','destination_lon','destination_time','last_route_taken','last_direction','last_service_provider','last_mode','number_of_transfers','last_vehicle_id','last_trip_id','transfer_required','trip_start', 'trip_duration' UNION ALL
SELECT * from(
	SELECT  `csn`,`bid`,`trip_start_date`,`trip_start_time`,`origin_mode`,`destination_mode`,`num_passengers`,`passenger_type`,`product_id`,`first_direction`,`first_route_taken`,`first_service_provider`,`origin`,`origin_service_agency`,`origin_lat`,`origin_lon`,`destination`,`destination_service_agency`,`destination_lat`,`destination_lon`,`destination_time`,`last_route_taken`,`last_direction`,`last_service_provider`,`last_mode`,`number_of_transfers`,`last_vehicle_id`,`last_trip_id`,`transfer_required`,`trip_start`, `trip_duration`
    FROM `od-trip` order by csn, `trip_start_date`, `trip_start_time`) as tbl
    INTO OUTFILE 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Output\\od-trip.csv'
    FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
    
select
'csn','bid','trip_start_date','trip_start_time','origin_mode','destination_mode','num_passengers','passenger_type','product_id','first_direction','first_route_taken','first_service_provider','origin','origin_service_agency','origin_lat','origin_lon','destination','destination_service_agency','destination_lat','destination_lon','destination_time','last_route_taken','last_direction','last_service_provider','last_mode','number_of_transfers','last_vehicle_id','last_trip_id','transfer_required','trip_start' UNION ALL
SELECT * from(
	SELECT  `csn`,`bid`,`trip_start_date`,`trip_start_time`,`origin_mode`,`destination_mode`,`num_passengers`,`passenger_type`,`product_id`,`first_direction`,`first_route_taken`,`first_service_provider`,`origin`,`origin_service_agency`,`origin_lat`,`origin_lon`,`destination`,`destination_service_agency`,`destination_lat`,`destination_lon`,`destination_time`,`last_route_taken`,`last_direction`,`last_service_provider`,`last_mode`,`number_of_transfers`,`last_vehicle_id`,`last_trip_id`,`transfer_required`,`trip_start`
    FROM `od-trip-nodestination` order by csn, `trip_start_date`, `trip_start_time`) as tbl
    INTO OUTFILE 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Output\\od-trip-nodestination.csv'
    FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'