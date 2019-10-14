/*******************************************************************\           
| Copyright (C) 2018 by SAS Institute Inc., Cary, NC, USA.          |           
|                                                                   |           
| SAS (R) is a registered trademark of SAS Institute Inc.           |           
|                                                                   |           
|This program creates practice raw data and Excel files for some of |
|the examples in the:                                               |
| - SAS Certification Prep Guide: Base Programming for SAS 9        |
|       															|
|                                                                   |
| Last updated: September 4, 2018                                   |
\*******************************************************************/  
/* If running individually, uncomment this line and make sure it points to your certification data location */
/*%let path=/folders/myfolders/cert;*/

%macro setdelim;
%global delim;
%if %index(&path,%str(/)) %then %let delim=%str(/);
%else %let delim=%str(\);
%mend;
%setdelim

libname cert "&path";

data CERT.ADMIT;
  infile datalines dsd truncover;
  input ID:$4. Name:$14. Sex:$1. Age:32. Date:32. Height:32. Weight:32. ActLevel:$4. Fee:7.2;
  format Fee 7.2;
datalines4;
2458,"Murray, W",M,27,1,72,168,HIGH,85.20
2462,"Almers, C",F,34,3,66,152,HIGH,124.80
2501,"Bonaventure, T",F,31,17,61,123,LOW,149.75
2523,"Johnson, R",F,43,31,63,137,MOD,149.75
2539,"LaMance, K",M,51,4,71,158,LOW,124.80
2544,"Jones, M",M,29,6,76,193,HIGH,124.80
2552,"Reberson, P",F,32,9,67,151,MOD,149.75
2555,"King, E",M,35,13,70,173,MOD,149.75
2563,"Pitts, D",M,34,22,73,154,LOW,124.80
2568,"Eberhardt, S",F,49,27,64,172,LOW,124.80
2571,"Nunnelly, A",F,44,19,66,140,HIGH,149.75
2572,"Oberon, M",F,28,17,62,118,LOW,85.20
2574,"Peterson, V",M,30,6,69,147,MOD,149.75
2575,"Quigley, M",F,40,8,69,163,HIGH,124.80
2578,"Cameron, L",M,47,5,72,173,MOD,124.80
2579,"Underwood, K",M,60,22,71,191,LOW,149.75
2584,"Takahashi, Y",F,43,29,65,123,MOD,124.80
2586,"Derber, B",M,25,23,75,188,HIGH,85.20
2588,"Ivan, H",F,22,20,63,139,LOW,85.20
2589,"Wilcox, E",F,41,16,67,141,HIGH,149.75
2595,"Warren, C",M,54,7,71,183,MOD,149.75
;;;;

data CERT.ADMITJUNE;
  infile datalines dsd truncover;
  input ID:$4. Name:$14. Sex:$1. Age:32. Date:MMDDYY8. Height:32. Weight:32. ActLevel:$4. Fee:6.2;
  format Date MMDDYY8. Fee 6.2;
datalines4;
2588,"Ivan, H",F,22,06/02/10,63,139,LOW,85.20
2586,"Derber, B",M,25,06/04/10,75,188,HIGH,85.20
2458,"Murray, W",M,27,06/05/10,72,168,HIGH,85.20
2572,"Oberon, M",F,28,06/05/10,62,118,LOW,85.20
2544,"Jones, M",M,29,06/07/10,76,193,HIGH,124.80
2574,"Peterson, V",M,30,06/08/10,69,147,MOD,149.75
2501,"Bonaventure, T",F,31,06/09/10,61,123,LOW,149.75
2552,"Reberson, P",F,32,06/10/10,67,151,MOD,149.75
2462,"Almers, C",F,34,06/12/10,66,152,HIGH,124.80
2563,"Pitts, D",M,34,06/14/10,73,154,LOW,124.80
2555,"King, E",M,35,06/14/10,70,173,MOD,149.75
2575,"Quigley, M",F,40,06/06/10,69,163,HIGH,124.80
2589,"Wilcox, E",F,41,06/17/10,67,141,HIGH,149.75
2523,"Johnson, R",F,43,06/17/10,63,137,MOD,149.75
2584,"Takahashi, Y",F,43,06/18/10,65,123,MOD,124.80
2571,"Nunnelly, A",F,44,06/19/10,66,140,HIGH,149.75
2578,"Cameron, L",M,47,06/20/10,72,173,MOD,124.80
2568,"Eberhardt, S",F,49,06/21/10,64,172,LOW,124.80
2539,"LaMance, K",M,51,06/22/10,71,158,LOW,124.80
2595,"Warren, C",M,54,06/15/10,71,183,MOD,149.75
2579,"Underwood, K",M,60,06/11/10,71,191,LOW,149.75
;;;;

data CERT.AGENCYEMP;
  infile datalines dsd truncover;
  input Agency:$28. ID:$4. LastName:$10. FirstName:$10. MiddleName:$7.;
datalines4;
"Adminstrative Support, Inc.",F274,CICHOCK,ELIZABETH,MARIE
"Adminstrative Support, Inc.",F101,BENINCASA,HANNAH,LEE
"OD Consulting, Inc.",F054,SHERE,BRIAN,THOMAS
New Time Temps Agency,F077,HODNOFF,RICHARD,LEE
;;;;

data CERT.AMOUNTS;
  infile datalines dsd truncover;
  input Name:$13. EmpID:32. Date:DATE9. Amount:32.;
  format Date DATE9.;
datalines4;
"ANKERTON, L.",11123,08OCT2016,92
"ANKERTON, L.",11123,15OCT2016,43
"DAVIS, R.",22298,04OCT2016,16
"MASTERS, T.",33351,13OCT2016,18
"MASTERS, T.",33351,,27
"THOMAS, A.",,21OCT2016,15
"WOLMER, B.",44483,,
;;;;

data CERT.APRBILLS;
  infile datalines dsd truncover;
  input LastName:$8. DateIn:32. DateOut:32. RoomRate:32. EquipCost:32. Days:32. RoomCharge:32. Total:32.;
datalines4;
Akron,21277,21282,175,298.4,5,875,1173.4
Brown,21284,21304,125,326.7,20,2500,2826.7
Carnes,21299,21302,125,174.2,3,375,549.24
Denison,21283,21285,175,87.41,2,350,437.41
Fields,21287,21295,175,378.9,8,1400,1778.9
Jamison,21288,21296,125,346.2,8,1000,1346.2
;;;;

data CERT.BEFORE;
  infile datalines dsd truncover;
  input Name:$30.;
datalines4;
Mrs. Millicent Garrett Fawcett
Miss Charlotte Despard
Mrs. Emmeline Pankhurst
Miss Sylvia Pankhurst
;;;;

data CERT.BOOKCASE;
  infile datalines dsd truncover;
  input Item:32. Finish:$11. Price:32. Stock:$3.;
datalines4;
1013,Ash,29.99,Yes
1014,Ash,14.99,Yes
1084,Cherry,49.99,Yes
1085,Cherry,44.99,Yes
1086,Cherry,49.99,No
1087,Cherry,44.99,No
1088,Cherry,54.99,No
1089,Cherry,59.99,Yes
1090,Cherry,64.99,Yes
1101,Teak,48.99,Yes
1102,Teak,44.99,Yes
1103,Teak,49.99,No
1104,Teak,54.99,No
1150,Matte-Black,19.99,Yes
1151,Matte-Black,24.99,Yes
1151,Matte-Black,34.99,Yes
1201,Walnut,69.99,Yes
1202,Walnut,59.99,Yes
1203,Walnut,49.99,Yes
;;;;

data CERT.CARS;
  infile datalines dsd truncover;
  input Age:32. Sex:32. Income:32. Color:$8.;
datalines4;
19,1,14000,Y
45,1,65000,G
62,2,35000,W
31,1,44000,Y
58,2,83000,W
68,1,44000,B
17,2,15000,G
70,2,33000,B
;;;;

data CERT.CHOICES;
  infile datalines dsd truncover;
  input Day:32. Flavor:$11.;
