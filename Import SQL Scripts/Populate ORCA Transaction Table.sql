load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\Secure\\ORCA Boardings Ad Hoc Table 20150411-20150417.txt'
into table `orca-transactions`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES
( @Access_Id, @Apportioned_Value, @Business_Date, @Ceffv, @Csn, @Mode_Description_From, @Mode_Description_To, @Mode_Id_From, @Mode_Id_To, @Number_Of_Passengers, @Passenger_Type_Desc, 
  @Passenger_Type_Id, @Product_Desc, @Product_Id, @Product_Issuer_Id, @Route_Direction_From, @Route_Direction_To, @Route_Id_From, @Route_Id_To, @Service_Participant_Id_From, 
  @Service_Participant_Id_To, @Service_Participant_Name_From, @Service_Participant_Name_To, @Source_Participant_Id_From, @Source_Participant_Id_To, @Source_Participant_Name_From, 
  @Source_Participant_Name_To, @Transaction_Value, @Transit_Operator_From, @Transit_Operator_To, @Trip_Id_To, @Trip_Start, @Twin_Pair_State, @Txn_Date, @Vehicle_Id ) 
  
  set   
  csn 				= OLD_PASSWORD(@Csn),
  date 				= nullif( date(STR_TO_DATE(@Txn_Date, '%m/%d/%Y %h:%i:%s %p')) , NULL),
  time 				= nullif( time(STR_TO_DATE(@Txn_Date, '%m/%d/%Y %h:%i:%s %p')) , NULL),
  mode_id_from 		= @Mode_Id_From,
  mode_id_to 		= @Mode_Id_To,
  num_passengers 	= @Number_Of_Passengers,
  passenger_type 	= @Passenger_Type_Id,
  product_id 		= @Product_Id,
  direction_from 	= @Route_Direction_From,
  direction_to 		= @Route_Direction_To,
  route_id_from 	= @Route_Id_From,
  route_id_to 		= @Route_Id_To,
  service_id_from	= @Service_Participant_Id_From,
  service_id_to		= @Service_Participant_Id_To,
  vehicle_id		= @Vehicle_Id,
  trip_id_to		= @Trip_Id_To,
  trip_start		= @Trip_Start,
  stop_id			= '-1',
  stop_location		= geomfromtext('POINT(0 0)'),
  stop_error		= 0;