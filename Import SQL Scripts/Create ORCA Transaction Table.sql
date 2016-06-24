create table if not exists `orca-mode-key`(
	`ID`				INT unsigned AUTO_INCREMENT KEY,
	`mode` 			VARCHAR(32),
    INDEX (`mode`)
) ENGINE=InnoDB;

create table if not exists `orca-passenger-type-key`(
	`ID`				INT unsigned AUTO_INCREMENT KEY,
	`passenger-type` 	VARCHAR(32),
    INDEX (`passenger-type`)
) ENGINE=InnoDB;

create table if not exists `orca-product-key`(
	`ID`				INT unsigned AUTO_INCREMENT KEY,
	`product` 	VARCHAR(64),
    INDEX (`product`)
) ENGINE=InnoDB;

create table if not exists `orca-service-key`(
	`ID`				INT unsigned AUTO_INCREMENT KEY,
	`service` 	VARCHAR(32),
    INDEX (`service`)
) ENGINE=InnoDB;

create table if not exists `orca-transactions`(
	`ID`				INT unsigned AUTO_INCREMENT KEY,
	`csn` 				VARCHAR(32),
	`bid` 				VARCHAR(32),
    `date` 				DATE,
    `time` 				TIME,
    `mode_id_from`		INT UNSIGNED,
    `mode_id_to`		INT UNSIGNED,
	`num_passengers`	SMALLINT UNSIGNED,
    `passenger_type`	INT UNSIGNED,
    `product_id`		INT UNSIGNED,
    `direction_from`	VARCHAR(16),
    `direction_to`		VARCHAR(16),
    `route_id_from`		VARCHAR(16),
    `route_id_to`		VARCHAR(16),
    `service_id_from`	INT UNSIGNED,
    `service_id_to`		INT UNSIGNED,
    `vehicle_id`		VARCHAR(16),
    `trip_id_to`		VARCHAR(16),
    `trip_start`		SMALLINT UNSIGNED,
    `stop_id`			VARCHAR(16) default '-1',
    `stop_location`		POINT NOT NULL,
    `stop_error`		SMALLINT default 0,
    INDEX (`Csn`),
    INDEX (`bid`),
    INDEX (`Date`),
    INDEX (`Time`),
    INDEX (`route_id_from`),
    INDEX (`route_id_to`),
    INDEX (`stop_id`),
    INDEX (`stop_error`),
    INDEX (`vehicle_id`)
	#SPATIAL INDEX (`stop_location`),
    
    #FOREIGN KEY (`mode_id_from`) REFERENCES `orca-mode-key`(`ID`),
    #FOREIGN KEY (`mode_id_to`) REFERENCES `orca-mode-key`(`ID`),
    
	#FOREIGN KEY (`passenger_type`) REFERENCES `orca-passenger-type-key`(`ID`),
    #FOREIGN KEY (`product_id`) REFERENCES `orca-product-key`(`ID`),
    
    #FOREIGN KEY (`service_id_from`) REFERENCES `orca-service-key`(`ID`),
    #FOREIGN KEY (`service_id_to`) REFERENCES `orca-service-key`(`ID`)
) ENGINE=InnoDB;