datalines4;
1,CHOCOLATE
1,VANILLA
1,RASPBERRY
2,VANILLA
2,PEACH
3,CHOCOLATE
4,RASPBERRY
4,PEACH
4,CHOCOLATE
5,STRAWBERRY
5,VANILLA
5,CHOCOLATE
;;;;

data CERT.CLASS;
  infile datalines dsd truncover;
  input Name:$8. Score1:32. Score2:32. Score3:32. Homework:32.;
datalines4;
LINDA,53,60,66,42
DEREK,72,64,56,32
KATHY,98,82,100,48
MICHAEL,80,55,95,50
;;;;

data CERT.CLIENTS;
  infile datalines dsd truncover;
  input Name:$13. EmpID:32.;
datalines4;
"ANKERTON, L.",11123
"DAVIS, R.",22298
"MASTERS, T.",33351
"WOLMER, B.",44483
;;;;

data CERT.CLTRIALS;
  infile datalines dsd truncover;
  input TestDate:DATE9. Name:$13. Sex:$2. Placebo:$3. Cholesterol:32. Triglyc:32. Uric:32.;
  format TestDate DATE9.;
datalines4;
09AUG2000,"Johnson, R",F,YES,200,180,3.7
01AUG2000,"LaMance, K",M,YES,250,230,5.1
09AUG2000,"Eberhardt, S",F,NO,244,320,4.6
22MAY2000,"Nunnelly, A",F,YES,210,300,4
22MAY2000,"Quigley, M",F,NO,192,139,6.2
22MAY2000,"Cameron, L",M,YES,198,150,4.3
22MAY2000,"Underwood, K",M,NO,159,110,4.9
;;;;

data CERT.CREDIT;
  infile datalines dsd truncover;
  input Account:$4. Name:$17. Type:$1. Transaction:$6.;
datalines4;
1118,ART CONTUCK,D,57.69
2287,MICHAEL WINSTONE,D,145.89
6201,MARY WATERS,C,45.00
7821,MICHELLE STANTON,A,304.45
6621,WALTER LUND,C,234.76
1086,KATHERINE MORRY,A,64.98
0556,LEE McDONALD,D,70.82
7821,ELIZABETH WESTIN,C,188.23
0265,JEFFREY DONALDSON,C,78.90
1010,MARTIN LYNN,D,150.55
;;;;

data CERT.DATES;
  infile datalines dsd truncover;
  input year:32. month:32. day:32.;
datalines4;
2018,1,22
2018,2,9
2018,3,5
2018,4,27
2018,5,10
2018,6,6
2018,7,23
2018,8,11
2018,9,3
2018,10,5
2018,11,23
2018,12,13
;;;;

data CERT.DEMOG;
 input ID $1-4 Age 6-7 Sex $9-10 @12 Date mmddyy10.;
 format Date mmddyy10.;
 datalines;
A001 21 M 05/22/07
A002 32 M 06/15/06
A003 24 F 08/17/07
A004 .    01/27/06
A005 44 F 02/24/05
A007 39 M 11/11/05
;

;;;;

data CERT.DIABETES;
  infile datalines dsd truncover;
  input ID:32. Sex:$1. Age:32. Height:32. Weight:32. Pulse:32. FastGluc:32. PostGluc:32.;
datalines4;
2304,F,16,61,102,100,568,625
1128,M,43,71,218,76,156,208
4425,F,48,66,162,80,244,322
1387,F,57,64,142,70,177,206
9012,F,39,63,157,68,257,318
6312,M,52,72,240,77,362,413
5438,F,42,62,168,83,247,304
3788,M,38,73,234,71,486,544
9125,F,56,64,159,70,166,215
3438,M,15,66,140,67,492,547
1274,F,50,65,153,70,193,271
3347,M,53,70,193,78,271,313
2486,F,63,65,157,70,152,224
1129,F,48,61,137,69,267,319
9723,M,52,75,219,65,348,403
8653,M,49,68,185,79,259,311
4451,M,54,71,196,81,373,431
3279,M,40,70,213,82,447,504
4759,F,60,68,164,71,155,215
6488,F,59,64,154,75,362,409
;;;;

data CERT.DONORS1;
  infile datalines dsd truncover;
  input ID:32. Type:$2. Units:32.;
datalines4;
2304,O,16
1129,A,48
1129,A,50
1129,A,57
2486,B,63
;;;;

data CERT.DONORS2;
  infile datalines dsd truncover;
  input ID:32. Code:32. Unit:32.;
datalines4;
6488,65,27
1129,63,32
5438,62,39
2304,61,45
1387,64,67
;;;;
data cert.empdata;
   input EmpID $1-5 Dept $7-24 Country $26-29 Salary 30-34 @36 Date mmddyy10.;
   format Date mmddyy10.;
datalines;
E1024 FLIGHT OPERATIONS  USA 25000 03/11/2002
E1938 FINANCE & IT       USA 27000 12/19/2003
E0282 HUMAN RESOUCES     USA 36000 01/13/2009
E1192 FLIGHT OPERATIONS  USA 30000 02/28/2008
E0283 SALES & MARKETING  USA 33000 07/13/2004
E9228 FLIGHT OPERATIONS  USA 33000 07/12/2004
E3938 SALES & MARKETING  USA 29500 02/28/2009
E0293 FINANCE & IT       BE  79000 08/14/2002
E1129 HUMAN RESOURCES    BE  29000 03/13/2002
E8102 SALES & MARKETING  BE  39000 04/18/2008
E2208 AIRPORT OPERATIONS BE  34000 11/17/2005
E3009 FLIGHT OPERATIONS  BE  37000 12/10/2004
E9382 FINANCE & IT       CA  45000 11/23/2007
E8273 FINANCE & IT       CA  50000 05/29/2008
E0292 SALES & MARKETING  CA  85000 08/19/2008
E8292 SALES & MARKETING  CA  35000 02/20/2005
E1374 AIRPORT OPERATIONS DK  19000 10/16/2009
E3577 FINANCE & IT       DK  36000 10/28/2008
E3991 FINANCE & IT       DK  67000 09/15/2007
;;;;
data cert.empdatu;
   input EmpID $1-5 Dept $7-24 Country $25-28 Salary 29-34 @36 Date mmddyy10.;
   format Date mmddyy10.;
datalines;
E2275 FLIGHT OPERATIONS USA 19950 03/27/2004
E0021 FINANCE & IT      USA 45150 04/09/2003
E0028 FINANCE & IT      DE  39900 04/05/2003
;;;;
data cert.empdatu2;
input EmpID $1-5 Dept $7-24 Country $25-28 Salary 29-34 @36 Date mmddyy10.;
   format Date mmddyy10.;
datalines;
E2002 FINANCE & IT       USA 28350 12/19/2003
E2005 AIRPORT OPERATIONS DK  21950 12/19/2001
E2009 FINANCE & IT       USA 35700 01/26/2007
;;;;
data CERT.FINANCE;
  infile datalines dsd truncover;
  input SSN:$11. Name:$12. Salary:32. Date:DATE7.;
  format Date DATE7.;
datalines4;
029-46-9261,Rudelich,35000,02JAN17
074-53-9892,Vincent,35000,02JAN17
228-88-9649,Benito,28000,16JAN17
442-21-8075,Sirignano,5000,06FEB17
446-93-2122,Harbinger,33900,06FEB17
776-84-5391,Phillipon,29750,06JUN16
929-75-0218,Gunter,27500,06JUN16
;;;;

data CERT.FITNESS;
  infile datalines dsd truncover;
  input FirstName:$10. LastName:$10. Gender:$7. Age:32. Weight:32. Group:32.;
datalines4;
Sarah,Edwards,Female,28,198,2
Mike,Elliott,Male,26,165,1
Sophia,Kelley,Female,25,156,1
Ted,Turner,Male,19,201,2
Adison,Hunt,Male,30,299,3
Gianna,Payne,Female,37,205,2
Olivia,Harper,Female,37,233,2
Amy,Rogers,Female,31,187,1
Anna,Brown,Female,39,270,3
Reid,Mitchell,Male,40,168,1
Olivia,Tucker,Female,50,207,2
Abigail,Wright,Female,47,147,1
Robert,Smith,Male,40,301,3
Tara,Mitchell,Female,50,275,3
Naomi,Clark,Female,42,213,2
Nicholas,Hamilton,Male,60,185,1
Elise,Gray,Female,51,174,1
Wilson,Kelly,Male,53,177,1
Harold,Kelley,Male,60,198,2
Maximilian,Cunningham,Male,56,163,1
James,Ryan,Male,66,197,2
Adrian,Henderson,Male,60,251,3
Kirsten,Carter,Female,66,134,1
April,Martin,Female,64,142,1
Vincent,Crawford,Male,69,185,1
;;;;

