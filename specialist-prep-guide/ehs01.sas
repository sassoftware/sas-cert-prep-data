/*Drop the variables Total and EquipCost*/
data work.aprilbills drop=Total, EquipCost;
	set clinic.aprbills;
/*If the Days variable is greater than 7 then Discount is Roomcharge multiplied by 20%
	if the days variable is less than or equal to 7 then discount is set to 0*/
	if Days > 7 then Discount=(RoomCharge)*.20 else 0;
/*Create New Variable TotalDue and it should be Total minus Discount. There should not be a 
	missing value for TotalDue*/
	TotalDue=Total-Discount;
/*Format DateIn and DateOut to show as 05APR2009*/
	format DateIn DateOut date9;
/*Format RoomRate RoomCharge Discount TotalDue to show as $100.00*/
	format RoomRate RoomCharge Discount TotalDue dollar10;
proc print data=work.aprilbills;

