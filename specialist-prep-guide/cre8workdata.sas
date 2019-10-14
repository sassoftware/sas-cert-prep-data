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

data WORK.BONUS;
  infile datalines dsd truncover;
  input ID:32. Bonus:DOLLAR12.;
  format Bonus DOLLAR12.;
datalines4;
1,"$2,000"
2,"$4,000"
3,"$3,000"
4,"$2,500"
;;;;

data WORK.CDRATES;
  infile datalines dsd truncover;
  input Institution:$17. Rate:32. Years:32.;
datalines4;
MBNA America,0.0817,5
Metropolitan Bank,0.0814,3
Standard Pacific,0.0806,4
;;;;

data WORK.CLOSE;
  infile datalines dsd truncover;
  input ID:32. Sale:DOLLAR12.;
  format Sale DOLLAR12.;
datalines4;
1,"$28,000"
2,"$30,000"
2,"$40,000"
3,"$15,000"
3,"$20,000"
3,"$20,000"
3,"$25,000"
4,"$35,000"
;;;;

data WORK.DATAONE;
  infile datalines dsd truncover;
  input Career:32. Supervis:32. Finance:32.;
datalines4;
72,26,9
63,76,7
96,31,7
96,98,6
84,94,6
;;;;

data WORK.DATATWO;
  infile datalines dsd truncover;
  input Variety:32. Feedback:32. Autonomy:32.;
datalines4;
10,11,70
85,22,93
83,63,73
82,75,97
36,77,97
;;;;

data WORK.MAILLIST;
  infile datalines dsd truncover;
  input FirstName:$7. LastName:$8. Gender:$6. Marital_Status:$7.;
datalines4;
Preston,Kelly,Male,Single
Jordan,Smith,Male,Single
Natalie,Stewart,Female,Married
Abigail,Martin,Female,Single
Kellan,Douglas,Male,Single
Aiden,Morrison,Male,Single
Kirsten,Murphy,Female,Single
Evelyn,Wells,Female,Married
Kirsten,Payne,Female,Single
Albert,Sullivan,Male,Married
;;;;

data WORK.ONE;
  infile datalines dsd truncover;
  input VarX:32. VarY:$7.;
datalines4;
1,Groucho
3,Harpo
5,Karl
;;;;

data WORK.REPS;
  infile datalines dsd truncover;
  input ID:32. Name:$15.;
datalines4;
1,Nay Rong
2,Kelly Windsor
3,Julio Meraz
4,Richard Krabill
;;;;

data WORK.TWO;
  infile datalines dsd truncover;
  input VarX:32. VarZ:$5.;
datalines4;
2,Chico
4,Zeppo
;;;;