data CERT.FURNTURE;
  infile datalines dsd truncover;
  input StockNum:$3. Finish:$5. Style:$8. Item:$5. Price:32.;
datalines4;
310,oak,pedestal,table,229.99
311,maple,pedestal,table,369.99
312,brass,floor,lamp,79.99
313,glass,table,lamp,59.99
314,oak,rocking,chair,153.99
315,oak,pedestal,table,178.99
316,glass,table,lamp,49.99
317,maple,pedestal,table,169.99
318,maple,rocking,chair,199.99
;;;;

data CERT.HEALTH;
  infile datalines dsd truncover;
  input IDNum:32. Age:32. Height:32. Weight:32.;
datalines4;
1025,58,64,148
6983,27,68,159
6726,38,60,130
7258,34,62,198
2874,43,67,180
;;;;

data CERT.HEART;
  infile datalines dsd truncover;
  input Patient:$3. Sex:32. Survive:$4. Shock:$8. Arterial:32. Heart:32. Cardiac:32. Urinary:32.;
datalines4;
203,1,SURV,NONSHOCK,88,95,66,110
54,1,DIED,HYPOVOL,83,183,95,0
664,2,SURV,CARDIO,72,111,332,12
210,2,DIED,BACTER,74,97,369,0
101,2,DIED,NEURO,80,130,291,0
102,2,SURV,OTHER,87,107,471,65
529,1,DIED,CARDIO,103,106,217,15
524,2,DIED,CARDIO,145,99,156,10
426,1,SURV,OTHER,68,77,410,75
509,2,SURV,OTHER,79,84,256,90
742,1,DIED,HYPOVOL,100,54,135,0
609,2,DIED,NONSHOCK,93,101,260,90
318,2,DIED,OTHER,72,81,410,405
412,1,SURV,BACTER,61,87,296,44
601,1,DIED,BACTER,84,101,260,377
402,1,SURV,CARDIO,88,137,312,75
98,2,SURV,CARDIO,84,87,260,377
4,1,SURV,HYPOVOL,81,149,406,200
50,2,SURV,HYPOVOL,72,111,332,12
2,2,DIED,OTHER,101,114,424,97
;;;;

data CERT.INSURE;
  infile datalines dsd truncover;
  input ID:$4. Name:$14. Policy:$5. Company:$11. PctInsured:32. Total:32. BalanceDue:6.2;
  format BalanceDue 6.2;
datalines4;
2458,"Murray, W",32668,MUTUALITY,100,98.64,0.00
2462,"Almers, C",95824,RELIABLE,80,780.23,156.05
2501,"Bonaventure, T",87795,A&R,80,47.38,9.48
2523,"Johnson, R",39022,ACME,50,122.07,61.04
2539,"LaMance, K",63265,PARNASSUS,50,87.35,43.68
2544,"Jones, M",92478,ESSENTIAL,80,262.08,52.42
2552,"Reberson, P",25530,USA INC.,60,518.53,207.41
2555,"King, E",18744,ACME,80,135.97,27.19
2563,"Pitts, D",60976,HOMELIFE,80,1554.12,310.82
2568,"Eberhardt, S",81589,RURITAN,50,346.33,173.17
2571,"Nunnelly, A",99120,EMPLOYERS,100,583.55,0.00
2572,"Oberon, M",44544,ACME,100,4537.77,0.00
2574,"Peterson, V",75986,FRED SMYTHE,60,569.99,228.00
2575,"Quigley, M",97048,RELIABLE,50,198.01,99.01
2578,"Cameron, L",42351,COVINGTON,50,222.82,111.41
2579,"Underwood, K",14592,ESSENTIAL,100,541.64,0.00
2584,"Takahashi, Y",54219,FRED SMYTHE,60,466.46,186.58
2586,"Derber, B",74653,RELIABLE,60,590.28,236.11
2588,"Ivan, H",83809,HOMELIFE,100,474.5,0.00
2589,"Wilcox, E",94034,ACME,60,530.49,212.20
2595,"Warren, C",20347,RELIABLE,60,411.11,164.44
;;;;

data CERT.INVENT;
  infile datalines dsd truncover;
  input Item:$13. IDnum:$5. InStock:32. BackOrd:32. CostPerUnit:32.;
datalines4;
Bird Feeder,LG088,3,20,5
6 Glass Mugs,SB082,6,12,1.5
Glass Tray,BQ049,12,6,2.5
Padded Hangrs,MN256,15,6,2
Jewelry Box,AJ498,23,0,6.5
Red Apron,AQ072,9,12,1
Crystal Vase,AQ672,27,0,7
Picnic Basket,LS930,21,0,3.5
Brass Clock,AN910,2,10,11.5
;;;;
data cert.jan18temp;
	input Day HighTemp AvgHighTemp LowTemp AvgLowTemp;
datalines;
21185 26 44 13 29
21186 26 43 13 29
21187 35 43 13 29
21188 27 43 16 29
21189 21 43 13 29
21190 21 43 11 29
21191 23 43  8 29
21192 39 43 19 29
21193 51 43 30 29
21194 43 43 27 29
21195 62 43 38 29
21196 64 43 57 28
21197 62 43 21 28
21198 28 43 17 28
21199 32 43 18 28
21200 43 43 30 28
21201 37 43 20 28
21202 47 43 19 28
21203 51 43 25 28
21204 63 43 28 28
21205 61 43 32 28
21206 65 47 43 28
21207 68 44 47 28 
21208 48 35 44 29
21209 42 44 31 29
21210 50 44 28 29
21211 63 44 38 29
21212 57 44 47 29
21213 48 44 41 29
21214 41 44 24 29
21215 41 44 21 29
;;;;
data CERT.LAGUARDIA;
  infile datalines dsd truncover;
  input Flight:$3. Date:DATE7. Depart:TIME5. Orig:$3. Dest:$3. Boarded:32. Transferred:32. Deplaned:32. Revenue:32.;
  format Date DATE7. Depart TIME5.;
datalines4;
219,04MAR12,9:31,LGA,LON,232,18,250,189065
219,05MAR12,9:31,LGA,LON,160,4,167,197456
219,06MAR12,9:31,LGA,LON,163,14,183,162343
219,07MAR12,9:31,LGA,LON,241,9,250,134520
219,08MAR12,9:31,LGA,LON,183,11,197,106753
219,09MAR12,9:31,LGA,LON,211,18,235,122766
219,10MAR12,9:31,LGA,LON,167,7,181,198744
271,04MAR12,11:40,LGA,PAR,146,8,163,156804
271,05MAR12,12:19,LGA,PAR,177,15,227,190098
271,07MAR12,9:31,LGA,PAR,155,18,172,166470
271,08MAR12,12:19,LGA,PAR,152,7,187,163248
271,09MAR12,13:17,LGA,PAR,159,15,191,170766
271,10MAR12,11:40,LGA,PAR,182,9,153,195468
271,03MAR12,13:17,LGA,PAR,147,29,183,123456
271,04MAR12,13:17,LGA,PAR,146,13,163,125632
271,05MAR12,13:17,LGA,PAR,177,22,203,128972
271,07MAR12,13:17,LGA,PAR,155,21,180,153423
271,08MAR12,13:17,LGA,PAR,152,20,176,133345
271,09MAR12,13:17,LGA,PAR,159,18,182,126543
271,10MAR12,13:17,LGA,PAR,182,9,198,134976
387,04MAR12,11:40,LGA,CPH,81,21,103,196540
387,05MAR12,11:40,LGA,CPH,142,8,152,134561
387,07MAR12,11:40,LGA,CPH,131,5,142,135632
387,08MAR12,11:40,LGA,CPH,150,9,162,128564
387,09MAR12,11:40,LGA,CPH,128,14,145,134523
387,10MAR12,11:40,LGA,CPH,154,18,177,109885
622,03MAR12,12:19,LGA,FRA,180,16,200,187636
622,04MAR12,12:19,LGA,FRA,137,14,155,165456
622,05MAR12,12:19,LGA,FRA,185,11,199,125436
622,07MAR12,12:19,LGA,FRA,210,22,237,107865
622,08MAR12,12:19,LGA,FRA,176,5,187,178543
622,09MAR12,12:19,LGA,FRA,173,11,189,100987
622,10MAR12,12:19,LGA,FRA,129,12,147,134459
821,04MAR12,9:31,LGA,LON,167,17,222,150634
821,06MAR12,14:56,LGA,LON,167,13,222,150634
821,07MAR12,13:17,LGA,LON,215,14,158,193930
821,08MAR12,11:40,LGA,LON,186,8,114,167772
821,09MAR12,14:56,LGA,LON,203,6,210,183106
821,10MAR12,9:31,LGA,LON,188,8,211,169576
821,03MAR12,14:56,LGA,LON,151,17,172,143561
821,04MAR12,14:56,LGA,LON,167,9,182,170766
821,06MAR12,14:56,LGA,LON,167,16,185,129560
821,07MAR12,14:56,LGA,LON,215,11,231,196736
821,08MAR12,14:56,LGA,LON,186,11,202,125344
821,09MAR12,14:56,LGA,LON,203,11,218,166543
821,10MAR12,14:56,LGA,LON,188,5,197,129745
;;;;

