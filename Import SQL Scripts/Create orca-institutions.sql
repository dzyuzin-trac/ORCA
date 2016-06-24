create table if not exists `orca-institution`(
	`ID`				INT unsigned AUTO_INCREMENT KEY,
	`csn` 				VARCHAR(32),
    `institution`		VARCHAR(32), 
    INDEX (`csn`),
    INDEX (`institution`)
) ENGINE=MyISAM;

load data local infile 'C:\\Users\\dzyuzin\\Desktop\\WORK\\ORCA\\Data\\orca-csn-institution.csv'
into table `orca-institution`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
  LINES TERMINATED BY '\r\n'
  IGNORE 1 LINES
( @institution, @csn )
  set   
  csn 				= OLD_PASSWORD(@csn),
  institution 		= OLD_PASSWORD(@institution);
