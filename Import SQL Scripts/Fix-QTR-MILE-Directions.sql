update `stops_qtr_mile_directional` set stop1_direction = "North" where stop1_agency="pt" and stop1_direction = "NORTH";
update `stops_qtr_mile_directional` set stop1_direction = "South" where stop1_agency="pt" and stop1_direction = "SOUTH";

update `stops_qtr_mile_directional` set stop2_direction = "North" where stop2_agency="pt" and stop2_direction = "NORTH";
update `stops_qtr_mile_directional` set stop2_direction = "South" where stop2_agency="pt" and stop2_direction = "SOUTH";

update `stops_qtr_mile_directional` set stop1_direction = "North" where stop1_agency="kcm" and stop1_direction = "N";
update `stops_qtr_mile_directional` set stop1_direction = "South" where stop1_agency="kcm" and stop1_direction = "S";
update `stops_qtr_mile_directional` set stop1_direction = "East" where stop1_agency="kcm" and stop1_direction = "E";
update `stops_qtr_mile_directional` set stop1_direction = "West" where stop1_agency="kcm" and stop1_direction = "W";

update `stops_qtr_mile_directional` set stop2_direction = "North" where stop2_agency="kcm" and stop2_direction = "N";
update `stops_qtr_mile_directional` set stop2_direction = "South" where stop2_agency="kcm" and stop2_direction = "S";
update `stops_qtr_mile_directional` set stop2_direction = "East" where stop2_agency="kcm" and stop2_direction = "E";
update `stops_qtr_mile_directional` set stop2_direction = "West" where stop2_agency="kcm" and stop2_direction = "W";