data CERT.LEUKEMIA;
  infile datalines dsd truncover;
  input WhiteCells:32. AG:$8. Survived:32.;
datalines4;
2300,Present,1
750,Present,1
4300,Present,1
2600,Present,1
6000,Present,0
10500,Present,1
10000,Present,1
17000,Present,0
5400,Present,1
7000,Present,1
9400,Present,1
32000,Present,1
35000,Present,0
1000000,Present,0
1000000,Present,0
52000,Present,0
1000000,Present,1
4400,Absent,1
3000,Absent,1
4000,Absent,0
1500,Absent,0
9000,Absent,0
5300,Absent,0
10000,Absent,0
19000,Absent,0
27000,Absent,0
28000,Absent,0
31000,Absent,0
26000,Absent,0
21000,Absent,0
79000,Absent,1
1000000,Absent,0
1000000,Absent,1
;;;;

data CERT.LOAN;
  infile datalines dsd truncover;
  input Code:32. Amount:32. Rate:32. Months:32.;
datalines4;
1,22000,0.1,60
1,114000,0.095,360
1,10000,0.105,36
2,3500,0.105,12
2,8700,0.105,24
2,18500,0.1,60
3,5000,0.105,48
3,87500,0.095,360
3,30000,0.0975,360
;;;;

data CERT.LOAN01;
  infile datalines dsd truncover;
  input Code:32. Account:32. Amount:32. Rate:$8. Months:32.;
datalines4;
1,22000,0.1,60,60
1,114000,0.095,360,36
1,10000,0.105,36,36
2,3500,0.105,12,12
2,8700,0.105,24,24
2,18500,0.1,60,60
3,5000,0.105,48,48
3,87500,0.095,360,36
3,30000,0.0975,360,36
;;;;

data CERT.MASTER;
  infile datalines dsd truncover;
  input Account:32. Amount:32. Rate:32.;
datalines4;
1025,9600,0.07
1026,1500,0.05
1027,2500,0.05
1028,5000,0.08
1029,6500,0.07
1030,5000,0.07
1031,4000,0.06
1032,3000,0.01
1033,2500,0.04
1034,3500,0.04
1035,1000,0.02
;;;;

data CERT.MEASURE;
  infile datalines dsd truncover;
  input ID:32. Height:32. Weight:32.;
datalines4;
1129,61,137
1387,64,142
2304,61,102
5438,62,168
6488,64,154
9012,63,157
9125,65,148
8045,72,200
8125,70,176
;;;;

data CERT.MECHANICS;
  infile datalines dsd truncover;
  input ID:$4. LastName:$9. FirstName:$9. City:$12. State:$2. Gender:$1. Salary:8.2 Birth:DATE7. Hired:DATE7. HomePhone:$12. SSN:32. JobCategory:$2. JobLevel:$1.;
  format Salary 8.2 Birth DATE7. Hired DATE7.;
datalines4;
1653,ALEXANDER,SUSAN,BRIDGEPORT,CT,G,35108.00,12OCT77,30JUN98,203/675-7715,,ME,2
1400,APPLE,TROY,NEW YORK,NY,M,29769.00,02MAY78,30APR00,212/586-0808,,ME,1
1499,BAREFOOT,JOSEPH,PRINCETON,NJ,M,43025.00,16NOV78,23JUL98,201/812-5665,,ME,3
1403,BOWDEN,EARL,BRIDGEPORT,CT,M,28072.00,06DEC80,13JAN04,203/675-3434,,ME,1
1782,BROWN,JASON,STAMFORD,CT,M,35345.00,25FEB80,09JAN99,203/781-0019,,ME,2
1244,BRYANT,LEONARD,NEW YORK,NY,M,,08DEC81,10SEP00,718/383-3334,,ME,2
1065,CHAPMAN,NEIL,NEW YORK,NY,M,35090.00,24JUN77,23JUL98,718/384-5618,,ME,2
1129,COOK,BRENDA,NEW YORK,NY,F,3492.90,22FEB81,05JAN07,718/383-2313,,ME,2
1406,FOSTER,GERALD,BRIDGEPORT,CT,M,351.85,19JUL84,10JUL98,203/675-6363,,ME,2
1120,GARCIA,JACK,NEW YORK,NY,M,28619.00,14NOV79,09DEC00,718/384-4930,,ME,1
1409,HARTFORD,RAYMOND,STAMFORD,CT,M,41551.00,11SEP81,12MAR97,203/781-9697,,,
1121,HERNANDEZ,MICHAEL,NEW YORK,NY,M,29112.00,16NOV78,14MAY96,718/384-3313,,ME,1
1356,HOWARD,MICHAEL,NEW YORK,NY,M,36869.00,03JAN80,17OCT95,212/586-8411,,ME,2
1292,HUNTER,HELEN,BRIDGEPORT,CT,F,36691.00,09NOV80,31MAY99,203/675-4830,,ME,2
1440,JACKSON,LAURA,STAMFORD,CT,F,,11DEC82,15SEP95,12203/781-00,,ME,2
1900,KING,WILLIAM,NEW YORK,NY,M,35105.00,19JUL80,17MAR03,718/383-3698,,ME,2
1379,MORGAN,ALFRED,STAMFORD,CT,M,42264.00,30JAN84,21APR05,203/781-2216,,ME,3
1412,MURPHEY,JOHN,PRINCETON,NJ,N,27799.00,08APR78,29JUL04,201/812-4414,,ME,1
1423,OSWALD,LESLIE,MT. VERNON,NY,F,35773.00,20JAN80,16JUL98,914/468-9171,,ME,2
1200,OVERMAN,MICHELLE,STAMFORD,CT,F,27816.00,18FEB80,20JAN97,203/781-1835,,ME,1
1521,PARKER,JAY,NEW YORK,NY,M,41526.00,01SEP79,02DEC03,212/587-7603,,ME,3
1385,RAYNOR,MILTON,BRIDGEPORT,CT,M,43900.00,01MAR78,20AUG01,203/675-2846,,ME,3
1432,REED,MARILYN,MT. VERNON,NY,F,35327.00,07FEB81,01JUL00,914/468-5454,,ME,2
1420,ROUSE,JEREMY,PATERSON,NJ,M,43071.00,18JUL80,01JUN08,201/732-9834,,ME,3
1882,TUCKER,ALAN,NEW YORK,NY,M,41538.00,12DEC79,28JUN02,718/384-0216,,ME,3
1050,TUTTLE,THOMAS,WHITE PLAINS,NY,M,35167.00,16OCT06,27AUG74,914/455-2119,,ME,2
1995,VARNER,ELIZABETH,NEW YORK,NY,F,28810.00,26OCT80,21NOV00,718/384-7113,,ME,1
1418,WATSON,BERNARD,NEW YORK,NY,M,28005.00,24MAR80,10MAR99,718/383-1298,,ME,1
1105,YOUNG,LAWRENCE,NEW YORK,NY,M,34805.00,12OCT80,15OCT97,718/384-0008,,ME,2
;;;;

