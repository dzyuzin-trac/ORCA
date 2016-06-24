#load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\PT_Rtes1_504_AVL&APC_0217_0414.csv'
#load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\PT_Weekdays_Rtes1_99_AVL&APC_0217_0414.csv'
#load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\PT_Weekdays_Rtes100_501_AVL&APC_0217_0414.csv'
#load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\PT_Weekends_Rtes1_504_AVL&APC_0217_0414.csv'
load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\ST_from_PT_AllDays_Rtes560_596_AVL&APC_0217_0414.csv'
into table `pt-avl`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES
( @current_route_id, @TransitDateValue, @apc_date_time, @block_id, @direction_description, @StartTripTime_Trip, @ons, @offs, @veh_lat, @veh_long, @bs_sname, @bs_lname, 
	@Month, @ext_trip_id, @Duplicate, @description, @sched_version, @TripCount, @import_error, @import_trip_error, @TripStartHour) 
    
  set current_route_id=@current_route_id,
  TransitDateValue=nullif(STR_TO_DATE(@TransitDateValue, '%m/%d/%Y'),''),
  apc_date_time=nullif(STR_TO_DATE(@apc_date_time, '%m/%d/%Y %h:%i:%s%p'),''),
  block_id = @block_id,
  direction_description = nullif(@direction_description,''),
  StartTripTime_Trip = nullif(STR_TO_DATE(@StartTripTime_Trip, '%k:%i'),''),
  ons = @ons,
  offs = @offs,
  GPS_LOCATION = POINT(IFNULL(@veh_lat, 0), IFNULL(@veh_long,0)),
  bs_sname = @bs_sname,
  bs_lname = @bs_lname,
  Month = @Month,
  ext_trip_id = @ext_trip_id,
  Duplicate = @Duplicate,
  description = nullif(@description,''),
  sched_version = @sched_version,
  TripCount	= @TripCount,
  import_error = @import_error,
  import_trip_error = @import_trip_error,
  TripStartHour = @TripStartHour;