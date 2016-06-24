create table if not exists `ct-avl`(
	`ID`				INT unsigned AUTO_INCREMENT KEY,
	`VehicleID` 		MEDIUMINT unsigned,
    `StopID`			SMALLINT unsigned, 
    `Date`				DATE,
    `ArrivalTime`		TIME,
    `DepartureTime`	TIME,
    `Route`				SMALLINT unsigned, 
    `Direction`			VARCHAR(12),
    `ONs`				SMALLINT unsigned, 
    `OFFs`				SMALLINT unsigned, 
    `BalancedONs`		SMALLINT unsigned, 
    `BalancedOFFs`		SMALLINT unsigned, 
    `Load`				SMALLINT unsigned, 
    `GPS_LOCATION`		Point not null,

    INDEX (`VehicleID`),
    INDEX (`Date`),
    INDEX (`ArrivalTime`),
    INDEX (`DepartureTime`),
    INDEX (`Route`),
    INDEX (`Direction`),
    SPATIAL INDEX (`GPS_LOCATION`)
) ENGINE=MyISAM;