data CERT.ORDERS;
  infile datalines dsd truncover;
  input Product:$15. Units:32. Price:32. Ordrtime:32.;
datalines4;
Mahogany Chair,52,59.99,4
Mahogany Table,19,799.99,9
Walnut Table,17,449.99,6
Walnut Chair,82,49.99,4
;;;;
data CERT.PATDAT;
   input ID $1-4 Age 6-7 Sex $9-10 @12 Date mmddyy10.;
   format Date mmddyy10.;
   datalines;
A001 21 M 08/17/97
A002 32 M 02/18/86
A003 24 F 06/07/94
A004 28 M 01/27/90
A005 44 F 04/24/74
A007 39 M 07/10/79
A008 30 F 09/16/88
;
data CERT.PATIENTS;
  infile datalines dsd truncover;
  input ID:32. Sex:$8. Age:32.;
datalines4;
1129,F,48
1387,F,57
2304,F,16
2486,F,63
4759,F,60
5438,F,42
6488,F,59
9012,F,39
9125,F,56
8045,M,40
8125,M,39
;;;;

data CERT.PATS;
  infile datalines dsd truncover;
  input ID:32. Gender:$2. Age:32.;
datalines4;
1129,F,48
1147,M,116
1387,F,57
2304,F,16
2486,F,63
4759,F,60
5277,F,202
5438,F,42
6745,G,18
6488,F,59
8045,M,40
8125,M,39
9012,F,39
9125,F,56
9968,G,64
;;;;

data CERT.PIEDMONT;
  infile datalines dsd truncover;
  input Phone:$12.;
datalines4;
919-555-0131
919-555-0166
910-555-6753
910-697-6785
919-697-6977
919-596-0687
919-555-9863
919-987-4204
910-576-1684
919-632-6976
;;;;

data CERT.PROPS1;
  infile datalines dsd truncover;
  input Actor:$5. Prop:$7.;
datalines4;
Curly,Anvil
Larry,Ladder
Moe,Poker
;;;;

data CERT.PROPS2;
  infile datalines dsd truncover;
  input Actor:$5. Prop:$7.;
datalines4;
Curly,Ladder
Moe,Pliers
;;;;

data CERT.RECORDS;
  infile datalines dsd truncover;
  input Account:$8. Amount:DOLLAR8. Rate:PERCENT8.2 Months:32. Payment:DOLLAR7.2 Code:$1.;
  format Amount DOLLAR8. Rate PERCENT8.2 Payment DOLLAR7.2;
datalines4;
101-1092,"$22,000",10.00%,60,$467.43,1
101-1731,"$14,000",9.50%,360,$958.57,2
101-1289,"$10,000",10.50%,36,$325.02,2
101-3144,"$3,500",10.50%,12,$308.52,1
103-1135,"$8,700",10.50%,24,$403.47,1
103-1994,"$18,500",10.00%,60,$393.07,2
103-2335,"$5,000",10.50%,48,$128.02,1
103-3864,"$87,500",9.50%,360,$735.75,1
103-3891,"$30,000",9.75%,360,$257.75,2
;;;;

data CERT.REPS;
  infile datalines dsd truncover;
  input IDnum:$4. LastName:$10. FirstName:$8. City:$10. State:$2. Sex:$1. JobCode:$3. Salary:8.2 Birth:DATE7. Hired:DATE7. HomePhone:$12.;
  format Salary 8.2 Birth DATE7. Hired DATE7.;
datalines4;
1269,CASTON,FRANKLIN,STAMFORD,CT,M,NA1,41690.00,06MAY60,01DEC80,203/781-3335
1935,FERNANDEZ,KATRINA,BRIDGEPORT,CT,,NA2,51081.00,31MAR42,19OCT69,203/675-2962
1417,NEWKIRK,WILLIAM,PATERSON,NJ,",",NA2,52270.00,30JUN52,10MAR77,201/732-6611
1839,NORRIS,DIANE,NEW YORK,YN,F,NA1,43433.00,02DEC58,06JUL81,718/384-1767
1111,RHODES,JEREMY,PRINCETON,NJ,M,NA1,40586.00,17JUL61,03NOV80,201/812-1837
1352,RIVERS,SIMON,NEW YORK,NY,M,NA2,5379.80,05DEC48,19OCT74,718/383-3345
1332,STEPHENSON,ADAM,BRIDGEPORT,CT,M,NA1,42178.00,20SEP58,07JUN79,203/675-1497
1443,WELLS,AGNES,STAMFORD,CT,F,NA1,422.74,20NOV56,01SEP79,203/781-5546
;;;;

data CERT.REVIEW2018;
  infile datalines dsd truncover;
  input Name:$12. Day:32. Rate:$5. Site:$14.;
datalines4;
"Mitchell, K.",12,A2,Westin
"Worton, M.",3,A5,Stockton
"Smith, A.",17,B1,Center City
"Kales, H.",4,A3,Stockton
"Khalesh, P.",7,A1,Stockton
"Samuel, P.",5,B4,Center City
"Daniels, B.",7,C1,Westin
"Mahes, K.",4,B2,Center City
"Hunter, D.",10,B2,Westin
"Moon, D.",5,A2,Stockton
"Crane, N.",3,B1,Stockton
;;;;

data CERT.ROUNDERS;
  infile datalines dsd truncover;
  input Account:32. AccountBalance:32. InvoicedAmount:32. PaymentReceived:32. AmountRemaining:32.;
datalines4;
1118,6246.34,967.84,1214.18,2214.18
2287,3687.14,607.3,4294.44,0
6201,1607.93,137.41,700,1045.34
7821,7391.62,1069.37,5000,3460.99
6621,7017.5,9334.08,8351.58,8000
1086,556.36,1537.28,1300.28,793.36
2556,6388.1,3577.82,6900.82,3065.1
7821,10872.96,3885.08,10872.96,3885.08
5265,1057.46,637.42,1200,494.88
1010,6387.13,0,3193.57,3193.56
;;;;

data CERT.SCH;
  infile datalines dsd truncover;
  input Program:$21. Producer:$6. AirDate:MMDDYY10.;
  format AirDate MMDDYY10.;
datalines4;
All Things Considered,NPR,04/12/2000
BBC World,BBC,04/04/2000
Morning Edition,NPR,04/13/2000
River to River,NPR,04/01/2000
World Cafe,WXPN,04/08/2000
Talk of the Town,NPR,04/04/2000
Classical Music,NPR,04/08/2000
Symphony Live,NPR,04/01/2000
All Things Considered,NPR,04/19/2000
Morning Edition,NPR,04/14/2000
BBC World,BBC,04/06/2000
Morning Edition,NPR,04/17/2000
BBC World,BBC,04/07/2000
Morning Edition,NPR,04/18/2000
BBC World,BBC,04/10/2000
Morning Edition,NPR,04/20/2000
Symphony Live,NPR,04/16/2000
World Cafe,WXPN,04/08/2000
;;;;
data cert.scores;
	input ID Test1 Test2 Test3 Test4 Test5;
datalines;
1001 100 95 95 92 93
1002 78 77 78 34 77
1003 74 71 93 70 73
1004 88 77 95 82 75
1005 81 73 40 29 81
1006 96 89 93 83 86
1007 79 71 82 80 88
1008 72 81 94 71 74
1009 92 80 83 88 93
1010 83 82 88 89 85
1011 85 75 83 60 75
1012 70 80 87 70 77
1013 76 80 89 90 51
1014 80 79 100 81 82
1015 76 86 100 83 80
1016 70 78 85 74 85
1017 87 81 91 94 90
1018 100 90 95 97 86
1019 97 84 94 93 83
1020 98 100 77 62 78
;;;;
data CERT.SET1;
  infile datalines dsd truncover;
  input ID:32. Sex:$8. Age:32.;
