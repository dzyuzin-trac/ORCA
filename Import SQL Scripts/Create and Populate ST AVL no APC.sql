create table if not exists `st-avl-noapc`(
	`ID`					INT unsigned AUTO_INCREMENT KEY,
	`vehicle_id` 			SMALLINT unsigned,
    `date`					DATE, 
    `time`					TIME,
    `GPS_LOCATION`			POINT NOT NULL,

    INDEX (`vehicle_id`),
    INDEX (`date`),
    INDEX (`time`),
    SPATIAL INDEX (`GPS_LOCATION`)
) ENGINE=MyISAM;

load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\VehcilePositionLogNoAPC_021515_041415.csv'
into table `st-avl-noapc`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES
( @vehicle_position_date_time, @vehicle_id, @loc_y, @loc_x, @heading, @average_speed, @Distance, @Month, @DayNumberMonth, @HourGroup, @Minute, @DOW, @AvgHeading, @Time) 
    
  set vehicle_id=@vehicle_id,
  date=nullif(STR_TO_DATE(@vehicle_position_date_time, '%m/%d/%Y %h:%i:%s%p'),''),
  time=nullif(STR_TO_DATE(@vehicle_position_date_time, '%m/%d/%Y %h:%i:%s%p'),''),
  GPS_LOCATION = POINT(IFNULL(@loc_x, 0), IFNULL(@loc_y,0));