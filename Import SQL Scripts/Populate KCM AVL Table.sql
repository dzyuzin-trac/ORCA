load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\KCM_AVL.csv'
into table `kcm-avl`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES
( @DAYCODE, @TRIP_ID, @PATTERN_ID, @PATTERN_QUALITY, @BLK, @RTE, @DIR, @SCH_ST_MIN, @OPD_DATE, @VEHICLE_ID, @STOP_ID, @STOP_SEQ, @STOP_NAME, @SCH_STOP_SEC, @ACT_STOP_ARR, 
  @SCH_STOP_TM, @ACT_STOP_TM, @DWELL_SEC, @DOORS_OPEN, @DOOR_OPEN_SEC, @APC_VEH, @ONS, @OFFS, @LOAD, @POINT_ROLE, @GPS_LONGITUDE, @GPS_LATITUDE) 
  set DAYCODE=@DAYCODE,
  TRIP_ID=nullif(@TRIP_ID,''),
  PATTERN_ID = nullif(@PATTERN_ID,''),
  PATTERN_QUALITY = nullif(@PATTERN_QUALITY,''),
  BLK = nullif(@BLK,''),
  RTE = nullif(@RTE,''),
  DIR = nullif(@DIR,''),
  SCH_ST_MIN = nullif(@SCH_ST_MIN,''),
  OPD_DATE = nullif(STR_TO_DATE(@OPD_DATE, '%d-%b-%y'),''),
  VEHICLE_ID = nullif(@VEHICLE_ID,''),
  STOP_ID = nullif(@STOP_ID,''),
  STOP_SEQ = nullif(@STOP_SEQ,''),
  STOP_NAME = nullif(@STOP_NAME,''),
  SCH_STOP_SEC = nullif(@SCH_STOP_SEC,''),
  ACT_STOP_ARR = nullif(@ACT_STOP_ARR,''),
  SCH_STOP_TM = nullif(@SCH_STOP_TM,''),
  ACT_STOP_TM = nullif(@ACT_STOP_TM,''),
  DWELL_SEC = nullif(@DWELL_SEC,''),
  DOORS_OPEN = nullif(@DOORS_OPEN,''),
  DOOR_OPEN_SEC = nullif(@DOOR_OPEN_SEC,''),
  APC_VEH = nullif(@APC_VEH,''),
  ONS = nullif(@ONS,''),
  OFFS = nullif(@OFFS,''),
  `LOAD` = nullif(@LOAD,''),
  POINT_ROLE = nullif(@POINT_ROLE,''),
  GPS_LONGITUDE = @GPS_LONGITUDE,
  GPS_LATITUDE = @GPS_LATITUDE;
  #GPS_LOCATION = POINT(IFNULL(@GPS_LONGITUDE, 0), IFNULL(@GPS_LATITUDE,0));