datalines4;
1128,F,48
1274,F,50
1387,F,57
2304,F,16
2486,F,63
4425,F,48
4759,F,60
5438,F,42
6488,F,59
9012,F,39
9125,F,56
;;;;

data CERT.SET2;
  infile datalines dsd truncover;
  input ID:32. Height:32. Weight:32.;
datalines4;
1129,61,137
1387,64,142
2304,61,102
5438,62,168
6488,64,154
9012,63,157
9125,64,159
;;;;

data CERT.SPRING;
  infile datalines dsd truncover;
  input Fabric:$8. Blue:$2. Green:$2. Red:$2. Yellow:$2.;
datalines4;
Blend,Y,Y,Y,Y
Chambray,Y,N,N,N
Cotton,Y,N,Y,N
Linen,Y,Y,N,Y
Rayon,N,Y,N,Y
;;;;

data CERT.STAFF;
  infile datalines dsd truncover;
  input ID:$4. Name:$12. DOB:32. WageCategory:$1. WageRate:7.2 Bonus:7.2;
  format WageRate 7.2 Bonus 7.2;
datalines4;
1351,"Farr, Sue",-4685,S,3392.50,1187.38
161,"Cox, Kay B",-5114,S,5093.75,1782.81
212,"Moore, Ron",-2415,S,1813.30,634.65
2512,"Ruth, G H",-2819,S,1572.50,550.37
2532,"Hobbs, Roy",-780,H,13.48,500.00
282,"Shaw, Rick",-3090,S,2192.25,767.29
3131,"Gant, Amy",-10199,H,13.50,500.00
341,"Mann, Mary",290,H,13.55,500.00
3551,"Cobb, Joy F",-636,H,13.65,500.00
3782,"Bond, Jim S",-4045,S,2247.50,786.63
381,"Smith, Anna",-3493,S,2082.75,728.96
3922,"Dow, Tony",-4472,S,2960.00,1036.00
412,"Star, Burt",-1412,S,2300.00,805.00
4331,"King, Jan S",-3170,H,11.85,500.00
442,"Lewis, Ed D",-3590,S,3420.00,1197.00
452,"Fox, Jim E",-5166,S,3902.35,1365.82
4551,"Wong, Kim P",-6412,S,3442.50,1204.88
472,"Hall, Joe B",563,S,2262.50,791.88
482,"Chin, Mike",-2586,S,2938.00,1028.30
4921,"Smyth, Nan",-1444,H,15.33,500.00
5002,"Welch, W B",-832,S,5910.75,2068.76
5112,"Delgado, Ed",-4146,S,4045.85,1416.05
511,"Vega, Julie",-822,S,4480.50,1568.18
5132,"Overby, Phil",-3129,S,6855.90,2399.57
5151,"Coxe, Susan",-10209,S,3163.00,1107.05
1351,"Farr, Sue",-4685,S,3392.50,1187.38
;;;;

data CERT.STAFF1;
  infile datalines dsd truncover;
  input ID:$3. Name:$8. Dept:$4. Project:$8.;
datalines4;
000,Miguel,A12,Document
111,Fred,B45,Survey
222,Diana,B45,Document
888,Monique,A12,Document
999,Vien,D03,Survey
;;;;

data CERT.STAFF2;
  infile datalines dsd truncover;
  input ID:32. Name:$8. Hours:32.;
datalines4;
111,Fred,35
222,Diana,40
777,Steve,0
888,Monique,37
;;;;

data CERT.STRESS;
  infile datalines dsd truncover;
  input ID:$4. Name:$14. RestHR:32. MaxHR:32. RecHR:32. TimeMin:32. TimeSec:32. Tolerance:$1.;
datalines4;
2458,"Murray, W",72,185,128,12,38,D
2462,"Almers, C",68,171,133,10,5,I
2501,"Bonaventure, T",78,177,139,11,13,I
2523,"Johnson, R",69,162,114,9,42,S
2539,"LaMance, K",75,168,141,11,46,D
2544,"Jones, M",79,187,136,12,26,N
2552,"Reberson, P",69,158,139,15,41,D
2555,"King, E",70,167,122,13,13,I
2563,"Pitts, D",71,159,116,10,22,S
2568,"Eberhardt, S",72,182,122,16,49,N
2571,"Nunnelly, A",65,181,141,15,2,I
2572,"Oberon, M",74,177,138,12,11,D
2574,"Peterson, V",80,164,137,14,9,D
2575,"Quigley, M",74,152,113,11,26,I
2578,"Cameron, L",75,158,108,14,27,I
2579,"Underwood, K",72,165,127,13,19,S
2584,"Takahashi, Y",76,163,135,16,7,D
2586,"Derber, B",68,176,119,17,35,N
2588,"Ivan, H",70,182,126,15,41,N
2589,"Wilcox, E",78,189,138,14,57,I
2595,"Warren, C",77,170,136,12,10,S
;;;;

data CERT.STRESS2;
  infile datalines dsd truncover;
  input ID:$4. Name:$14. RestHR:32. MaxHR:32. RecHR:32. TimeMin:32. TimeSec:32. Tolerance:$1.;
datalines4;
2458,"Murray, W",72,185,128,12,38,D
2462,"Almers, C",68,171,133,10,5,I
2501,"Bonaventure, T",78,177,139,11,13,I
2523,"Johnson, R",69,162,114,9,42,S
2539,"LaMance, K",75,168,141,11,46,D
2544,"Jones, M",79,187,136,12,26,N
2552,"Reberson, P",69,158,139,15,41,D
2555,"King, E",70,167,122,13,13,I
2563,"Pitts, D",71,159,116,10,22,S
2568,"Eberhardt, S",72,182,122,16,49,N
2571,"Nunnelly, A",65,181,141,15,2,I
2572,"Oberon, M",74,177,138,12,11,D
2574,"Peterson, V",80,164,137,14,9,D
2575,"Quigley, M",74,152,113,11,26,I
2578,"Cameron, L",75,158,108,14,27,I
2579,"Underwood, K",72,165,127,13,19,S
2584,"Takahashi, Y",76,163,135,16,7,D
2586,"Derber, B",68,176,119,17,35,N
2588,"Ivan, H",70,182,126,15,41,N
2589,"Wilcox, E",78,189,138,14,57,I
2595,"Warren, C",77,170,136,12,10,S
;;;;

data CERT.SUMMER;
  infile datalines dsd truncover;
  input Fabric:$8. Blue:$2. Green:$2. Red:$2. Yellow:$2.;
datalines4;
Cotton,Y,Y,Y,Y
Chambray,N,N,N,N
Rayon,Y,Y,Y,Y
Linen,Y,Y,Y,Y
Blend,Y,Y,Y,Y
;;;;

data CERT.SURVEY;
  infile datalines dsd truncover;
  input FirstName:$8. Item1:32. Item2:32. Item3:32. Item4:32. Item5:32. Item6:32. Item7:32. Item8:32. Item9:32. Item10:32. Item11:32. Item12:32. Item13:32. Item14:32. Item15:32. Item16:32. Item17:32. Item18:32.;
datalines4;
Alicia,4,3,5,4,3,4,1,2,2,3,1,2,2,3,1,1,2,3
Bernard,2,1,4,3,1,2,5,4,5,2,5,3,4,5,5,3,4,5
Betsy,5,3,4,5,5,4,4,4,3,5,4,3,4,2,3,5,2,3
Carmela,4,5,4,2,3,5,2,1,2,3,2,3,1,2,3,1,4,2
;;;;

data CERT.TEMP;
  infile datalines dsd truncover;
  input Address:$19. City:$12. State:$3. Zip:$7. Phone:$10. Startdate:32. Enddate:32. Payrate:$5. Days:32. Hours:32. Birthdate:32. Job:$32. Contact:$21. Dept:$5. Site:32.;
