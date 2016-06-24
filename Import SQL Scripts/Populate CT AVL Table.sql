#load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\CT_Bus_AVL_APC_Data_By_StopFEB.csv'
#load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\CT_Bus_AVL_APC_Data_By_StopMAR1.csv'
#load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\CT_Bus_AVL_APC_Data_By_StopMAR2.csv'
load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\CT_Bus_AVL_APC_Data_By_StopAPR.csv'
into table `ct-avl`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES
( @VehicleID, @StopID, @Date, @ArrivalTime, @DepartureTime, @Route, @Direction, @ONs, @OFFs, @BalancedONs, @BalancedOFFs, @Load, @Lat, @Long) 
    
  set VehicleID=@VehicleID,
  StopID = @StopID,
  Date = nullif(STR_TO_DATE(@Date, '%e-%b-%y'),''),
  ArrivalTime=nullif(sec_to_time(@ArrivalTime),''),
  DepartureTime=nullif(sec_to_time(@DepartureTime),''),
  Route = @Route,
  Direction = @Direction,
  ONs = @ONs,
  OFFs = @OFFS,
  BalancedONs = @BalancedONs,
  BalancedOFFs = @BalancedOFFs,
  `Load` = @Load,
  GPS_LOCATION = POINT(IFNULL(@Lat, 0), IFNULL(@Long,0));