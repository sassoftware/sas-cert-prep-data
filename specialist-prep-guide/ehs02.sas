work.mycars;
	set sashelp.cars;
	AvgMPG=mean(mpg_city, mpg_highway);
run;
title "Cars with Average MPG Over 40";
proc print data=work.mycars
	var make model type avgmpg;
	where AvgMPG>40;
run;
title "Average MPG by Car Type";
proc means data=work.mycars avg min max maxdec=1;
	var avgmpg;
	class type;
run;
title;
