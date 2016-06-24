load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\Secure\\ORCA Boardings Ad Hoc Table 20150214-20150220.txt'
into table `orca-service-key`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES
( @Access_Id, @Apportioned_Value, @Business_Date, @Ceffv, @Csn, @Mode_Description_From, @Mode_Description_To, @Mode_Id_From, @Mode_Id_To, @Number_Of_Passengers, @Passenger_Type_Desc, 
  @Passenger_Type_Id, @Product_Desc, @Product_Id, @Product_Issuer_Id, @Route_Direction_From, @Route_Direction_To, @Route_Id_From, @Route_Id_To, @Service_Participant_Id_From, 
  @Service_Participant_Id_To, @Service_Participant_Name_From, @Service_Participant_Name_To, @Source_Participant_Id_From, @Source_Participant_Id_To, @Source_Participant_Name_From, 
  @Source_Participant_Name_To, @Transaction_Value, @Transit_Operator_From, @Transit_Operator_To, @Trip_Id_To, @Trip_Start, @Twin_Pair_State, @Txn_Date, @Vehicle_Id ) 
  
  set   
  ID				= @Service_Participant_Id_To,
  service			= @Service_Participant_Name_To;


load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\Secure\\ORCA Boardings Ad Hoc Table 20150214-20150220.txt'
into table `orca-product-key`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES
( @Access_Id, @Apportioned_Value, @Business_Date, @Ceffv, @Csn, @Mode_Description_From, @Mode_Description_To, @Mode_Id_From, @Mode_Id_To, @Number_Of_Passengers, @Passenger_Type_Desc, 
  @Passenger_Type_Id, @Product_Desc, @Product_Id, @Product_Issuer_Id, @Route_Direction_From, @Route_Direction_To, @Route_Id_From, @Route_Id_To, @Service_Participant_Id_From, 
  @Service_Participant_Id_To, @Service_Participant_Name_From, @Service_Participant_Name_To, @Source_Participant_Id_From, @Source_Participant_Id_To, @Source_Participant_Name_From, 
  @Source_Participant_Name_To, @Transaction_Value, @Transit_Operator_From, @Transit_Operator_To, @Trip_Id_To, @Trip_Start, @Twin_Pair_State, @Txn_Date, @Vehicle_Id ) 
  
  set   
  ID				= @Product_Id,
  product			= @Product_Desc;
  
load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\Secure\\ORCA Boardings Ad Hoc Table 20150214-20150220.txt'
into table `orca-mode-key`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES
( @Access_Id, @Apportioned_Value, @Business_Date, @Ceffv, @Csn, @Mode_Description_From, @Mode_Description_To, @Mode_Id_From, @Mode_Id_To, @Number_Of_Passengers, @Passenger_Type_Desc, 
  @Passenger_Type_Id, @Product_Desc, @Product_Id, @Product_Issuer_Id, @Route_Direction_From, @Route_Direction_To, @Route_Id_From, @Route_Id_To, @Service_Participant_Id_From, 
  @Service_Participant_Id_To, @Service_Participant_Name_From, @Service_Participant_Name_To, @Source_Participant_Id_From, @Source_Participant_Id_To, @Source_Participant_Name_From, 
  @Source_Participant_Name_To, @Transaction_Value, @Transit_Operator_From, @Transit_Operator_To, @Trip_Id_To, @Trip_Start, @Twin_Pair_State, @Txn_Date, @Vehicle_Id ) 
  
  set   
  ID				= @Mode_Id_To,
  mode				= @Mode_Description_To;
  
  
  
load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\Secure\\ORCA Boardings Ad Hoc Table 20150214-20150220.txt'
into table `orca-passenger-type-key`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES
( @Access_Id, @Apportioned_Value, @Business_Date, @Ceffv, @Csn, @Mode_Description_From, @Mode_Description_To, @Mode_Id_From, @Mode_Id_To, @Number_Of_Passengers, @Passenger_Type_Desc, 
  @Passenger_Type_Id, @Product_Desc, @Product_Id, @Product_Issuer_Id, @Route_Direction_From, @Route_Direction_To, @Route_Id_From, @Route_Id_To, @Service_Participant_Id_From, 
  @Service_Participant_Id_To, @Service_Participant_Name_From, @Service_Participant_Name_To, @Source_Participant_Id_From, @Source_Participant_Id_To, @Source_Participant_Name_From, 
  @Source_Participant_Name_To, @Transaction_Value, @Transit_Operator_From, @Transit_Operator_To, @Trip_Id_To, @Trip_Start, @Twin_Pair_State, @Txn_Date, @Vehicle_Id ) 
  
  set   
  ID				= @Passenger_Type_Id,
  `passenger-type`	= @Passenger_Type_Desc;

