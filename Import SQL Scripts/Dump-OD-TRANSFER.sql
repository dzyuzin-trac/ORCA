select
'id',/*'csn','bid',*/'transfer_boarding_date','transfer_boarding_time','origin_mode','destination_mode','num_passengers','passenger_type','product_id','first_direction','first_route_taken','first_service_provider','first_trip_id','exit_stop_id','exit_time','exit_lat','exit_lon','transfer_boarding_stop_id','transfer_stop_lat','transfer_stop_lon','transfer_route_taken','transfer_direction','transfer_newservice_provider','number_of_transfers','transfer_to_vehicle_id','last_trip_id'
UNION ALL
SELECT * from(
	SELECT  `id`,/*`csn`,`bid`,*/ `transfer_boarding_date`,`transfer_boarding_time`,`origin_mode`,`destination_mode`,`num_passengers`,`passenger_type`,`product_id`,`first_direction`,`first_route_taken`,`first_service_provider`,`first_trip_id`,`exit_stop_id`,`exit_time`,`exit_lat`,`exit_lon`,`transfer_boarding_stop_id`,`transfer_stop_lat`,`transfer_stop_lon`,`transfer_route_taken`,`transfer_direction`,`transfer_newservice_provider`,`number_of_transfers`,`transfer_to_vehicle_id`,`last_trip_id`
    FROM `od-transfer` order by csn, `transfer_boarding_date`, `transfer_boarding_time`) as tbl
    INTO OUTFILE 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Output\\od-transfer-nocsnbid.csv'
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n'