datalines4;
65 ELM DR,CARY,NC,27513,6224549,21142,21196,10,11,88,7054,word processing,WORD PROCESSOR,DP,26
11 SUN DR,CARY,NC,27513,6223251,21108,21142,8,25,200,5757,Filing Admin.Duties,ADMIN. ASST.,PURH,57
712 HARDWICK STREET,CHAPEL HILL,NC,27514,9974749,21145,21183,40,26,208,3156,Organizational Dev. Specialis,CONSULTANT,PERS,34
5372 WHITEBUD ROAD,RALEIGH,NC,27612,6970540,21091,21102,15,10,80,6097,Bookkeeping word processing,BOOKKEEPER ASST.,BK,57
11 TALYN COURT,DURHAM,NC,27713,3633618,21125,21136,12,9,72,4327,word processing sec. work,WORD PROCESSOR,DP,95
101 HYNERIAN DR,CARRBORO,NC,27510,9976732,21139,21188,15,7,64,5644,Bookkeeping word processing,BOOKKEEPER ASST.,BK,44
11 RYGEL ROAD,CHAPEL HILL,NC,27514,9972070,20668,21048,12,12,96,5644,word processing,WORD PROCESSOR,DP,59
121 E. MOYA STREET,DURHAM,NC,27713,3633020,21098,21102,10,5,40,4347,word processing sec. work,WORD PROCESSOR,PUB,38
1905 DOCK STREET,CARY,NC,27513,6565303,21108,21112,10,5,30,4327,word processing,WORD PROCESSOR,DP,44
1304 CRESCENT AVE,RALEIGH,NC,27612,4341557,20999,21122,15,5,25,4527,word processing,WORD PROCESSOR,DP,90
;;;;

data CERT.TESTS;
  infile datalines dsd truncover;
  input ID:$4. Name:$20. RestHR:32. MaxHR:32. RecHR:32. TimeMin:32. TimeSec:32. Tolerance:$1.;
datalines4;
2458,"Murray, W",72,185,128,12,38,D
2462,"Almers, C",68,171,133,10,5,I
2501,"Bonaventure, T",78,177,139,11,13,I
2523,"Johnson, R",69,162,114,9,42,S
2539,"LaMance, K",75,168,141,11,46,D
2544,"Jones, M",79,187,136,12,26,N
2552,"Reberson, P",69,158,139,15,41,D
2555,"King, E",70,167,122,13,13,I
2563,"Pitts, D",71,159,116,10,22,S
2568,"Eberhardt, S",72,182,122,16,49,N
2571,"Nunnelly, A",65,181,141,15,2,I
2572,"Oberon, M",74,177,138,12,11,D
2574,"Peterson, V",80,164,137,14,9,D
2575,"Quigley, M",74,152,,11,26,I
2578,"Cameron, L",75,158,108,14,27,I
2579,"Underwood, K",72,165,127,13,19,S
2584,"Takahashi, Y",76,163,135,16,7,D
2586,"Derber, B",68,176,119,17,35,N
2588,"Ivan, H",70,182,126,15,41,N
2589,"Wilcox, E",78,189,138,14,57,I
2595,"Warren, C",77,170,136,12,10,S
;;;;

data CERT.THERAPY;
  infile datalines dsd truncover;
  input Date:$7. AerClass:32. WalkJogRun:32. Swim:32.;
datalines4;
JAN2012,56,78,14
FEB2012,32,109,19
MAR2012,35,106,22
APR2012,47,115,24
MAY2012,55,121,31
JUN2012,61,114,67
JUL2012,67,102,72
AUG2012,64,76,77
SEP2012,78,77,54
OCT2012,81,62,47
NOV2012,84,31,52
DEC2012,2,44,55
JAN2013,37,91,83
FEB2013,41,102,27
MAR2013,52,98,19
APR2013,61,118,22
MAY2013,49,88,29
JUN2013,24,101,54
JUL2013,45,91,69
AUG2013,63,65,53
SEP2013,60,49,68
OCT2013,78,70,41
NOV2013,82,44,58
DEC2013,93,57,47
;;;;

data CERT.THERAPY2012;
  infile datalines dsd truncover;
  input Month:32. Year:32. AerClass:32. WalkJogRun:32. Swim:32.;
datalines4;
1,2012,26,78,14
2,2012,32,109,19
3,2012,15,106,22
4,2012,47,115,24
5,2012,95,121,31
6,2012,61,114,67
7,2012,67,102,72
8,2012,24,76,77
9,2012,78,77,54
10,2012,81,62,47
11,2012,84,31,52
12,2012,92,44,55
;;;;

data CERT.THERAPY2013;
  infile datalines dsd truncover;
  input Month:32. Year:32. AerClass:32. WalkJogRun:32. Swim:32.;
datalines4;
1,2013,37,91,83
2,2013,41,102,27
3,2013,52,98,19
4,2013,61,118,22
5,2013,49,88,29
6,2013,24,101,54
7,2013,45,91,69
8,2013,63,65,53
9,2013,60,49,68
10,2013,78,70,41
11,2013,82,44,58
12,2013,93,57,47
;;;;

data CERT.USA;
  infile datalines dsd truncover;
  input Dept:$5. WageCat:$2. WageRate:32. Manager:$8. JobType:32.;
datalines4;
ADM10,S,3392.5,Coxe,3
ADM10,S,3420,Coxe,50
ADM10,S,6862.5,Coxe,50
ADM10,H,13.65,Coxe,240
ADM20,S,4522.5,Coxe,240
ADM20,S,2960,Delgado,240
ADM20,S,5260,Delgado,240
ADM20,S,1572.5,Delgado,420
ADM30,S,3819.2,Delgado,420
ADM30,S,1813.3,Delgado,440
CAM10,S,6855.9,Overby,1
CAM10,S,4045.8,Overby,5
CAM20,S,4480.5,Overby,10
ADM10,S,5910.8,Overby,20
CAM10,S,9073.8,Overby,20
;;;;
data cert.addresses;
input Street $1-23 City $24-39 State $40-46 Tel $47-58;
datalines;
3497 Everette Alley    Ft Lauderdale   FL33311 954-802-4244
2660 Rockford Road     Reno            NV89501 775-227-3434
4746 Cliffside Drive   Binghamton      NY13901 607-429-7755
2160 Graystone Lakes   Milledgeville   GA31061 478-414-6603
5468 Heliport Loop     Wadesville      IN47638 812-673-9132
4468 Tetrick Road      Fort Myers      FL33901 863-312-1212
7002 Petunia Way       Birmingham      AL35222 205-727-1636
2419 Swick Hill Street Metairie        LA70001 225-312-0835
6718 Hayhurst Lane     Southfield      MI48034 248-827-8867
1056 Spring Avenue     Fort Washington PA19034 267-556-7065
3164 Clay Street       Indianapolis    IN46214 317-371-7237
3788 Maxwell Farm Road Butte City      CA95920 530-982-7305
1853 Bate Brother Road Columbus        OH43201 614-297-4312
3102 Elliot Avenue     Seattle         WA98101 206-622-2863
4416 Saints Alley      Plant City      FL33566 813-545-1531
1705 Anmoore Road      Queens          NY11101 718-784-7616
2108 Seth Street       Goldthwaite     TX76844 325-648-2803
3589 Aspen Court       Boston          MA02115 617-421-3587
4370 Joanne Lane       Sudbury         MA01776 978-445-5989
4914 Tanglewood Road   Jackson         MS39201 662-990-2780
3443 Jacobs Street     Pittsburgh      PA15237 412-367-9519
9946 Spadafore Drive   Erie            PA16501 814-707-3046
2930 Argonne Street    Philadelphia    DE19103 302-348-4381
4813 Parrish Avenue    Cranes Mill     TX78130 830-905-8540
2509 Woodside Circle   Panama City     FL32401 850-866-1396
2536 Philli Lane       Tahlequah       OK74464 918-453-4707
1995 Olive Street      Toledo          OH43626 419-361-3113
5309 Central Avenue    New Brunswick   NJ08901 201-428-6611
3149 Kelly Street      Charlotte       NC28204 704-874-3423
2964 Center Avenue     Fresno          CA93706 559-474-1262
2036 Gnatty Creek Road Huntington      NY11743 516-428-5951
1949 Poe Lane          Kansas City     KS66215 913-495-2025
1731 Kincheloe Road    Portland        OR97205 503-450-1962
4229 Romrog Way        Scotia          NE68875 308-245-1745
1189 Walnut Drive      Glen Ullin      ND58631 701-348-3899
4882 Mulberry Avenue   Little Rock     AR72205 501-390-8715
1632 Rosewood Court    Cannon Falls    MN55009 507-263-1975
5655 Glen Street       Brandenburg     KY40108 270-422-6495
4849 Walton Street     Salt Lake City  UT84104 801-421-5174
3317 Jehovah Drive     Fincastle       VA24090 540-473-9026
3723 Pinchelone Street Norfolk         VA23502 757-333-9158
1662 Thompson Drive    Oakland         CA94612 510-373-7338
3915 McVaney Road      Blowing Rock    NC28605 828-295-1796
4111 Happy Hollow Road Fayetteville    NC28305 910-527-6782
1861 Clarksburg Road   Harquala Valley AZ85069 928-372-8713
4782 Reel Avenue       Albuquerque     NM87106 505-402-7439
1994 Ashwood Drive     Council Bluffs  IA51501 712-355-6034
3218  Abner Road       Stevens Point   WI54481 715-345-2083
1871  Raver Coft Drive Chattanooga     TN37403 423-650-3633
2622  Centen Farm Road Minneapolis     MN55409 712-551-1241
1528  Timbercrest Road Kodiak          AK99615 907-654-0563
6001  River Road       Denver          CO80918 719-535-0075
4989  Meadow Vew Drive Hartford        CT06103 860-540-7607
4308  School Street    Washington      DC20024 202-917-8787
2275  Stratford Drive  Honolulu        HI96819 808-298-7818
7357 Bryan Street      Lexington       NC27292 336-225-9985
1271 Mesa Drive        Las Vegas       NV89101 702-338-8442
3446 Sycamore Road     Mitchell        OR97750 541-462-9060
4403 Catherine Drive   Grand Fork Base ND58228 701-304-0742
1510 Raver Croft Drive Greeneville     TN37745 423-639-6321
3696 Simpson Square    Balko           OK73931 580-646-2950
;;;;
data cert.temp18;
infile datalines truncover dsd;
	input Day HighTemp AvgHighTemp LowTemp AvgLowTemp;
