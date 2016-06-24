  
  CREATE TABLE if not exists `subsidy` (
  `ID` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `InstitutionID` VARCHAR(45) NULL COMMENT '',
  `CompName` VARCHAR(200) NULL COMMENT '',
  `TransitPass` INT DEFAULT 0 NULL COMMENT '',
  `Subsidy` INT NULL COMMENT '',
  `SubsidySize` INT NULL COMMENT '',
  PRIMARY KEY (`ID`)  COMMENT '',
  INDEX `InstitutionID` (`InstitutionID` ASC)  COMMENT '');
  
  load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\Subsidy.csv'
into table `subsidy`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n' ignore 2 lines
( @CompName, @TransitPass, @InstitutionID, @Subsidy, @SubsidySize) 
  
  set   
  CompName		= @CompName,
  TransitPass		= if(@TransitPass = "", 0, @TransitPass),
  InstitutionID		= old_password(@InstitutionID),
  Subsidy		= @Subsidy,
  SubsidySize		= @SubsidySize;