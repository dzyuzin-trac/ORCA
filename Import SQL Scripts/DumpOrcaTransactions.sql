#select
#'ID','csn','bid','date','time','mode_id_from','mode_id_to','num_passengers','passenger_type','product_id','direction_from','direction_to','route_id_from','route_id_to','service_id_from','service_id_to','vehicle_id','trip_id_to','trip_start','stop_id','stop_error', 'stop_location_x', 'stop_location_y'
#UNION ALL
#SELECT `ID`,`csn`,`bid`,`date`,`time`,`mode_id_from`,`mode_id_to`,`num_passengers`,`passenger_type`,`product_id`,`direction_from`,`direction_to`,`route_id_from`,`route_id_to`,`service_id_from`,`service_id_to`,`vehicle_id`,`trip_id_to`,`trip_start`,`stop_id`,`stop_error`, x(stop_location) as stop_location_x, y(stop_location) as stop_location_y
#    FROM `orca-transactions`
#    INTO OUTFILE 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Output\\orca-transactions.csv'
#    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n';
    
    
#NO CSN/BID
select
'date','time','mode_id_from','mode_id_to','num_passengers','passenger_type','product_id','direction_from','direction_to','route_id_from','route_id_to','service_id_from','service_id_to','vehicle_id','trip_id_to','trip_start','stop_id','stop_error', 'stop_location_x', 'stop_location_y'
UNION ALL
SELECT `date`,`time`,`mode_id_from`,`mode_id_to`,`num_passengers`,`passenger_type`,`product_id`,`direction_from`,`direction_to`,`route_id_from`,`route_id_to`,`service_id_from`,`service_id_to`,`vehicle_id`,`trip_id_to`,`trip_start`,`stop_id`,`stop_error`, x(stop_location) as stop_location_x, y(stop_location) as stop_location_y
    FROM `orca-transactions`
    INTO OUTFILE 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Output\\orca-transactions-no-csn-id-bid.csv'
    FIELDS TERMINATED BY ','  LINES TERMINATED BY '\n' #OPTIONALLY ENCLOSED BY '"'  < removed because it wasn't optionally, everything was enclosed