datalines4;
21185,26,44,13,29
21186,26,43,13,29
21187,35,43,13,29
21188,27,43,16,29
21189,21,43,13,29
21190,21,43,11,29
21191,23,43,8,29
21192,39,43,19,29
21193,51,43,30,29
21194,43,43,27,29
21195,62,43,38,29
21196,64,43,57,28
21197,62,43,21,28
21198,28,43,17,28
21199,32,43,18,28
21200,43,43,30,28
21201,37,43,20,28
21202,47,43,19,28
21203,51,43,25,28
21204,63,43,28,28
21205,61,43,32,28
21206,65,47,43,28
21207,68,44,47,28
21208,48,35,44,29
21209,42,44,31,29
21210,50,44,28,29
21211,63,44,38,29
21212,57,44,47,29
21213,48,44,41,29
21214,41,44,24,29
21215,41,44,21,29
21216,43,45,28,30
21217,43,45,33,30
21218,38,46,26,30
21219,46,46,27,30
21220,50,46,39,30
21221,68,46,45,30
21222,65,46,37,30
21223,43,47,33,30
21224,53,47,34,31
21225,74,47,47,31
21226,67,47,40,31
21227,44,48,34,31
21228,51,48,33,31
21229,50,48,40,32
21230,78,48,49,32
21231,82,48,56,32
21232,67,49,43,32
21233,48,49,41,32
21234,53,49,48,32
21235,54,50,47,33
21236,53,50,41,33
21237,58,50,36,33
21238,64,50,44,33
21239,59,51,49,34
21240,54,51,39,34
21241,53,51,36,34
21242,53,52,35,34
21243,49,52,31,34
21244,59,51,49,34
21245,54,51,39,34
21246,53,51,36,34
21247,53,52,35,34
21248,49,52,31,34
21249,46,52,33,35
21250,51,53,34,35
21251,46,53,34,35
21252,46,53,33,36
21253,49,54,31,36
21254,52,54,31,36
21255,46,54,34,36
21256,47,55,33,37
21257,44,55,32,37
21258,55,56,31,37
21259,47,56,34,38
21260,46,56,32,38
21261,59,56,34,38
21262,56,57,36,38
21263,43,57,32,39
21264,36,58,32,39
21265,49,58,34,39
21266,51,58,35,40
21267,52,59,33,40
21268,48,59,34,40
21269,50,59,34,40
21270,48,60,34,41
21271,58,60,43,41
21272,78,60,48,41
21273,77,61,45,42
21274,61,61,39,42
;;;;
data cert.empdata;
   input EmpID $1-5 Dept $7-24 Country $26-29 Salary 30-34 @36 Date mmddyy10.;
   format Date mmddyy10.;
datalines;
E1024 FLIGHT OPERATIONS  USA 25000 03/11/2002
E1938 FINANCE & IT       USA 27000 12/19/2003
E0282 HUMAN RESOUCES     USA 36000 01/13/2009
E1192 FLIGHT OPERATIONS  USA 30000 02/28/2008
E0283 SALES & MARKETING  USA 33000 07/13/2004
E9228 FLIGHT OPERATIONS  USA 33000 07/12/2004
E3938 SALES & MARKETING  USA 29500 02/28/2009
E0293 FINANCE & IT       BE  79000 08/14/2002
E1129 HUMAN RESOURCES    BE  29000 03/13/2002
E8102 SALES & MARKETING  BE  39000 04/18/2008
E2208 AIRPORT OPERATIONS BE  34000 11/17/2005
E3009 FLIGHT OPERATIONS  BE  37000 12/10/2004
E9382 FINANCE & IT       CA  45000 11/23/2007
E8273 FINANCE & IT       CA  50000 05/29/2008
E0292 SALES & MARKETING  CA  85000 08/19/2008
E8292 SALES & MARKETING  CA  35000 02/20/2005
E1374 AIRPORT OPERATIONS DK  19000 10/16/2009
E3577 FINANCE & IT       DK  36000 10/28/2008
E3991 FINANCE & IT       DK  67000 09/15/2007
;;;;

data cert.empdatu;
   input EmpID $1-5 Dept $7-24 Country $25-28 Salary 29-34 @36 Date mmddyy10.;
   format Date mmddyy10.;
datalines;
E2275 FLIGHT OPERATIONS USA 19950 03/27/2004
E0021 FINANCE & IT      USA 45150 04/09/2003
E0028 FINANCE & IT      DE  39900 04/05/2003
;;;;

data cert.empdatu2;
input EmpID $1-5 Dept $7-24 Country $25-28 Salary 29-34 @36 Date mmddyy10.;
   format Date mmddyy10.;
datalines;
E2002 FINANCE & IT       USA 28350 12/19/2003
E2005 AIRPORT OPERATIONS DK  21950 12/19/2001
E2009 FINANCE & IT       USA 35700 01/26/2007
;;;;

 

data CERT.VISIT;
  infile datalines dsd truncover;
  input ID $1-4 Visit 6-7 SysBP 8-10 DiasBP 12-14 Weight 15-17 @19 Date mmddyy10.;
 format Date mmddyy10.;
 datalines;
A001 1 140 85 195 11/05/09
A001 2 138 90 198 10/13/09
A001 3 145 95 200 07/04/09
A002 1 121 75 168 04/14/09
A003 1 118 68 125 08/12/09
A003 2 112 65 123 08/21/09
A004 1 143 86 204 03/30/09
A005 1 132 76 174 02/27/09
A005 2 132 78 175 07/11/09
A005 3 134 78 176 04/16/09
A008 1 126 80 182 05/22/09
;;;;

data _null_;
   file "&path&delim.libname.sas";
   put '%let path='"&path;";
   put '%macro setdelim;';
   put '   %global delim;';
   put '   %if %index(&path,%str(/)) %then %let delim=%str(/);';
   put '   %else %let delim=%str(\);';
   put '%mend;';
   put '%setdelim';
   put 'libname cert "&path";';
   put '%include "&path&delim.cre8workdata.sas";';
   put;
run;
