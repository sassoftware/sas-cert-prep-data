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

libname xl xlsx "&path&delim.boots.xlsx";
data xl.boot;
  infile datalines dsd truncover;
  input Region:$25. City:$11. Total_Sale:comma15.2;
  format Total_Sale DOLLAR15.2;
  label Region="Region" City="City" Total_Sale="Total Sale";
datalines4;
Africa,Addis Ababa,"$191,821.00"
Asia,Bangkok,"$9,576.00"
Canada,Calgary,"$63,280.00"
Central America/Carribean,Kingston,"$393,376.00"
Eastern Europe,Budapest,"$317,515.00"
Middle East,Al-Khobar,"$44,658.00"
Pacific,Auckland,"$97,919.00"
South America,Bogota,"$35,805.00"
United States,Chicago,"$305,061.00"
Western Europe,Copenhagen,"$4,657.00"
;;;;
libname xl xlsx "&path&delim.heart.xlsx";
data xl.heart;
infile datalines dsd truncover;
input Status:$5. 
      DeathCause:$25. 
      AgeCHDdiag 
      Sex:$6. 
	  AgeAtStart
	  Height
	  Weight
	  Diastolic
	  Systolic
	  MRW
	  Smoking
	  AgeAtDeath
      Cholesterol
      Chol_Status:$10. 
      BP_Status:$6. 
      Weight_Status:$10. 
      Smoking_Status:$14.;
datalines4;
Dead,Other,,Female,29,62.5,140,78,124,121,0,55,,,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,41,59.75,194,92,144,183,0,57,181,Desirable,High,Overweight,Non-smoker
Alive,,,Female,57,62.25,132,90,170,114,10,,250,High,High,Overweight,Moderate (6-15)
Alive,,,Female,39,65.75,158,80,128,123,0,,242,High,Normal,Overweight,Non-smoker
Alive,,,Male,42,66,156,76,110,116,20,,281,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,58,61.75,131,92,176,117,0,,196,Desirable,High,Overweight,Non-smoker
Alive,,,Female,36,64.75,136,80,112,110,15,,196,Desirable,Normal,Overweight,Moderate (6-15)
Dead,Other,,Male,53,65.5,130,80,114,99,0,77,276,High,Normal,Normal,Non-smoker
Alive,,,Male,35,71,194,68,132,124,0,,211,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,52,62.5,129,78,124,106,5,82,284,High,Normal,Normal,Light (1-5)
Alive,,,Male,39,66.25,179,76,128,133,30,,225,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,57,Male,33,64.25,151,68,108,118,0,,221,Borderline,Optimal,Overweight,Non-smoker
Alive,,55,Male,33,70,174,90,142,114,0,,188,Desirable,High,Overweight,Non-smoker
Alive,,79,Male,57,67.25,165,76,128,118,15,,,,Normal,Overweight,Moderate (6-15)
Alive,,66,Male,44,69,155,90,130,105,30,,292,High,High,Normal,Very Heavy (> 25)
Alive,,,Female,37,64.5,134,76,120,108,10,,196,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,40,66.25,151,72,132,112,30,,192,Desirable,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,56,Male,56,67.25,122,72,120,87,15,72,194,Desirable,Normal,Underweight,Moderate (6-15)
Alive,,,Female,42,67.75,162,96,138,119,1,,200,Borderline,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,74,Male,46,66.5,157,84,142,116,30,76,233,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,37,66.25,148,78,110,112,15,,192,Desirable,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,45,64,147,74,120,119,5,,209,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,59,65.75,156,74,156,122,0,,200,Borderline,High,Overweight,Non-smoker
Alive,,,Female,36,63.75,122,84,132,102,0,,184,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,50,67.5,185,88,150,136,15,,228,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,35,66,123,76,132,93,0,,150,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,42,72.25,182,78,136,113,0,,221,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,71,Female,49,60.5,153,110,196,140,5,73,221,Borderline,High,Overweight,Light (1-5)
Alive,,68,Male,40,70,189,78,124,124,0,,319,High,Normal,Overweight,Non-smoker
Alive,,,Female,41,61.75,139,72,116,124,0,,194,Desirable,Optimal,Overweight,Non-smoker
Dead,Unknown,,Female,59,67.75,153,82,172,113,0,79,263,High,High,Overweight,Non-smoker
Alive,,68,Male,40,70,195,76,132,128,20,,205,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,41,62,114,78,112,98,15,,267,High,Optimal,Normal,Moderate (6-15)
Alive,,,Female,39,63,144,80,120,120,0,,196,Desirable,Normal,Overweight,Non-smoker
Alive,,43,Male,33,66.5,172,106,146,127,0,,247,High,High,Overweight,Non-smoker
Alive,,,Male,41,69.25,159,96,142,107,0,,209,Borderline,High,Normal,Non-smoker
Dead,Coronary Heart Disease,67,Female,49,61,142,92,138,127,30,75,276,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,51,69.5,181,98,144,122,20,,223,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,43,65.5,172,78,118,131,10,63,150,Desirable,Optimal,Overweight,Moderate (6-15)
Alive,,,Male,48,66.75,142,72,108,105,30,,292,High,Optimal,Normal,Very Heavy (> 25)
Alive,,,Male,31,68.75,231,68,126,160,30,,186,Desirable,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,73,Male,55,67.5,193,60,148,138,15,75,242,High,High,Overweight,Moderate (6-15)
Alive,,,Female,48,63.25,144,94,154,120,5,,225,Borderline,High,Overweight,Light (1-5)
Alive,,,Female,39,63.75,120,80,130,100,0,,161,Desirable,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,58,Male,42,67.75,155,106,164,111,0,72,263,High,High,Overweight,Non-smoker
Alive,,,Female,38,62,117,72,112,101,0,,226,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,45,62,140,70,130,121,0,,209,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,40,64.5,145,88,146,117,0,,209,Borderline,High,Overweight,Non-smoker
Alive,,,Female,34,68.75,136,86,134,97,30,,286,High,Normal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,63,Male,37,72.25,153,76,116,95,30,65,234,Borderline,Optimal,Normal,Very Heavy (> 25)
Alive,,,Male,54,65.25,153,92,138,117,30,,213,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,53,Female,31,65.25,137,74,114,107,10,,202,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Male,52,69.5,175,82,118,118,0,,246,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,39,68,175,84,122,122,5,71,205,Borderline,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,65,Female,51,63.75,115,124,272,96,0,73,246,High,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,51,Male,51,66,168,72,146,124,5,75,225,Borderline,High,Overweight,Light (1-5)
Dead,Cancer,,Female,59,63.5,178,88,168,148,0,81,263,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,65,Female,53,62.75,144,130,220,124,0,77,,,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,75,Female,51,63,171,84,152,143,0,77,230,Borderline,High,Overweight,Non-smoker
Alive,,,Female,34,64.5,157,78,154,127,0,,242,High,High,Overweight,Non-smoker
Dead,Cancer,50,Female,48,60.5,189,104,178,173,0,60,224,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,80,Male,52,71,148,88,130,94,30,82,253,High,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,58,62.75,148,72,110,128,0,,226,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,37,69.75,152,72,144,103,20,,263,High,High,Normal,Heavy (16-25)
Alive,,65,Male,37,64.25,143,76,122,112,10,,150,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,57,Female,41,61.5,129,110,165,115,0,,228,Borderline,High,Overweight,Non-smoker
Alive,,,Female,44,66.5,142,86,136,108,,,,,Normal,Normal,
Dead,Cerebral Vascular Disease,,Male,47,72.75,185,72,118,115,0,67,167,Desirable,Optimal,Overweight,Non-smoker
Dead,Cancer,,Male,44,68.5,171,92,148,119,40,68,200,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,61,Male,53,68.5,156,88,128,108,0,79,198,Desirable,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,62,Male,54,67,167,134,210,119,5,64,286,High,High,Overweight,Light (1-5)
Dead,Other,,Female,52,62,161,94,138,139,0,84,213,Borderline,High,Overweight,Non-smoker
Alive,,,Female,49,61.5,148,90,168,132,0,,267,High,High,Overweight,Non-smoker
Alive,,69,Female,51,63.5,154,84,152,128,0,,280,High,High,Overweight,Non-smoker
Alive,,,Female,41,60,115,68,122,106,0,,228,Borderline,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,47,62.5,142,98,156,122,0,77,196,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Female,47,62,136,86,140,117,0,61,223,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,77,Female,59,59.25,117,88,132,110,0,85,246,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,63,Female,49,66,177,102,178,134,0,75,330,High,High,Overweight,Non-smoker
Alive,,59,Female,47,60.5,117,78,154,107,0,,305,High,High,Normal,Non-smoker
Alive,,,Female,37,64.25,144,78,124,116,5,,271,High,Normal,Overweight,Light (1-5)
Dead,Cancer,,Female,39,60,106,80,122,97,10,51,230,Borderline,Normal,Normal,Moderate (6-15)
Alive,,54,Male,30,66.25,153,82,148,113,30,,159,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Other,64,Male,42,70,196,90,128,129,20,74,,,High,Overweight,Heavy (16-25)
Alive,,57,Female,55,60.25,143,68,128,131,10,,198,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Female,30,60.5,145,78,112,133,0,,200,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,48,63.5,125,62,116,104,0,,261,High,Optimal,Normal,Non-smoker
Alive,,,Male,34,67.5,144,80,120,103,10,,250,High,Normal,Normal,Moderate (6-15)
Alive,,,Male,43,66,126,72,108,93,10,,223,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Female,52,62,135,82,144,116,0,,339,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,75,Male,55,70,199,94,146,131,0,83,163,Desirable,High,Overweight,Non-smoker
Alive,,51,Female,31,62.25,118,68,108,102,0,,163,Desirable,Optimal,Normal,Non-smoker
Dead,Unknown,,Female,54,62,162,84,140,140,0,78,221,Borderline,Normal,Overweight,Non-smoker
Dead,Unknown,,Male,54,68.5,138,60,98,96,20,74,196,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,83,Male,59,63,179,96,178,143,0,85,255,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,61,Female,39,61.25,116,88,144,104,15,65,242,High,High,Normal,Moderate (6-15)
Alive,,,Female,29,63.5,128,82,132,107,20,,200,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,59,Male,57,70.5,193,64,134,127,0,81,300,High,Normal,Overweight,Non-smoker
Alive,,,Female,50,65.5,146,84,142,114,0,,263,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,50,69.75,187,80,144,126,20,68,286,High,High,Overweight,Heavy (16-25)
Alive,,,Female,36,67.25,152,78,128,112,0,,275,High,Normal,Overweight,Non-smoker
Alive,,70,Male,54,70.5,165,84,132,109,0,,292,High,Normal,Normal,Non-smoker
Alive,,,Female,34,63.5,109,60,106,91,0,,165,Desirable,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,56,Male,54,67.5,160,78,168,114,10,62,267,High,High,Overweight,Moderate (6-15)
Dead,Other,,Female,55,63,159,110,174,133,0,87,263,High,High,Overweight,Non-smoker
Alive,,,Female,37,62,134,78,126,116,0,,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,35,62.25,124,72,118,107,0,,179,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,40,59.5,131,80,132,124,0,,267,High,Normal,Overweight,Non-smoker
Alive,,,Female,38,63.5,122,78,122,102,5,,265,High,Normal,Normal,Light (1-5)
Alive,,,Female,35,61.75,112,84,120,100,15,,233,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,43,64.75,142,88,136,115,0,,153,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,36,59,91,66,114,86,5,,217,Borderline,Optimal,Underweight,Light (1-5)
Alive,,,Female,40,62.75,125,74,110,108,15,,179,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Female,45,61.75,135,74,120,121,0,,192,Desirable,Normal,Overweight,Non-smoker
Alive,,56,Male,36,68.25,147,70,132,102,0,,167,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,55,64,166,86,158,134,0,,292,High,High,Overweight,Non-smoker
Alive,,,Female,35,64.5,124,68,128,100,,,,,Normal,Normal,
Alive,,,Female,44,61.5,118,68,126,105,5,,234,Borderline,Normal,Normal,Light (1-5)
Dead,Cancer,,Male,52,70,122,74,130,80,15,60,205,Borderline,Normal,Underweight,Moderate (6-15)
Alive,,,Male,36,72.75,169,88,130,105,0,,228,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,78,Female,58,62.75,120,110,188,103,15,80,324,High,High,Normal,Moderate (6-15)
Alive,,68,Female,54,64.5,147,100,182,119,0,,217,Borderline,High,Overweight,Non-smoker
Alive,,,Female,30,67,132,62,112,97,10,,142,Desirable,Optimal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,73,Female,47,62,124,80,140,107,0,77,347,High,Normal,Normal,Non-smoker
Alive,,,Female,47,64.25,150,58,100,121,5,,238,Borderline,Optimal,Overweight,Light (1-5)
Alive,,,Female,35,65.75,123,84,132,96,20,,199,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,57,66.5,137,78,138,104,0,,261,High,Normal,Normal,Non-smoker
Dead,Other,,Female,34,,,84,130,,0,48,242,High,Normal,,Non-smoker
Dead,Cerebral Vascular Disease,,Female,53,64,195,92,170,157,0,63,223,Borderline,High,Overweight,Non-smoker
Dead,Unknown,55,Female,49,59,113,78,130,107,0,79,242,High,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,76,Female,46,62.75,126,80,130,109,0,78,242,High,Normal,Normal,Non-smoker
Alive,,,Female,46,63,155,98,168,129,0,,221,Borderline,High,Overweight,Non-smoker
Alive,,,Female,55,60,115,100,154,106,0,,301,High,High,Normal,Non-smoker
Dead,Coronary Heart Disease,63,Male,43,66,163,94,140,121,0,65,234,Borderline,High,Overweight,Non-smoker
Alive,,74,Female,56,60.5,121,78,132,111,0,,196,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,46,62.75,101,68,122,87,15,,267,High,Normal,Underweight,Moderate (6-15)
Alive,,,Male,37,65.5,204,82,134,156,40,,300,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,48,59.5,137,76,122,129,0,,288,High,Normal,Overweight,Non-smoker
Alive,,,Female,43,60,118,78,112,108,0,,188,Desirable,Optimal,Normal,Non-smoker
Dead,Cancer,,Female,55,60,152,88,166,139,0,63,213,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Female,58,64,231,96,186,186,0,70,182,Desirable,High,Overweight,Non-smoker
Alive,,43,Male,35,64.75,227,108,156,177,0,,207,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Female,56,62,148,88,156,128,0,68,288,High,High,Overweight,Non-smoker
Alive,,,Male,45,68.5,160,86,136,111,0,,347,High,Normal,Overweight,Non-smoker
Alive,,,Male,51,70,194,82,148,128,25,,196,Desirable,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,83,Female,57,58,95,86,142,92,10,85,180,Desirable,High,Normal,Moderate (6-15)
Alive,,,Female,42,65.5,142,64,134,111,10,,188,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Female,39,57,98,78,116,98,0,,,,Optimal,Normal,Non-smoker
Alive,,,Female,32,65,158,80,128,123,0,,184,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,32,58.5,131,80,120,127,0,,166,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,47,67.25,137,64,116,98,15,,238,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,67,Male,45,67.25,197,88,136,141,0,,255,High,Normal,Overweight,Non-smoker
Alive,,,Female,33,67.5,133,84,142,98,0,,150,Desirable,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,47,60.25,134,84,150,123,0,77,209,Borderline,High,Overweight,Non-smoker
Alive,,63,Female,37,63,236,96,178,197,0,,,,High,Overweight,Non-smoker
Dead,Cancer,,Male,54,68,181,92,156,126,30,84,,,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,56,Male,42,66.5,148,88,136,110,5,64,,,Normal,Overweight,Light (1-5)
Alive,,60,Female,38,65,177,96,162,138,10,,230,Borderline,High,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,52,61.75,169,76,152,151,0,80,246,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,52,Male,48,68,175,80,128,122,40,68,221,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,40,59,135,100,178,127,0,,211,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,57,Male,43,66.75,183,122,190,136,0,63,242,High,High,Overweight,Non-smoker
Alive,,,Female,46,67.25,149,80,118,110,0,,182,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,54,69,145,84,116,98,25,60,217,Borderline,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,54,Male,46,66.25,166,86,140,123,0,58,234,Borderline,Normal,Overweight,Non-smoker
Alive,,67,Female,45,64,169,94,154,136,0,,225,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,68,Female,46,60.5,128,100,190,117,0,70,276,High,High,Overweight,Non-smoker
Alive,,66,Female,50,64.25,137,82,156,110,0,,288,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,56,63.5,112,68,104,90,20,82,242,High,Optimal,Underweight,Heavy (16-25)
Alive,,,Female,42,62.5,155,78,132,134,15,,255,High,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Female,31,65.75,124,72,118,97,0,55,196,Desirable,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,50,Female,50,62.5,162,96,198,140,0,60,326,High,High,Overweight,Non-smoker
Alive,,,Male,42,66.75,180,96,146,133,0,,205,Borderline,High,Overweight,Non-smoker
Alive,,,Female,50,60.25,117,88,172,107,0,,246,High,High,Normal,Non-smoker
Dead,Coronary Heart Disease,56,Female,52,62,166,98,182,143,5,74,263,High,High,Overweight,Light (1-5)
Alive,,,Female,36,61.5,127,78,110,113,20,,180,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,29,64,144,82,122,116,5,,182,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,50,63.25,145,92,160,121,1,,233,Borderline,High,Overweight,Light (1-5)
Dead,Other,,Male,38,69.5,137,64,112,93,15,70,209,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Female,37,64,116,78,118,94,5,,271,High,Optimal,Normal,Light (1-5)
Dead,Cancer,,Male,55,67.5,162,76,136,116,0,87,188,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,47,63,140,110,182,117,0,,246,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,51,Female,49,64,144,104,186,116,0,81,217,Borderline,High,Overweight,Non-smoker
Alive,,,Female,31,64,125,80,138,101,20,,199,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,43,62.5,179,74,134,154,0,,,,Normal,Overweight,Non-smoker
Dead,Cancer,62,Male,54,62,152,80,124,125,5,84,200,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,51,65,158,80,126,123,0,,307,High,Normal,Overweight,Non-smoker
Alive,,76,Female,54,64.25,146,96,148,118,0,,418,High,High,Overweight,Non-smoker
Dead,Other,,Female,48,62.25,145,96,168,125,0,80,225,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,51,64,118,72,124,95,0,65,232,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,40,70,228,80,130,150,0,,221,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,55,Male,47,70.5,226,130,190,149,25,57,250,High,High,Overweight,Heavy (16-25)
Alive,,,Female,34,63,133,62,112,111,20,,196,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Other,,Female,48,62,144,110,156,124,0,78,242,High,High,Overweight,Non-smoker
Alive,,,Male,54,66,141,80,118,104,0,,163,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,42,63,131,84,116,109,0,,250,High,Normal,Normal,Non-smoker
Dead,Cancer,,Male,40,67,141,94,136,101,20,70,205,Borderline,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,61,Male,59,67.25,164,100,152,117,0,81,334,High,High,Overweight,Non-smoker
Alive,,58,Female,50,59,152,102,158,143,0,,184,Desirable,High,Overweight,Non-smoker
Alive,,,Female,34,58.25,116,72,98,113,0,,188,Desirable,Optimal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,63,Female,49,59.5,132,88,164,125,0,75,271,High,High,Overweight,Non-smoker
Alive,,79,Female,53,65,122,70,126,95,20,,267,High,Normal,Normal,Heavy (16-25)
Alive,,55,Male,43,66.5,206,100,144,153,0,,228,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,49,68.5,133,68,124,92,20,75,223,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,33,63,143,76,110,119,0,,159,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,35,70.25,168,70,122,111,5,,163,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Male,41,65.75,152,98,138,116,0,,221,Borderline,High,Overweight,Non-smoker
Alive,,,Female,38,62.5,130,78,120,112,0,,225,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,71,Female,57,61.5,137,76,178,122,,73,,,High,Overweight,
Dead,Cancer,,Female,33,65,144,70,120,113,0,59,,,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,49,Male,29,67.5,149,80,120,106,5,61,198,Desirable,Normal,Normal,Light (1-5)
Alive,,,Female,29,68.75,143,72,118,102,15,,182,Desirable,Optimal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,53,Male,31,67,159,102,162,114,20,61,200,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,73,Female,59,60.25,139,102,178,128,0,75,301,High,High,Overweight,Non-smoker
Alive,,81,Female,51,61.25,147,102,172,131,20,,284,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,47,68,132,92,150,92,15,73,255,High,High,Normal,Moderate (6-15)
Alive,,,Female,40,67,141,88,132,104,1,,255,High,Normal,Normal,Light (1-5)
Alive,,,Female,59,59,124,88,132,117,0,,353,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,56,64.25,164,82,152,132,5,76,267,High,High,Overweight,Light (1-5)
Alive,,,Male,52,69.5,180,82,126,122,15,,207,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Male,44,67.25,176,100,142,126,0,,184,Desirable,High,Overweight,Non-smoker
Dead,Other,,Male,56,67,198,88,120,141,,62,179,Desirable,Normal,Overweight,
Alive,,82,Female,52,63,158,78,138,132,0,,255,High,Normal,Overweight,Non-smoker
Alive,,,Female,51,59.25,148,90,152,140,0,,214,Borderline,High,Overweight,Non-smoker
Alive,,,Female,37,65.5,129,72,122,101,0,,199,Desirable,Normal,Normal,Non-smoker
Dead,Unknown,,Male,59,69,114,70,132,77,0,87,182,Desirable,Normal,Underweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,54,60,109,92,172,100,0,84,301,High,High,Normal,Non-smoker
Dead,Cancer,,Male,59,68.25,170,92,150,118,0,65,213,Borderline,High,Overweight,Non-smoker
Alive,,,Male,33,66.75,152,60,98,113,0,,209,Borderline,Optimal,Overweight,Non-smoker
Dead,Unknown,,Female,35,61.75,125,84,134,112,20,65,305,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,40,65,123,70,122,96,20,,186,Desirable,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Male,37,64.5,140,74,124,109,40,51,292,High,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,40,65,148,82,122,116,10,,244,High,Normal,Overweight,Moderate (6-15)
Dead,Other,,Male,50,70.5,192,88,124,126,0,82,196,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,42,70.5,124,76,126,82,5,,192,Desirable,Normal,Underweight,Light (1-5)
Dead,Cancer,65,Female,47,61.5,178,98,142,159,30,79,228,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,72,Female,46,66,167,104,184,127,0,,266,High,High,Overweight,Non-smoker
Alive,,,Female,29,64.5,138,74,124,111,0,,217,Borderline,Normal,Overweight,Non-smoker
Dead,Unknown,,Male,48,70.25,175,98,148,115,25,80,179,Desirable,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,47,64.75,139,104,160,109,0,63,255,High,High,Normal,Non-smoker
Alive,,,Male,54,66.5,151,102,144,112,0,,228,Borderline,High,Overweight,Non-smoker
Alive,,,Female,45,61,125,70,128,112,0,,196,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,55,61,186,90,142,166,0,69,263,High,High,Overweight,Non-smoker
Alive,,,Female,38,62,129,70,126,111,0,,267,High,Normal,Overweight,Non-smoker
Dead,Other,,Female,38,65,175,78,122,137,15,70,213,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Female,50,62.25,132,82,140,114,20,58,275,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,39,70,181,94,138,119,0,,221,Borderline,High,Overweight,Non-smoker
Alive,,58,Male,40,72.5,197,86,140,122,15,,333,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,56,61.5,150,98,136,134,10,,255,High,High,Overweight,Moderate (6-15)
Alive,,75,Male,55,67,184,80,132,131,0,,234,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,48,67.25,146,70,122,104,20,,242,High,Normal,Normal,Heavy (16-25)
Alive,,,Male,31,66.25,153,78,122,113,40,,180,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,42,63,108,72,138,90,0,,198,Desirable,Normal,Underweight,Non-smoker
Dead,Cancer,,Male,52,67.5,173,92,128,124,20,80,250,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,39,62.5,109,92,152,94,20,47,184,Desirable,High,Normal,Heavy (16-25)
Alive,,61,Female,33,65.75,125,72,108,98,0,,196,Desirable,Optimal,Normal,Non-smoker
Dead,Other,,Female,51,62.5,139,108,194,120,0,79,271,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,50,63.5,180,120,230,150,0,82,301,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,58,64.25,156,80,132,122,30,82,230,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,39,64.25,130,90,152,105,5,,163,Desirable,High,Normal,Light (1-5)
Dead,Other,,Female,34,62,127,78,124,109,0,52,209,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,33,65.75,123,68,120,96,15,,180,Desirable,Normal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,45,Male,45,62,150,108,194,123,0,51,225,Borderline,High,Overweight,Non-smoker
Alive,,71,Female,53,64.5,140,90,140,113,0,,213,Borderline,High,Overweight,Non-smoker
Alive,,,Female,31,66.25,136,84,144,103,1,,167,Desirable,High,Normal,Light (1-5)
Dead,Coronary Heart Disease,80,Male,56,69.25,204,82,140,138,0,82,230,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,30,62,123,68,100,106,10,,213,Borderline,Optimal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,73,Female,49,65,127,80,120,99,0,79,,,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Male,47,69,189,102,168,128,0,75,211,Borderline,High,Overweight,Non-smoker
Alive,,,Male,38,66,175,84,142,130,30,,234,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Other,,Male,54,64,219,100,162,171,0,78,179,Desirable,High,Overweight,Non-smoker
Alive,,59,Female,49,59.5,145,112,206,137,0,,234,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,63,Male,47,68.5,149,72,116,103,20,79,255,High,Optimal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,71,Female,57,62,133,86,136,115,0,73,265,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,57,68.25,128,68,112,89,35,89,276,High,Optimal,Underweight,Very Heavy (> 25)
Dead,Cancer,,Female,47,67.25,180,88,152,132,0,71,284,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,58,Female,56,66.25,208,76,160,158,0,82,155,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Male,58,68.25,166,82,152,115,5,78,334,High,High,Overweight,Light (1-5)
Alive,,78,Female,50,61.75,152,82,120,136,0,,313,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,73,Male,59,68,172,108,194,119,0,75,276,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,72,Male,50,64,190,104,152,148,5,80,173,Desirable,High,Overweight,Light (1-5)
Alive,,48,Male,34,72,173,78,132,107,20,,209,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,40,68.5,155,72,114,108,25,,188,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Female,44,61.25,128,100,138,114,30,,196,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Male,41,66.5,168,82,130,124,20,,242,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,39,58,116,72,112,113,0,,250,High,Optimal,Overweight,Non-smoker
Dead,Cancer,60,Male,52,69.5,209,82,142,141,0,68,301,High,High,Overweight,Non-smoker
Alive,,,Female,43,61.5,102,86,135,91,5,,209,Borderline,Normal,Normal,Light (1-5)
Alive,,,Male,37,70.75,197,92,142,130,0,,,,High,Overweight,Non-smoker
Alive,,66,Male,36,66.75,152,78,156,113,0,,,,High,Overweight,Non-smoker
Alive,,,Male,51,68.75,199,88,122,138,0,,173,Desirable,Normal,Overweight,Non-smoker
Alive,,69,Female,41,57.5,112,88,132,112,5,,238,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,44,60,114,90,158,105,0,,,,High,Normal,Non-smoker
Dead,Coronary Heart Disease,75,Male,51,68.75,181,84,123,126,20,77,196,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Other,,Female,57,60,170,106,188,156,0,71,290,High,High,Overweight,Non-smoker
Dead,Other,,Male,42,67.5,151,72,142,108,25,70,228,Borderline,High,Normal,Heavy (16-25)
Alive,,63,Female,39,63,149,86,120,124,0,,230,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,54,65,147,84,132,112,0,,200,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,52,Male,52,64.5,132,112,172,103,0,58,223,Borderline,High,Normal,Non-smoker
Alive,,65,Female,39,65,125,98,166,98,5,,225,Borderline,High,Normal,Light (1-5)
Alive,,,Female,34,63,121,72,112,101,10,,238,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Female,46,64,128,74,140,103,10,,200,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,36,68,159,70,104,114,0,,180,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,45,66,172,74,132,130,0,,230,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,84,Female,54,65.5,139,90,158,109,0,86,225,Borderline,High,Normal,Non-smoker
Alive,,,Female,44,65.5,145,92,152,113,0,,221,Borderline,High,Overweight,Non-smoker
Alive,,,Female,38,64.25,127,80,136,102,0,,242,High,Normal,Normal,Non-smoker
Alive,,,Male,40,69.25,170,74,132,115,0,,221,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,35,64.25,152,70,102,123,1,,163,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Female,48,62,143,88,152,123,0,,200,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,40,Male,36,66.75,175,98,172,130,25,56,271,High,High,Overweight,Heavy (16-25)
Alive,,,Male,39,64.5,142,78,120,111,40,,242,High,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,73,Male,51,64.75,171,74,134,134,20,77,234,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,32,68.75,160,80,112,111,15,,255,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,37,61,163,72,118,146,0,,217,Borderline,Optimal,Overweight,Non-smoker
Dead,Other,,Male,39,67.5,147,86,114,105,30,67,232,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,34,60.5,168,84,132,154,5,,263,High,Normal,Overweight,Light (1-5)
Dead,Cancer,,Male,48,67.25,165,86,154,118,0,70,182,Desirable,High,Overweight,Non-smoker
Alive,,75,Male,53,67,148,76,136,106,1,,213,Borderline,Normal,Normal,Light (1-5)
Dead,Coronary Heart Disease,67,Male,55,69.5,136,88,138,92,0,69,171,Desirable,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,68,Female,52,65.75,157,80,142,123,0,82,301,High,High,Overweight,Non-smoker
Alive,,,Female,36,62,174,84,120,150,0,,232,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,35,66.5,141,68,116,107,10,,150,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Female,51,61,173,94,152,154,0,,242,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,58,58.5,114,90,162,111,0,74,284,High,High,Overweight,Non-smoker
Alive,,,Female,45,62.75,146,88,134,126,25,,330,High,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,58,Male,54,68.25,172,90,138,119,20,66,255,High,High,Overweight,Heavy (16-25)
Alive,,,Male,53,65.25,162,88,138,124,20,,220,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,36,60.75,135,84,132,124,1,,,,Normal,Overweight,Light (1-5)
Alive,,,Male,48,65.5,171,88,134,131,0,,233,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,49,60.75,110,86,116,101,10,,192,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,30,62.25,102,86,120,88,0,,138,Desirable,Normal,Underweight,Non-smoker
Dead,Other,,Male,32,68.25,156,98,132,108,40,54,200,Borderline,High,Normal,Very Heavy (> 25)
Alive,,,Female,36,64,138,68,110,111,20,,163,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,57,Male,33,70,205,88,126,135,0,,220,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,61,Male,43,70.25,165,70,116,109,20,65,192,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,56,59.25,142,100,136,134,,88,,,High,Overweight,
Alive,,,Male,31,72,183,96,156,114,20,,198,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Male,35,71.75,225,94,136,143,20,,238,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,34,72.25,218,94,142,135,20,,258,High,High,Overweight,Heavy (16-25)
Alive,,,Female,32,63.25,162,66,114,135,0,,,,Optimal,Overweight,Non-smoker
Alive,,,Female,37,64.25,141,80,118,114,0,,282,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,53,Male,53,61.5,106,88,138,89,0,77,205,Borderline,Normal,Underweight,Non-smoker
Alive,,57,Male,45,66.5,174,86,134,129,40,,278,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,33,63,98,58,110,82,0,,173,Desirable,Optimal,Underweight,Non-smoker
Dead,Cancer,,Female,30,64.5,125,72,146,101,20,58,184,Desirable,High,Normal,Heavy (16-25)
Alive,,,Female,43,64,139,82,134,112,20,,271,High,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,38,63,123,74,118,103,20,70,248,High,Optimal,Normal,Heavy (16-25)
Alive,,78,Female,58,60.75,133,70,124,122,0,,317,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,55,69.5,186,76,114,126,15,83,194,Desirable,Optimal,Overweight,Moderate (6-15)
Dead,Cancer,,Male,35,73,160,70,128,96,20,59,269,High,Normal,Normal,Heavy (16-25)
Alive,,,Male,38,67,140,70,128,100,20,,229,Borderline,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,63,Female,41,59.5,117,80,116,110,15,65,200,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,37,62.75,147,80,118,127,0,,,,Normal,Overweight,Non-smoker
Alive,,,Female,56,63,153,84,146,128,0,,313,High,High,Overweight,Non-smoker
Alive,,,Female,40,62.25,127,82,118,109,10,,213,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,32,64,138,94,132,111,0,,237,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,57,69,136,96,158,92,0,75,215,Borderline,High,Normal,Non-smoker
Dead,Cancer,72,Male,56,66,167,88,138,124,0,80,284,High,Normal,Overweight,Non-smoker
Alive,,,Male,49,65.5,148,70,130,113,5,,205,Borderline,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,73,Female,53,64,135,84,142,109,20,75,268,High,High,Normal,Heavy (16-25)
Dead,Other,,Male,53,69.5,168,90,146,114,35,77,305,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,45,66.5,141,74,104,107,0,,211,Borderline,Optimal,Normal,Non-smoker
Alive,,77,Female,53,62.75,143,90,166,123,0,,304,High,High,Overweight,Non-smoker
Alive,,,Female,33,64.5,161,80,128,130,0,,175,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,39,67,184,88,140,131,20,,250,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,37,61.75,142,94,156,127,0,,217,Borderline,High,Overweight,Non-smoker
Alive,,,Female,59,60.25,139,76,136,128,0,,313,High,Normal,Overweight,Non-smoker
Alive,,,Female,49,63,127,96,164,106,0,,326,High,High,Normal,Non-smoker
Alive,,,Female,32,63.5,110,74,148,92,15,,263,High,High,Normal,Moderate (6-15)
Alive,,,Male,42,69,182,96,138,123,10,,180,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Male,30,68.5,193,74,126,134,0,,173,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Male,50,64.75,156,98,152,122,15,76,250,High,High,Overweight,Moderate (6-15)
Dead,Other,,Female,57,58.5,144,70,116,140,0,83,276,High,Optimal,Overweight,Non-smoker
Alive,,,Female,44,60.5,125,72,114,115,0,,278,High,Optimal,Overweight,Non-smoker
Alive,,,Female,32,61,153,80,140,137,,,,,Normal,Overweight,
Alive,,,Female,39,65.75,150,72,106,117,0,,246,High,Optimal,Overweight,Non-smoker
Alive,,,Female,36,61.75,114,84,135,102,5,,184,Desirable,Normal,Normal,Light (1-5)
Alive,,,Male,48,65,179,88,126,137,15,,171,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,64,Male,48,67.5,162,84,142,116,0,,246,High,High,Overweight,Non-smoker
Alive,,,Female,46,65.25,136,88,152,106,0,,234,Borderline,High,Normal,Non-smoker
Dead,Other,,Male,50,66.25,191,92,158,141,,82,,,High,Overweight,
Dead,Cerebral Vascular Disease,73,Female,55,64.5,130,74,154,105,0,87,334,High,High,Normal,Non-smoker
Dead,Coronary Heart Disease,76,Female,56,63.5,126,80,136,105,20,84,284,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,39,65.25,134,64,112,105,20,,266,High,Optimal,Normal,Heavy (16-25)
Alive,,,Female,40,64.25,142,84,136,115,15,,242,High,Normal,Overweight,Moderate (6-15)
Dead,Other,,Female,54,61.5,143,88,142,128,0,86,292,High,High,Overweight,Non-smoker
Alive,,,Female,40,64,149,86,122,120,10,,238,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,45,Female,45,69.5,131,76,136,91,0,,217,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,34,65,139,84,128,106,20,,234,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Male,34,65.75,130,74,112,99,,66,,,Optimal,Normal,
Alive,,58,Female,40,60.25,111,80,116,102,0,,167,Desirable,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,64,Female,44,61.5,172,96,148,154,15,76,,,High,Overweight,Moderate (6-15)
Alive,,69,Male,41,68,182,86,130,126,20,,250,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,41,63.25,222,94,135,185,5,,221,Borderline,High,Overweight,Light (1-5)
Alive,,55,Female,35,62.5,107,70,124,92,0,,213,Borderline,Normal,Normal,Non-smoker
Alive,,62,Female,52,59.25,143,88,156,135,5,,296,High,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,50,Male,50,69,195,98,146,132,,68,,,High,Overweight,
Dead,Coronary Heart Disease,61,Female,39,64.25,156,78,128,126,0,63,219,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,38,62,138,78,124,119,0,,200,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,51,Female,49,57.5,177,110,180,177,0,73,,,High,Overweight,Non-smoker
Alive,,,Male,50,68.5,192,100,160,133,0,,292,High,High,Overweight,Non-smoker
Alive,,46,Male,32,66.75,158,80,124,117,0,,300,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,35,62.5,120,68,118,103,20,53,165,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Male,47,69.25,176,86,136,119,30,,198,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,45,68.5,178,70,108,124,0,,208,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,30,63,113,80,126,94,0,,196,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,41,64.25,118,64,104,95,15,,192,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Female,40,61,128,96,152,114,0,,234,Borderline,High,Overweight,Non-smoker
Alive,,,Female,40,55.5,124,68,114,132,15,,234,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,65,Female,57,62.5,152,78,174,131,0,,173,Desirable,High,Overweight,Non-smoker
Dead,Other,,Male,57,65,155,124,220,118,0,69,192,Desirable,High,Overweight,Non-smoker
Alive,,,Male,45,66.5,164,100,156,121,0,,221,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,54,Male,44,67.75,208,84,156,149,20,60,209,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,54,64,149,84,156,120,0,,292,High,High,Overweight,Non-smoker
Alive,,,Male,33,72.25,198,68,118,123,,,194,Desirable,Optimal,Overweight,
Alive,,,Female,49,64,147,84,136,119,0,,,,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,69,Male,49,63.75,173,74,126,138,40,79,221,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,44,75.5,177,62,122,101,0,,199,Desirable,Normal,Normal,Non-smoker
Alive,,65,Female,45,62.5,162,94,148,140,25,,335,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,42,68.25,171,78,136,122,0,54,217,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,46,61.5,127,96,148,113,0,,315,High,High,Overweight,Non-smoker
Alive,,,Female,42,64,133,68,124,107,0,,255,High,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,58,Male,44,72.25,200,94,138,124,0,66,200,Borderline,High,Overweight,Non-smoker
Alive,,,Female,40,68.25,153,68,124,109,0,,200,Borderline,Normal,Normal,Non-smoker
Alive,,50,Male,38,75,209,68,112,119,,,,,Optimal,Overweight,
Alive,,,Female,39,68.25,131,74,112,94,,,,,Optimal,Normal,
Dead,Cancer,57,Male,49,65,187,90,134,143,10,79,250,High,High,Overweight,Moderate (6-15)
Alive,,,Female,48,65.5,166,92,138,130,0,,276,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,58,Female,48,61.25,139,84,142,124,0,60,288,High,High,Overweight,Non-smoker
Alive,,,Female,41,63.25,143,88,134,119,0,,224,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,59,Male,53,66,151,98,168,112,30,61,259,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,53,71.5,194,74,122,124,15,,209,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Female,39,61,150,80,120,134,5,65,184,Desirable,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,82,Female,56,61,174,98,188,155,0,86,338,High,High,Overweight,Non-smoker
Alive,,,Male,29,70.5,172,96,188,113,0,,167,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,50,62.75,241,150,242,208,0,58,213,Borderline,High,Overweight,Non-smoker
Alive,,60,Female,38,63.5,182,90,144,152,5,,240,High,High,Overweight,Light (1-5)
Alive,,,Female,41,63.75,124,72,112,103,0,,243,High,Optimal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,55,66.25,140,70,120,106,0,67,200,Borderline,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,49,Female,47,59.25,147,106,156,139,0,63,288,High,High,Overweight,Non-smoker
Alive,,,Female,57,61.5,127,80,168,113,0,,321,High,High,Overweight,Non-smoker
Dead,Other,,Female,36,64.75,144,68,134,116,0,58,180,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,50,66,162,80,128,120,15,60,163,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Female,32,59,114,70,124,108,10,,266,High,Normal,Normal,Moderate (6-15)
Alive,,,Male,30,73.75,210,80,130,127,0,,198,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,63,Female,53,60,146,120,178,134,0,65,326,High,High,Overweight,Non-smoker
Alive,,,Female,40,59.75,137,80,120,129,5,,200,Borderline,Normal,Overweight,Light (1-5)
Alive,,48,Male,36,67,181,86,134,129,40,,250,High,Normal,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,51,60.5,131,82,180,120,0,69,213,Borderline,High,Overweight,Non-smoker
Alive,,,Female,33,60.5,122,64,112,112,15,,196,Desirable,Optimal,Overweight,Moderate (6-15)
Dead,Cancer,,Male,40,69.25,186,86,128,126,0,64,228,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,50,67.25,181,116,204,129,0,68,200,Borderline,High,Overweight,Non-smoker
Alive,,,Female,52,66.25,120,78,144,91,0,,342,High,High,Normal,Non-smoker
Alive,,,Female,38,62.25,154,80,124,133,0,,234,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,53,60,145,94,132,133,0,63,230,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,60,Male,40,67,128,70,120,91,0,66,184,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,43,70,188,80,130,127,0,,230,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,49,60,137,136,234,126,,55,,,High,Overweight,
Dead,Cancer,,Female,48,64.5,125,100,186,101,0,72,217,Borderline,High,Normal,Non-smoker
Dead,Coronary Heart Disease,52,Female,46,61.75,154,90,140,138,20,74,359,High,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,73,Male,53,67,202,94,152,144,10,75,167,Desirable,High,Overweight,Moderate (6-15)
Alive,,72,Female,42,63,157,78,120,131,5,,242,High,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,49,Male,35,69.75,174,76,134,118,15,57,209,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Male,29,67.5,173,90,140,124,20,,221,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,35,59.5,173,88,134,163,0,,196,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,32,60,132,80,120,114,0,,165,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,52,Male,48,66.25,208,100,160,154,40,56,265,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,33,61,179,98,148,160,0,,182,Desirable,High,Overweight,Non-smoker
Alive,,,Female,37,64.5,117,82,136,94,0,,192,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,35,60,137,84,154,126,0,,226,Borderline,High,Overweight,Non-smoker
Alive,,74,Male,52,69.5,167,86,126,113,0,,213,Borderline,Normal,Overweight,Non-smoker
Alive,,37,Male,35,64.75,192,100,142,150,0,,211,Borderline,High,Overweight,Non-smoker
Alive,,,Male,42,72.5,222,80,120,138,20,,200,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,45,65.5,154,82,148,118,20,65,234,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,49,63.25,137,86,138,114,1,,238,Borderline,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,49,65.25,136,58,110,104,0,81,209,Borderline,Optimal,Normal,Non-smoker
Alive,,,Male,46,66.5,164,98,138,121,30,,238,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,33,64.25,140,72,130,113,0,,177,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,55,Male,41,69.75,199,108,162,134,0,57,276,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,32,71.5,203,72,112,129,20,62,326,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,46,65,154,110,182,120,5,,263,High,High,Overweight,Light (1-5)
Alive,,,Male,45,65.5,146,92,152,111,10,,238,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,32,61.75,126,80,128,113,20,,259,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,29,65.25,121,76,124,95,20,,,,Normal,Normal,Heavy (16-25)
Alive,,,Female,45,62.25,142,94,132,122,5,,284,High,High,Overweight,Light (1-5)
Alive,,,Female,37,61.25,107,80,138,96,20,,209,Borderline,Normal,Normal,Heavy (16-25)
Alive,,52,Male,36,68.75,189,96,146,131,20,,284,High,High,Overweight,Heavy (16-25)
Dead,Other,,Female,60,60.25,152,102,166,139,0,92,255,High,High,Overweight,Non-smoker
Alive,,75,Female,45,64.75,136,80,128,110,0,,238,Borderline,Normal,Overweight,Non-smoker
Alive,,71,Male,45,65,180,84,130,137,5,,296,High,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,52,72,247,104,154,153,20,68,188,Desirable,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,43,70.5,195,78,118,128,25,69,288,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,44,68.75,135,72,130,94,10,,238,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,48,65.75,216,88,138,169,0,,150,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,36,63.75,120,78,136,100,15,,209,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,34,64,102,78,114,82,20,,248,High,Optimal,Underweight,Heavy (16-25)
Alive,,,Female,41,66.5,178,90,138,135,0,,260,High,High,Overweight,Non-smoker
Alive,,,Male,34,65.75,137,80,116,105,60,,,,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,40,63.25,119,82,156,99,0,,184,Desirable,High,Normal,Non-smoker
Alive,,,Female,35,60.5,108,82,128,99,5,,,,Normal,Normal,Light (1-5)
Alive,,,Male,49,67.5,169,88,152,121,0,,246,High,High,Overweight,Non-smoker
Alive,,,Male,32,66.25,203,82,134,150,45,,179,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,45,66,127,96,148,96,,,,,High,Normal,
Alive,,,Female,32,60,108,62,130,99,0,,,,Normal,Normal,Non-smoker
Alive,,,Male,38,64.25,145,104,162,113,5,,163,Desirable,High,Overweight,Light (1-5)
Dead,Cancer,,Male,46,67.75,174,84,116,124,25,76,255,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,44,60,105,86,122,96,0,,265,High,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,80,Female,58,66,160,92,152,121,1,82,317,High,High,Overweight,Light (1-5)
Dead,Cancer,,Male,48,66.5,144,92,148,107,0,62,,,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,75,Female,55,65,137,92,184,107,5,81,238,Borderline,High,Normal,Light (1-5)
Dead,Cancer,,Female,52,64.5,199,106,176,160,0,74,234,Borderline,High,Overweight,Non-smoker
Alive,,,Male,45,67.5,151,96,136,108,0,,196,Desirable,High,Normal,Non-smoker
Alive,,,Male,32,71,187,76,132,119,0,,176,Desirable,Normal,Overweight,Non-smoker
Dead,Other,80,Male,58,64.75,145,78,136,113,10,90,228,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Male,37,69.75,122,80,134,82,20,69,167,Desirable,Normal,Underweight,Heavy (16-25)
Dead,Other,56,Male,48,66,161,90,132,119,20,76,280,High,High,Overweight,Heavy (16-25)
Alive,,,Male,42,66.25,127,74,116,94,20,,180,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,38,Male,34,71,161,88,134,103,20,,228,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,39,67.5,139,84,136,99,0,,184,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,48,64.5,154,100,184,120,40,,255,High,High,Overweight,Very Heavy (> 25)
Dead,Other,78,Male,48,64.5,182,88,184,142,5,80,233,Borderline,High,Overweight,Light (1-5)
Alive,,,Female,51,65,121,72,118,95,0,,234,Borderline,Optimal,Normal,Non-smoker
Alive,,74,Male,54,70,166,72,108,109,5,,267,High,Optimal,Normal,Light (1-5)
Alive,,,Female,35,61.25,158,94,160,141,0,,213,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,59,Male,39,63,,80,142,,0,63,221,Borderline,High,,Non-smoker
Dead,Cerebral Vascular Disease,,Female,54,65,143,80,154,112,0,68,301,High,High,Overweight,Non-smoker
Alive,,,Female,40,64,136,58,104,110,0,,238,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,39,64.75,132,80,128,106,1,,196,Desirable,Normal,Normal,Light (1-5)
Dead,Cancer,,Female,48,63.25,189,88,130,158,0,70,255,High,Normal,Overweight,Non-smoker
Alive,,74,Male,50,70,165,84,120,109,0,,267,High,Normal,Normal,Non-smoker
Alive,,,Male,48,68.75,172,78,140,119,0,,301,High,Normal,Overweight,Non-smoker
Dead,Other,,Male,59,68,196,96,146,136,0,75,255,High,High,Overweight,Non-smoker
Dead,Cancer,52,Female,48,67,124,70,120,91,0,56,213,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,42,65,132,68,112,101,0,,186,Desirable,Optimal,Normal,Non-smoker
Alive,,68,Male,44,66.25,148,76,112,110,5,,267,High,Optimal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,65,Male,43,68.25,128,80,132,89,25,67,192,Desirable,Normal,Underweight,Heavy (16-25)
Dead,Coronary Heart Disease,69,Male,45,70,188,82,118,124,0,73,200,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,59,71,162,84,128,103,0,75,221,Borderline,Normal,Normal,Non-smoker
Alive,,55,Male,33,67,158,76,112,113,25,,221,Borderline,Optimal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,48,61,117,108,176,104,,52,,,High,Normal,
Alive,,,Female,31,62,120,68,112,103,15,,171,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,66,Female,36,62,115,60,106,99,10,,,,Optimal,Normal,Moderate (6-15)
Alive,,,Male,29,67,153,72,156,109,0,,271,High,High,Normal,Non-smoker
Dead,Cancer,64,Female,44,62.75,132,74,114,114,0,76,192,Desirable,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,57,Male,43,69.25,203,102,178,137,20,61,221,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,49,65,141,90,140,110,0,,223,Borderline,High,Overweight,Non-smoker
Alive,,,Male,42,69.5,156,88,154,105,0,,209,Borderline,High,Normal,Non-smoker
Alive,,,Female,39,62,121,78,128,104,10,,196,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,59,61,181,88,152,162,0,,226,Borderline,High,Overweight,Non-smoker
Alive,,,Female,35,62.5,109,80,136,94,5,,234,Borderline,Normal,Normal,Light (1-5)
Dead,Other,,Female,46,62.25,131,82,152,113,0,68,232,Borderline,High,Overweight,Non-smoker
Alive,,,Male,34,71.25,162,60,120,103,25,,,,Normal,Normal,Heavy (16-25)
Dead,Other,,Female,46,66.5,102,54,82,77,5,54,154,Desirable,Optimal,Underweight,Light (1-5)
Dead,Other,,Female,33,62.5,113,62,112,97,15,57,175,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Male,43,69,198,90,124,134,20,,209,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,38,64.25,113,80,124,88,0,,221,Borderline,Normal,Underweight,Non-smoker
Alive,,,Male,37,69.5,182,80,120,123,45,,213,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,36,65.5,144,74,116,110,0,,150,Desirable,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,69,Female,55,63.25,210,110,172,175,0,75,267,High,High,Overweight,Non-smoker
Alive,,,Female,52,64.25,144,80,140,116,5,,225,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,50,62.75,175,86,138,151,0,,250,High,Normal,Overweight,Non-smoker
Alive,,,Male,34,65.25,131,80,128,100,0,,,,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,62,Male,32,68.25,134,64,108,93,0,64,288,High,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,61,Male,33,68.75,129,70,138,90,5,63,199,Desirable,Normal,Underweight,Light (1-5)
Alive,,,Female,47,63.25,127,84,138,106,20,,280,High,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,63,Male,41,67.25,188,94,138,134,5,69,167,Desirable,High,Overweight,Light (1-5)
Dead,Cancer,,Male,52,67,177,86,116,126,0,80,182,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,52,65.25,141,88,130,110,0,,255,High,Normal,Overweight,Non-smoker
Alive,,,Female,51,61.25,133,70,112,119,20,,246,High,Optimal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,56,59.75,142,80,148,126,0,78,288,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,55,Female,49,59.25,104,94,154,98,0,57,258,High,High,Normal,Non-smoker
Dead,Coronary Heart Disease,79,Male,59,71.25,206,90,136,131,0,81,,,High,Overweight,Non-smoker
Alive,,,Female,46,59.5,139,72,134,131,0,,217,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,58,Male,58,69.25,175,96,148,118,20,80,171,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,42,65,173,92,160,135,0,,263,High,High,Overweight,Non-smoker
Alive,,,Female,30,64,134,74,112,108,5,,138,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Female,36,60,135,82,132,124,0,,194,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,53,Female,41,59,132,78,142,125,20,69,267,High,High,Overweight,Heavy (16-25)
Alive,,,Female,37,69,160,82,146,111,0,,228,Borderline,High,Overweight,Non-smoker
Alive,,,Male,41,68.25,167,80,120,116,0,,138,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,48,63,165,90,132,138,0,64,213,Borderline,High,Overweight,Non-smoker
Alive,,52,Female,50,64,123,90,158,99,0,,246,High,High,Normal,Non-smoker
Alive,,68,Female,42,69.5,170,80,130,118,0,,234,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,54,66,160,82,128,119,0,76,213,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,54,66.25,154,96,142,117,15,,,,High,Overweight,Moderate (6-15)
Alive,,86,Female,56,59,180,88,134,170,0,,317,High,Normal,Overweight,Non-smoker
Alive,,,Female,32,58.75,98,72,116,95,0,,223,Borderline,Optimal,Normal,Non-smoker
Dead,Other,,Female,51,64.25,162,120,210,131,0,69,330,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,47,62,148,102,172,128,0,67,213,Borderline,High,Overweight,Non-smoker
Alive,,80,Female,54,61.5,123,100,180,110,0,,367,High,High,Overweight,Non-smoker
Alive,,,Female,35,60.75,129,76,146,118,20,,309,High,High,Overweight,Heavy (16-25)
Alive,,,Female,57,67,144,86,136,106,0,,292,High,Normal,Normal,Non-smoker
Alive,,,Female,39,61.25,122,72,90,109,0,,192,Desirable,Optimal,Normal,Non-smoker
Dead,Other,,Female,31,65.25,123,58,106,96,20,43,209,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,60,Female,32,64,182,84,124,147,5,,167,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Male,41,74.75,204,74,132,120,0,,246,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,60,Female,56,65,136,74,122,106,0,86,255,High,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,63,Male,51,71.5,152,70,118,97,20,79,313,High,Optimal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,50,62.25,124,78,140,107,0,82,267,High,Normal,Normal,Non-smoker
Alive,,,Male,40,68.25,167,116,170,116,0,,,,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,58,Male,56,68.5,135,68,122,94,0,82,232,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,65,Male,49,65.75,187,92,146,143,0,79,179,Desirable,High,Overweight,Non-smoker
Alive,,,Female,54,66,114,78,146,86,0,,246,High,High,Underweight,Non-smoker
Alive,,,Female,43,62.75,141,62,106,122,1,,179,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Female,41,58.75,111,76,146,108,0,,184,Desirable,High,Normal,Non-smoker
Alive,,,Female,35,63,94,70,120,78,0,,,,Normal,Underweight,Non-smoker
Dead,Cerebral Vascular Disease,60,Female,58,65.25,200,120,196,156,5,80,317,High,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,41,Male,39,70,181,112,170,119,0,63,250,High,High,Overweight,Non-smoker
Alive,,,Female,49,62,112,64,114,97,15,,223,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Male,37,67,190,80,134,136,5,,209,Borderline,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,83,Female,61,61.5,170,88,148,152,0,85,292,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,71,Female,51,59.5,131,78,120,124,5,73,213,Borderline,Normal,Overweight,Light (1-5)
Alive,,72,Male,48,72.5,192,98,136,119,50,,321,High,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,62,Male,44,67.5,176,76,118,126,0,70,255,High,Optimal,Overweight,Non-smoker
Dead,Unknown,,Female,50,67.5,188,76,140,138,0,66,223,Borderline,Normal,Overweight,Non-smoker
Alive,,65,Male,39,67.25,162,76,116,116,20,,184,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,76,Male,60,71.5,192,92,156,122,0,86,209,Borderline,High,Overweight,Non-smoker
Dead,Cancer,62,Female,60,62.5,154,88,150,133,0,84,217,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,38,63.5,146,80,112,122,0,70,246,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,58,Male,46,73.25,194,76,136,117,0,72,223,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,40,69.5,176,72,146,119,0,,171,Desirable,High,Overweight,Non-smoker
Alive,,,Female,42,61.25,126,68,112,113,20,,284,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,42,67.25,149,58,114,106,40,,232,Borderline,Optimal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,64,Female,46,66.25,149,80,132,113,0,76,271,High,Normal,Overweight,Non-smoker
Alive,,,Male,45,65.25,138,66,112,105,15,,209,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Female,39,60.25,121,80,118,111,0,,171,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,34,65.75,163,90,142,127,5,,,,High,Overweight,Light (1-5)
Alive,,,Female,57,60.75,169,80,150,155,0,,228,Borderline,High,Overweight,Non-smoker
Alive,,69,Female,41,66.5,169,90,142,128,0,,233,Borderline,High,Overweight,Non-smoker
Alive,,,Female,35,69,154,80,120,107,5,,221,Borderline,Normal,Normal,Light (1-5)
Dead,Cancer,,Female,52,61.5,164,68,132,146,0,82,242,High,Normal,Overweight,Non-smoker
Alive,,,Female,32,62.5,105,70,112,91,0,,276,High,Optimal,Normal,Non-smoker
Alive,,,Male,52,73,175,74,132,105,0,,225,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,51,62.75,153,70,128,132,0,,276,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,36,63.5,132,74,104,110,20,68,181,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,52,70.5,196,96,136,129,0,,200,Borderline,High,Overweight,Non-smoker
Alive,,,Female,52,65,165,88,132,129,0,,194,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,39,66.25,147,74,114,109,20,,225,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Male,37,71,146,78,134,93,35,,200,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,32,65,118,66,108,92,0,,209,Borderline,Optimal,Normal,Non-smoker
Alive,,,Male,32,73.25,145,74,140,87,20,,200,Borderline,Normal,Underweight,Heavy (16-25)
Alive,,69,Female,41,60.25,128,86,128,117,0,,221,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,34,60.5,160,74,132,147,0,,209,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,44,64,130,86,136,105,1,,242,High,Normal,Normal,Light (1-5)
Alive,,,Female,38,63,159,70,146,133,5,,250,High,High,Overweight,Light (1-5)
Alive,,,Female,52,60.5,129,92,160,118,0,,223,Borderline,High,Overweight,Non-smoker
Dead,Other,87,Female,59,59,120,104,174,113,0,91,234,Borderline,High,Overweight,Non-smoker
Alive,,,Male,50,62.25,141,92,142,116,0,,188,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,54,65.25,138,80,142,108,0,78,271,High,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Male,57,62.75,143,85,140,117,0,81,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,40,56.5,129,96,164,133,0,,275,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,69,Female,49,61.5,152,90,148,136,0,73,225,Borderline,High,Overweight,Non-smoker
Alive,,,Female,55,63,149,76,138,124,0,,234,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,29,69.25,186,80,134,126,0,,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,30,62.75,125,60,122,108,0,,175,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,40,60.25,126,80,110,116,0,,198,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,73,Male,49,68.5,171,84,116,119,0,77,276,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,44,69,146,70,124,99,15,60,199,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,44,69.5,208,100,156,141,0,,209,Borderline,High,Overweight,Non-smoker
Alive,,66,Female,48,63.25,188,82,142,157,0,,292,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,55,Male,51,72.25,215,84,140,134,30,65,236,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,61,Female,41,63,154,88,116,128,0,,184,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,39,Male,31,67.5,205,92,154,146,20,49,534,High,High,Overweight,Heavy (16-25)
Alive,,,Female,30,62.5,129,68,120,111,0,,184,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,30,62,110,56,96,95,5,,154,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Male,37,66,130,80,124,96,20,,192,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,48,61.25,122,78,140,109,0,,163,Desirable,Normal,Normal,Non-smoker
Alive,,58,Male,38,67.5,205,110,154,146,0,,232,Borderline,High,Overweight,Non-smoker
Alive,,,Female,46,61.5,160,82,124,143,0,,213,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,48,71,150,86,138,96,0,,232,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,29,70.25,243,90,162,160,20,,163,Desirable,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,61,Male,49,72,191,110,190,119,25,63,271,High,High,Overweight,Heavy (16-25)
Alive,,47,Female,29,63.75,108,70,132,90,20,,159,Desirable,Normal,Underweight,Heavy (16-25)
Alive,,,Female,34,62.75,110,82,114,95,15,,238,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,40,66.25,189,74,134,143,20,,209,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,34,73,170,86,130,102,0,,209,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,41,64,142,76,120,115,15,,209,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,55,Male,29,75.5,204,90,140,116,0,,246,High,High,Overweight,Non-smoker
Alive,,,Female,30,67.5,159,64,104,117,0,,150,Desirable,Optimal,Overweight,Non-smoker
Alive,,83,Male,57,66,177,84,148,131,0,,209,Borderline,High,Overweight,Non-smoker
Alive,,,Female,30,61,137,80,120,122,0,,225,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,51,65.75,154,80,124,120,0,,,,Normal,Overweight,Non-smoker
Alive,,,Female,53,65.5,141,78,118,110,5,,209,Borderline,Optimal,Overweight,Light (1-5)
Dead,Cancer,,Female,58,65.25,141,102,222,110,0,74,200,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,58,Female,54,64.5,232,110,180,187,0,68,232,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,71,Female,57,61,119,60,98,106,0,75,313,High,Optimal,Normal,Non-smoker
Alive,,,Female,33,66.75,137,80,116,104,30,,192,Desirable,Normal,Normal,Very Heavy (> 25)
Alive,,52,Female,30,65.25,139,80,130,109,10,,194,Desirable,Normal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,72,Male,44,70,173,86,122,114,0,74,284,High,Normal,Overweight,Non-smoker
Alive,,75,Female,45,62.5,145,80,128,125,0,,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,35,66,124,68,94,94,,,165,Desirable,Optimal,Normal,
Alive,,,Female,45,65.25,138,108,180,108,10,,223,Borderline,High,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,54,72.5,203,108,150,126,0,76,211,Borderline,High,Overweight,Non-smoker
Alive,,,Female,57,65,172,84,138,134,0,,284,High,Normal,Overweight,Non-smoker
Dead,Other,66,Female,40,65,113,82,138,88,5,70,175,Desirable,Normal,Underweight,Light (1-5)
Dead,Coronary Heart Disease,76,Male,48,67.5,150,72,112,107,20,78,217,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Male,40,71,161,82,138,103,0,,228,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,49,67.25,147,78,114,105,30,,178,Desirable,Optimal,Normal,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,58,65,120,78,110,94,0,86,263,High,Optimal,Normal,Non-smoker
Alive,,,Female,57,66.25,142,108,182,108,0,,350,High,High,Normal,Non-smoker
Alive,,65,Female,45,64,165,88,128,133,0,,301,High,Normal,Overweight,Non-smoker
Alive,,,Female,49,57.75,92,84,126,92,0,,250,High,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,49,Male,33,67,159,80,130,114,20,51,180,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,55,60,147,74,130,135,0,73,276,High,Normal,Overweight,Non-smoker
Alive,,,Female,46,64.75,169,94,154,136,0,,173,Desirable,High,Overweight,Non-smoker
Alive,,59,Male,45,72.25,212,96,136,132,0,,196,Desirable,High,Overweight,Non-smoker
Alive,,,Female,31,65,115,80,120,90,5,,184,Desirable,Normal,Underweight,Light (1-5)
Alive,,67,Female,47,64.5,193,92,156,156,0,,317,High,High,Overweight,Non-smoker
Alive,,,Female,47,64.25,148,88,126,119,0,,225,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,36,63,127,70,122,106,0,,172,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,37,68.75,149,72,124,103,20,,300,High,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,45,64.75,130,78,118,105,15,71,368,High,Optimal,Normal,Moderate (6-15)
Alive,,,Female,41,62,147,62,102,127,0,,200,Borderline,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,54,Female,44,64.5,134,106,172,108,0,66,194,Desirable,High,Normal,Non-smoker
Alive,,,Female,44,61.75,153,96,166,137,0,,209,Borderline,High,Overweight,Non-smoker
Alive,,,Female,39,64,155,96,152,125,0,,209,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,57,68.5,162,78,110,113,5,71,250,High,Optimal,Overweight,Light (1-5)
Alive,,,Male,50,65.75,162,102,142,124,,,,,High,Overweight,
Alive,,,Female,49,58.5,142,76,114,138,0,,242,High,Optimal,Overweight,Non-smoker
Alive,,54,Male,34,71.5,203,74,130,129,20,,226,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,70,Male,42,68.5,157,78,132,109,45,74,184,Desirable,Normal,Normal,Very Heavy (> 25)
Alive,,59,Female,47,64.5,150,96,158,121,0,,209,Borderline,High,Overweight,Non-smoker
Alive,,,Male,37,65.5,172,76,118,131,0,,178,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,40,69.25,145,70,120,98,40,,209,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,52,66.5,154,72,118,117,5,,,,Optimal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,62,Male,60,66.75,180,92,164,133,,64,,,High,Overweight,
Alive,,,Female,45,63,129,62,100,108,0,,217,Borderline,Optimal,Normal,Non-smoker
Alive,,71,Female,55,65.5,150,84,130,117,0,,234,Borderline,Normal,Overweight,Non-smoker
Alive,,53,Male,33,66.75,165,70,112,122,25,,243,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,36,68,126,68,120,90,5,,150,Desirable,Normal,Underweight,Light (1-5)
Alive,,,Male,37,72.5,176,80,140,109,0,,184,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,31,64.5,164,72,118,128,0,,228,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,51,63.25,173,84,130,144,20,,198,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,72,Male,48,70.25,163,70,108,107,0,,267,High,Optimal,Normal,Non-smoker
Alive,,,Female,39,67.5,138,64,104,101,20,,242,High,Optimal,Normal,Heavy (16-25)
Alive,,,Female,38,62.5,138,70,128,119,5,,194,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,39,62,133,84,124,115,0,,199,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,51,61.25,133,78,120,119,20,,221,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,53,68.5,210,78,128,146,20,79,150,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,60,Male,40,65.75,170,88,130,130,30,,255,High,Normal,Overweight,Very Heavy (> 25)
Alive,,65,Female,53,60,134,96,146,123,0,,182,Desirable,High,Overweight,Non-smoker
Dead,Other,,Female,57,62.5,167,92,140,144,0,85,233,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,36,66.75,191,68,178,141,0,46,221,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,59,62.75,162,110,200,140,0,71,196,Desirable,High,Overweight,Non-smoker
Alive,,64,Male,34,69.25,158,86,136,107,30,,188,Desirable,Normal,Normal,Very Heavy (> 25)
Alive,,,Male,55,66.5,176,78,138,130,5,,167,Desirable,Normal,Overweight,Light (1-5)
Dead,Cancer,,Female,42,63,190,74,132,158,20,50,200,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,34,72,162,68,108,101,15,,163,Desirable,Optimal,Normal,Moderate (6-15)
Dead,Other,58,Male,58,65.75,137,82,154,105,20,78,196,Desirable,High,Normal,Heavy (16-25)
Alive,,,Male,38,67,145,82,112,104,0,,,,Normal,Normal,Non-smoker
Alive,,,Female,47,61.5,87,70,120,78,0,,272,High,Normal,Underweight,Non-smoker
Dead,Coronary Heart Disease,74,Female,54,63.5,164,90,160,137,0,76,276,High,High,Overweight,Non-smoker
Dead,Other,,Female,50,64.75,156,96,160,126,0,82,192,Desirable,High,Overweight,Non-smoker
Dead,Other,47,Male,45,71,204,72,132,130,0,75,263,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Male,36,67,164,100,160,117,0,66,278,High,High,Overweight,Non-smoker
Alive,,,Male,42,69.5,188,86,136,127,0,,255,High,Normal,Overweight,Non-smoker
Alive,,,Female,46,62.5,120,82,136,103,0,,248,High,Normal,Normal,Non-smoker
Alive,,55,Female,31,61.25,136,90,120,121,5,,,,High,Overweight,Light (1-5)
Alive,,,Male,33,70.25,181,76,134,119,20,,179,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,47,69.5,180,84,124,122,1,,233,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,50,59.25,109,84,134,103,0,,263,High,Normal,Normal,Non-smoker
Alive,,,Female,32,63.5,142,72,102,118,10,,225,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,,Male,50,67.5,150,72,122,107,35,,163,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,45,64.75,128,100,160,103,0,63,276,High,High,Normal,Non-smoker
Dead,Other,,Female,33,56.25,71,90,116,73,0,61,192,Desirable,High,Underweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,48,64.5,136,80,120,110,10,56,234,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,59,63,161,92,190,134,0,,157,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Male,50,65.5,143,100,160,109,20,80,213,Borderline,High,Normal,Heavy (16-25)
Alive,,45,Male,31,69.75,156,90,136,105,20,,243,High,High,Normal,Heavy (16-25)
Alive,,,Male,32,66,156,88,132,116,0,,192,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,36,68.25,119,88,128,85,,40,,,Normal,Underweight,
Dead,Coronary Heart Disease,51,Male,35,68.25,139,80,134,97,0,63,243,High,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,76,Female,58,66,153,70,134,116,0,82,301,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,38,65.5,211,88,140,165,20,66,225,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,52,Male,52,64.5,181,70,112,141,30,64,180,Desirable,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Female,57,61.25,146,74,124,130,0,,225,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,59,Male,53,67,145,115,180,104,40,69,250,High,High,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,70,Female,48,66.25,155,70,114,117,0,72,263,High,Optimal,Overweight,Non-smoker
Alive,,,Female,40,60.25,148,84,114,136,0,,192,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,63,Male,51,67.25,179,96,170,128,15,73,255,High,High,Overweight,Moderate (6-15)
Alive,,54,Male,32,65,156,86,130,119,20,,221,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,58,Female,58,61,153,86,136,137,0,68,292,High,Normal,Overweight,Non-smoker
Alive,,74,Female,52,62,139,70,140,120,0,,243,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,85,Female,57,61,125,90,160,112,0,87,230,Borderline,High,Overweight,Non-smoker
Dead,Cancer,77,Male,55,66.25,175,80,130,130,15,87,226,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,40,65.75,132,92,142,103,0,,276,High,High,Normal,Non-smoker
Alive,,,Female,45,62.5,106,70,100,91,0,,225,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,51,62.5,117,80,150,101,0,,246,High,High,Normal,Non-smoker
Alive,,67,Female,47,62.25,147,86,150,127,0,,246,High,High,Overweight,Non-smoker
Alive,,61,Female,31,63,108,74,116,90,0,,215,Borderline,Optimal,Underweight,Non-smoker
Dead,Coronary Heart Disease,66,Male,54,71,169,100,158,108,0,80,192,Desirable,High,Normal,Non-smoker
Dead,Other,54,Male,54,68.5,212,92,138,147,0,78,180,Desirable,High,Overweight,Non-smoker
Alive,,52,Male,52,67.25,168,70,110,120,0,,196,Desirable,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Female,50,66.75,152,94,142,115,20,68,296,High,High,Overweight,Heavy (16-25)
Dead,Other,,Male,51,65.25,128,70,138,98,20,73,196,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,38,66.25,146,68,110,111,0,,196,Desirable,Optimal,Overweight,Non-smoker
Alive,,56,Male,44,67.5,171,76,128,122,20,,246,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,32,63.5,125,78,110,104,20,,184,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,64,Male,50,71,182,88,136,116,25,82,225,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,35,67.75,143,68,104,102,0,,292,High,Optimal,Normal,Non-smoker
Dead,Cancer,,Male,48,64.5,157,86,110,123,0,66,192,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,35,67.5,167,90,132,119,0,,282,High,High,Overweight,Non-smoker
Alive,,,Female,41,64.5,126,70,114,102,20,,171,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Other,59,Male,43,69.5,191,80,122,129,20,75,284,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,68,Female,46,66,159,80,110,120,20,76,301,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,36,63.75,134,80,114,112,20,,263,High,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,51,68,166,100,172,119,,55,,,High,Overweight,
Alive,,,Male,51,70.5,165,68,114,109,20,,223,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Male,45,68.75,151,96,138,105,0,,221,Borderline,High,Normal,Non-smoker
Alive,,,Female,47,67.75,181,88,136,133,5,,305,High,Normal,Overweight,Light (1-5)
Dead,Other,,Male,50,66.5,150,110,146,111,20,78,209,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,34,60.25,121,72,112,111,20,,205,Borderline,Optimal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,37,65.75,132,80,124,101,35,53,236,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,57,63,138,88,130,115,5,,221,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,38,66.25,123,90,150,93,25,,255,High,High,Normal,Heavy (16-25)
Alive,,,Male,33,69.25,183,90,132,124,0,,286,High,High,Overweight,Non-smoker
Alive,,,Female,48,60,147,84,136,135,0,,,,Normal,Overweight,Non-smoker
Alive,,,Female,29,69.25,164,80,126,114,0,,171,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,36,62.5,125,70,112,108,20,,213,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Male,35,72,164,96,134,102,20,,217,Borderline,High,Normal,Heavy (16-25)
Alive,,,Female,36,65,134,68,120,105,1,,223,Borderline,Normal,Normal,Light (1-5)
Alive,,,Female,46,61.75,139,76,124,124,0,,242,High,Normal,Overweight,Non-smoker
Alive,,,Female,48,65,138,90,120,108,30,,267,High,High,Normal,Very Heavy (> 25)
Alive,,,Female,41,56.5,102,70,110,105,0,,246,High,Optimal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,46,Male,42,65,148,84,118,113,20,74,276,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,50,68.5,184,70,110,128,0,,225,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,42,63.25,135,80,110,113,0,,178,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,47,69.5,155,88,128,105,0,,228,Borderline,Normal,Normal,Non-smoker
Alive,,59,Female,37,61.75,132,74,114,118,0,,292,High,Optimal,Overweight,Non-smoker
Alive,,80,Female,50,58.5,125,80,124,121,0,,238,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,49,65.5,131,86,136,102,0,75,267,High,Normal,Normal,Non-smoker
Alive,,,Female,43,61.75,156,80,102,139,5,,209,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,50,63,119,76,134,99,0,,234,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,45,64.25,172,80,118,139,0,,263,High,Normal,Overweight,Non-smoker
Alive,,,Female,43,61,147,94,134,131,0,,205,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,48,66,250,96,170,185,0,72,180,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,54,63,115,110,160,92,20,72,204,Borderline,High,Normal,Heavy (16-25)
Alive,,,Female,30,63.5,126,70,118,105,20,,200,Borderline,Optimal,Normal,Heavy (16-25)
Dead,Other,59,Male,35,68.5,154,78,138,107,40,63,238,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Male,41,67.75,142,64,106,101,20,,209,Borderline,Optimal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,57,57.25,156,96,152,156,0,75,,,High,Overweight,Non-smoker
Alive,,,Female,33,69.5,114,80,126,79,10,,163,Desirable,Normal,Underweight,Moderate (6-15)
Alive,,,Female,40,64.5,165,72,114,133,0,,196,Desirable,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,69,Male,45,69,187,96,136,126,0,75,238,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,45,65.5,157,80,138,123,0,67,198,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,46,72.5,155,80,120,96,20,,221,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,39,64.5,139,98,148,112,1,,192,Desirable,High,Overweight,Light (1-5)
Alive,,48,Male,44,72,199,80,124,124,40,,231,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,54,Male,50,68,167,86,126,116,,56,,,Normal,Overweight,
Alive,,,Male,31,68,160,80,136,111,30,,150,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,31,67.5,169,74,108,121,0,,161,Desirable,Optimal,Overweight,Non-smoker
Alive,,65,Male,51,66.5,156,90,168,116,30,,194,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Female,38,61,121,74,126,108,20,,271,High,Normal,Normal,Heavy (16-25)
Dead,Cancer,66,Male,50,68,156,80,128,108,0,82,248,High,Normal,Normal,Non-smoker
Alive,,,Male,42,70,151,68,146,99,20,,238,Borderline,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,59,Female,45,67,165,116,178,121,0,65,238,Borderline,High,Overweight,Non-smoker
Alive,,,Female,39,64,153,76,108,123,5,,246,High,Optimal,Overweight,Light (1-5)
Alive,,,Female,56,66,148,90,142,112,0,,180,Desirable,High,Overweight,Non-smoker
Alive,,57,Female,49,63.5,135,78,142,113,0,,330,High,High,Overweight,Non-smoker
Alive,,,Male,45,71,220,94,150,140,0,,250,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,55,60.25,136,110,170,125,0,77,250,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,48,70.5,149,70,110,98,25,80,211,Borderline,Optimal,Normal,Heavy (16-25)
Dead,Unknown,,Female,52,62.25,166,106,188,143,0,80,242,High,High,Overweight,Non-smoker
Alive,,77,Female,51,62,152,90,140,131,0,,263,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,53,60.25,151,120,176,139,0,69,196,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,56,Male,52,65.75,190,94,164,145,0,76,192,Desirable,High,Overweight,Non-smoker
Alive,,,Female,46,60,143,82,142,131,0,,167,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Male,52,66.5,192,90,128,142,0,64,199,Desirable,High,Overweight,Non-smoker
Alive,,,Female,36,64.5,122,88,128,98,15,,255,High,Normal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,49,Female,47,67,182,106,160,134,20,59,196,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Male,31,70,154,76,114,101,30,,150,Desirable,Optimal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,72,Male,54,66.5,175,84,136,130,0,84,205,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,40,62.5,127,70,120,109,0,,237,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,36,63.5,123,72,110,103,0,,180,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,32,63.5,129,88,134,103,20,,192,Desirable,Normal,Normal,Heavy (16-25)
Dead,Other,,Male,36,70,146,76,134,96,35,58,,,Normal,Normal,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Male,41,70.25,142,88,148,93,30,59,150,Desirable,High,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,82,Male,56,65.75,110,80,112,84,0,84,221,Borderline,Normal,Underweight,Non-smoker
Dead,Coronary Heart Disease,59,Female,55,62.75,195,94,142,168,0,87,221,Borderline,High,Overweight,Non-smoker
Alive,,67,Female,41,58.75,139,88,138,135,1,,347,High,Normal,Overweight,Light (1-5)
Dead,Cancer,55,Male,47,65.5,170,98,166,130,0,71,243,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,77,Male,55,64.75,133,108,172,104,20,81,171,Desirable,High,Normal,Heavy (16-25)
Dead,Other,,Male,42,69.25,177,70,108,120,20,70,305,High,Optimal,Overweight,Heavy (16-25)
Alive,,52,Female,30,66.5,139,70,108,105,0,,182,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,42,69.25,141,80,118,95,40,,221,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,42,59.5,102,72,122,96,0,,238,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,50,Male,50,67.5,197,84,132,141,40,78,309,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,35,63,167,74,114,139,0,,194,Desirable,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Female,50,61.75,142,90,144,127,5,66,342,High,High,Overweight,Light (1-5)
Alive,,,Female,38,64.75,139,70,110,112,20,,167,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Cancer,60,Female,38,64.5,137,80,124,110,10,68,194,Desirable,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,73,Male,51,65.25,166,94,154,127,,75,,,High,Overweight,
Alive,,62,Male,42,68,182,96,146,126,20,,238,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,41,61,107,84,170,96,20,,180,Desirable,High,Normal,Heavy (16-25)
Alive,,,Female,47,62.5,149,98,150,128,0,,198,Desirable,High,Overweight,Non-smoker
Alive,,,Female,54,59,116,72,122,109,0,,209,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,41,67.5,117,84,114,86,,,,,Normal,Underweight,
Alive,,,Male,40,64.25,128,84,132,100,0,,292,High,Normal,Normal,Non-smoker
Alive,,,Male,55,65.5,154,84,150,118,0,,225,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,68,Female,52,64.5,151,90,136,122,0,80,225,Borderline,High,Overweight,Non-smoker
Alive,,,Female,59,65.5,176,88,150,138,0,,263,High,High,Overweight,Non-smoker
Alive,,,Female,37,60.25,132,70,112,121,0,,213,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,49,63,134,88,136,107,0,,200,Borderline,Normal,Normal,Non-smoker
Dead,Cancer,,Male,51,67.5,168,78,112,120,10,79,209,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,65,Female,43,65.25,155,80,120,121,0,,263,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,69,Male,49,61.5,170,90,142,143,,73,,,High,Overweight,
Alive,,,Female,51,61.75,139,80,132,124,0,,301,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,57,63.75,148,80,120,118,0,79,259,High,Normal,Overweight,Non-smoker
Alive,,37,Male,35,68.75,168,88,130,117,5,,280,High,Normal,Overweight,Light (1-5)
Alive,,,Female,38,64.75,134,78,118,108,0,,159,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,51,57.5,128,84,160,128,0,,232,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,52,Male,42,62.75,175,88,138,143,0,66,238,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,65,Male,51,64.25,167,84,126,130,0,75,276,High,Normal,Overweight,Non-smoker
Alive,,66,Male,38,68,174,88,148,121,60,,305,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,46,62.75,146,86,130,126,0,,178,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,36,62.75,137,84,126,118,0,,263,High,Normal,Overweight,Non-smoker
Alive,,58,Female,34,62,113,70,124,97,10,,236,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,34,61.25,147,86,114,131,0,,178,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,36,70,189,82,134,124,20,,177,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,37,62.5,132,84,140,114,15,,243,High,Normal,Overweight,Moderate (6-15)
Alive,,,Male,37,69,210,96,150,142,0,,223,Borderline,High,Overweight,Non-smoker
Alive,,64,Female,40,62.5,151,82,116,130,5,,296,High,Normal,Overweight,Light (1-5)
Alive,,64,Female,40,64.75,114,74,124,92,30,,211,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,29,62.75,104,74,100,90,10,,167,Desirable,Optimal,Underweight,Moderate (6-15)
Alive,,,Female,37,64.25,122,76,124,98,5,,196,Desirable,Normal,Normal,Light (1-5)
Alive,,,Male,47,68.5,150,94,154,104,20,,309,High,High,Normal,Heavy (16-25)
Alive,,,Male,31,69,191,74,124,129,40,,232,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,48,60,114,90,168,105,5,56,184,Desirable,High,Normal,Light (1-5)
Dead,Other,,Female,53,57.5,139,80,124,139,,83,,,Normal,Overweight,
Dead,Unknown,,Male,55,67.5,187,98,160,134,0,79,246,High,High,Overweight,Non-smoker
Alive,,,Female,35,64,125,84,124,101,15,,173,Desirable,Normal,Normal,Moderate (6-15)
Alive,,71,Female,55,61,128,106,178,114,10,,200,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Male,32,71.5,158,72,118,101,15,,159,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Male,37,65.5,160,72,132,122,25,,276,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,33,63,157,86,132,131,0,,,,Normal,Overweight,Non-smoker
Alive,,,Female,52,65,137,98,170,107,0,,250,High,High,Normal,Non-smoker
Dead,Coronary Heart Disease,69,Female,57,64,140,110,180,113,0,83,313,High,High,Overweight,Non-smoker
Alive,,,Female,34,66.25,167,76,116,127,5,,179,Desirable,Optimal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,56,65.5,155,102,132,118,1,66,242,High,High,Overweight,Light (1-5)
Dead,Other,,Male,38,68,167,92,160,116,,44,,,High,Overweight,
Alive,,,Female,51,61,149,84,124,133,0,,278,High,Normal,Overweight,Non-smoker
Alive,,,Male,50,64.75,153,84,130,120,0,,238,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,37,61,143,70,106,128,35,,219,Borderline,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Female,48,59,129,88,130,122,0,,284,High,Normal,Overweight,Non-smoker
Alive,,,Female,30,63.75,118,76,100,98,10,,242,High,Optimal,Normal,Moderate (6-15)
Alive,,,Female,44,62.25,132,76,120,114,0,,280,High,Normal,Overweight,Non-smoker
Alive,,77,Male,49,65,191,76,110,146,0,,213,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,31,68.5,190,86,132,132,0,,209,Borderline,Normal,Overweight,Non-smoker
Alive,,56,Female,38,62.5,128,84,124,110,0,,204,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,77,Female,53,61,122,74,124,109,15,85,255,High,Normal,Normal,Moderate (6-15)
Dead,Unknown,82,Male,56,66,145,70,118,107,20,84,234,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Female,47,68.25,215,82,128,154,5,,263,High,Normal,Overweight,Light (1-5)
Dead,Cancer,,Male,55,70.25,178,84,134,117,0,79,242,High,Normal,Overweight,Non-smoker
Alive,,79,Male,49,68,188,80,130,131,5,,300,High,Normal,Overweight,Light (1-5)
Alive,,,Male,40,67.5,141,78,124,101,30,,250,High,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,35,67.25,182,80,118,134,15,,226,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Female,52,61,178,78,138,159,0,74,376,High,Normal,Overweight,Non-smoker
Alive,,70,Female,52,65.75,140,80,130,109,0,,223,Borderline,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,58,64.5,108,74,120,87,5,82,238,Borderline,Normal,Underweight,Light (1-5)
Alive,,,Male,54,71.5,167,78,124,106,0,,209,Borderline,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Male,58,69.75,144,82,132,97,20,74,,,Normal,Normal,Heavy (16-25)
Alive,,,Female,43,62.5,214,92,148,184,5,,163,Desirable,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,52,Male,32,66.75,174,80,128,129,0,58,233,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,57,66,163,92,142,121,0,73,159,Desirable,High,Overweight,Non-smoker
Alive,,50,Male,34,69.5,171,74,120,116,,,,,Normal,Overweight,
Dead,Cerebral Vascular Disease,57,Female,55,59.25,144,92,176,136,0,81,267,High,High,Overweight,Non-smoker
Alive,,,Female,58,62.5,141,88,134,122,0,,334,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,53,60.5,105,68,122,96,0,83,292,High,Normal,Normal,Non-smoker
Dead,Cancer,,Male,39,67.75,116,70,120,83,20,59,213,Borderline,Normal,Underweight,Heavy (16-25)
Dead,Other,,Male,59,70.5,170,76,120,112,20,83,150,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,50,69.25,158,84,122,107,40,,200,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,58,64.75,136,70,118,110,0,,217,Borderline,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,65,Female,49,58,106,90,138,103,0,67,179,Desirable,High,Normal,Non-smoker
Dead,Other,,Female,51,60.5,109,68,114,100,0,69,217,Borderline,Optimal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,64,Female,54,63,154,80,150,128,0,84,200,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,88,Male,58,64.5,165,80,130,129,0,90,238,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,51,61.5,140,70,110,125,0,,171,Desirable,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Male,48,66.25,154,94,146,114,0,70,267,High,High,Overweight,Non-smoker
Alive,,,Female,47,61.75,117,68,112,104,0,,234,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,38,63,161,96,160,134,0,,288,High,High,Overweight,Non-smoker
Alive,,,Male,42,67.75,170,90,142,121,20,,263,High,High,Overweight,Heavy (16-25)
Alive,,,Female,41,64.25,190,86,134,153,0,,280,High,Normal,Overweight,Non-smoker
Alive,,,Female,45,67,166,88,138,122,0,,232,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,35,66,153,86,130,116,0,,171,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,49,59.5,140,90,156,132,0,75,316,High,High,Overweight,Non-smoker
Alive,,66,Male,36,72.5,190,84,138,118,0,,171,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Female,58,62.75,145,70,126,125,0,74,296,High,Normal,Overweight,Non-smoker
Alive,,,Female,53,61.75,135,76,110,121,15,,209,Borderline,Optimal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,60,Male,38,67.25,175,86,146,125,10,64,213,Borderline,High,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,57,Male,43,70.5,180,90,120,118,0,71,238,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,47,59.5,180,84,148,170,0,69,246,High,High,Overweight,Non-smoker
Alive,,,Female,37,67.5,177,72,116,130,1,,192,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Female,30,63.5,130,80,150,108,0,,209,Borderline,High,Normal,Non-smoker
Alive,,,Female,41,61.75,122,70,106,109,10,,242,High,Optimal,Normal,Moderate (6-15)
Alive,,,Female,37,63,136,86,136,113,1,,184,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Male,39,72.75,164,94,128,102,5,,180,Desirable,High,Normal,Light (1-5)
Alive,,,Female,31,65,130,70,102,102,1,,174,Desirable,Optimal,Normal,Light (1-5)
Dead,Cancer,,Male,41,66,188,74,124,139,20,57,211,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,57,65,138,70,96,105,,75,,,Optimal,Normal,
Dead,Coronary Heart Disease,74,Male,48,67.75,145,70,148,104,40,76,242,High,High,Normal,Very Heavy (> 25)
Alive,,,Female,54,64.75,131,80,144,106,0,,217,Borderline,High,Normal,Non-smoker
Dead,Other,73,Female,59,60.75,126,94,164,116,0,89,376,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,59,63.75,174,70,142,145,0,81,248,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,54,69.75,185,130,190,125,20,64,238,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,49,Female,45,60.5,180,110,158,165,0,65,326,High,High,Overweight,Non-smoker
Dead,Other,66,Female,54,63.75,162,110,188,135,0,78,266,High,High,Overweight,Non-smoker
Alive,,71,Male,41,64,135,76,112,105,10,,267,High,Optimal,Normal,Moderate (6-15)
Dead,Other,,Male,58,64.75,148,74,134,116,20,82,200,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,45,71.25,193,78,122,123,0,63,238,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,56,61,165,86,162,147,0,,323,High,High,Overweight,Non-smoker
Alive,,,Female,34,63.75,134,58,104,112,1,,163,Desirable,Optimal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,48,Male,38,67.5,192,116,160,137,1,64,292,High,High,Overweight,Light (1-5)
Alive,,59,Female,37,63.5,113,70,130,94,5,,209,Borderline,Normal,Normal,Light (1-5)
Dead,Other,,Female,58,58.75,131,82,124,127,5,80,255,High,Normal,Overweight,Light (1-5)
Alive,,57,Male,45,71.5,210,82,126,134,30,,288,High,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,52,67,165,90,134,118,0,66,250,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,76,Male,52,70.5,155,82,128,102,0,84,225,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,70,Male,42,66,156,80,120,116,5,72,250,High,Normal,Overweight,Light (1-5)
Alive,,,Female,47,60.5,134,80,120,123,0,,356,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,52,61.75,146,80,130,123,10,78,204,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Male,34,70,141,80,130,93,15,,174,Desirable,Normal,Normal,Moderate (6-15)
Dead,Cancer,,Male,45,69.5,180,74,124,122,20,53,219,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,46,66,167,100,144,124,0,,276,High,High,Overweight,Non-smoker
Alive,,,Male,31,69.5,155,64,104,105,5,,234,Borderline,Optimal,Normal,Light (1-5)
Alive,,66,Female,52,62.5,134,78,126,116,5,,276,High,Normal,Overweight,Light (1-5)
Alive,,,Male,49,60.75,143,90,154,123,0,,238,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,48,62.25,190,88,122,164,5,78,223,Borderline,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,59,Female,43,64.25,142,90,152,115,10,69,225,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,32,66.75,110,82,118,83,20,,209,Borderline,Normal,Underweight,Heavy (16-25)
Alive,,,Female,43,64.5,158,76,132,127,20,,238,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,49,62.75,158,78,138,136,0,73,227,Borderline,Normal,Overweight,Non-smoker
Alive,,76,Male,46,66.5,136,70,112,101,0,,173,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,39,64.75,155,82,132,125,25,,196,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,50,64.5,185,96,130,145,40,80,225,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Male,53,64.5,138,78,112,108,0,,261,High,Optimal,Normal,Non-smoker
Dead,Cancer,,Male,52,68.25,159,82,142,110,40,84,213,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,73,Female,47,63,133,78,122,111,0,,221,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,50,68.75,151,80,110,105,20,72,179,Desirable,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Male,51,68,166,70,122,115,0,67,165,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,52,65.75,159,90,156,124,0,74,301,High,High,Overweight,Non-smoker
Alive,,,Female,49,64.75,130,70,124,105,0,,188,Desirable,Normal,Normal,Non-smoker
Dead,Cancer,,Male,44,68,141,70,104,98,0,72,,,Optimal,Normal,Non-smoker
Alive,,,Female,56,60.25,109,90,138,100,15,,342,High,High,Normal,Moderate (6-15)
Alive,,79,Male,49,68,177,76,122,123,0,,230,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,50,67.5,144,84,140,106,5,,267,High,Normal,Normal,Light (1-5)
Alive,,,Female,33,62.5,120,74,114,103,15,,302,High,Optimal,Normal,Moderate (6-15)
Alive,,,Female,34,65,120,78,142,94,20,,171,Desirable,High,Normal,Heavy (16-25)
Alive,,78,Male,50,72.5,200,74,114,124,0,,255,High,Optimal,Overweight,Non-smoker
Alive,,,Female,29,62.5,102,66,106,88,0,,192,Desirable,Optimal,Underweight,Non-smoker
Alive,,,Female,48,67.25,149,84,134,110,1,,255,High,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,61,Female,39,58.25,140,88,120,136,0,63,250,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,44,67.25,147,74,114,105,20,68,182,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Female,38,63.75,148,96,138,123,0,,184,Desirable,High,Overweight,Non-smoker
Dead,Other,,Female,40,62.25,174,94,136,150,0,50,225,Borderline,High,Overweight,Non-smoker
Alive,,,Male,43,66.25,216,92,124,160,35,,246,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,34,63,118,64,104,98,0,,,,Optimal,Normal,Non-smoker
Dead,Other,,Male,47,65,167,120,190,127,0,57,263,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,61,Male,51,69.5,158,76,120,107,15,71,217,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,46,60.25,102,80,112,94,0,,246,High,Normal,Normal,Non-smoker
Alive,,56,Male,34,69,146,70,114,99,20,,263,High,Optimal,Normal,Heavy (16-25)
Dead,Other,,Female,54,,150,86,144,125,1,82,267,High,High,Overweight,Light (1-5)
Alive,,,Female,52,65,157,80,120,123,0,,233,Borderline,Normal,Overweight,Non-smoker
Alive,,66,Male,52,67,161,82,138,115,15,,228,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Male,41,64.5,167,80,124,130,15,,301,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,35,64,122,80,122,98,15,,180,Desirable,Normal,Normal,Moderate (6-15)
Dead,Other,,Female,56,62,159,70,120,137,25,86,,,Normal,Overweight,Heavy (16-25)
Alive,,,Female,36,59.75,117,70,126,110,0,,300,High,Normal,Overweight,Non-smoker
Alive,,,Female,30,66.25,138,78,132,105,0,,173,Desirable,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,58,Male,40,67.25,149,82,138,106,20,62,,,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,64,Male,56,64.5,147,92,140,115,20,76,228,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,52,65.75,110,70,122,86,0,,270,High,Normal,Underweight,Non-smoker
Alive,,,Male,33,70.75,154,78,114,101,20,,230,Borderline,Optimal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,48,70,173,80,122,114,0,76,232,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,39,65,143,80,126,109,0,,223,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,30,68.75,133,70,120,92,0,,188,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,47,61.5,104,80,130,93,0,,200,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,45,62.5,151,72,104,130,20,,200,Borderline,Optimal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,58,Male,54,68.75,133,90,144,92,5,60,243,High,High,Normal,Light (1-5)
Alive,,79,Male,49,64.5,133,68,98,104,0,,213,Borderline,Optimal,Normal,Non-smoker
Alive,,59,Female,49,64.5,144,80,122,116,5,,228,Borderline,Normal,Overweight,Light (1-5)
Alive,,68,Female,52,65,127,90,158,99,0,,248,High,High,Normal,Non-smoker
Dead,Other,,Female,52,64.5,151,90,126,122,0,84,313,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,73,Male,55,71,151,76,120,96,20,81,209,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,42,71.25,166,68,106,106,20,,238,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,75,Female,47,62.75,124,86,140,107,0,,,,Normal,Normal,Non-smoker
Alive,,,Male,35,66.25,133,70,130,99,0,,171,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,50,72.75,195,68,124,121,0,,226,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,54,59,130,70,130,123,0,,342,High,Normal,Overweight,Non-smoker
Alive,,,Female,45,62,178,94,180,153,0,,221,Borderline,High,Overweight,Non-smoker
Alive,,,Female,49,59.5,115,80,124,108,0,,334,High,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,77,Female,57,59.5,132,82,140,125,0,79,278,High,Normal,Overweight,Non-smoker
Alive,,,Male,52,62.75,129,80,134,106,25,,255,High,Normal,Normal,Heavy (16-25)
Alive,,,Male,32,70,173,80,120,114,60,,234,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,55,61.5,155,76,120,138,0,,259,High,Normal,Overweight,Non-smoker
Alive,,,Female,31,59.5,130,66,110,123,25,,178,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,62,Female,44,62.25,192,124,204,166,30,68,267,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,39,66,145,64,110,107,35,,194,Desirable,Optimal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,71,Female,53,66,154,90,160,117,5,73,259,High,High,Overweight,Light (1-5)
Dead,Other,,Male,53,71,201,78,138,128,0,59,148,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,38,63,113,80,118,94,0,,200,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,36,60.5,117,68,100,107,30,,,,Optimal,Normal,Very Heavy (> 25)
Alive,,66,Male,46,67.5,174,76,120,124,,,190,Desirable,Normal,Overweight,
Alive,,67,Female,37,65.25,150,70,108,117,0,,217,Borderline,Optimal,Overweight,Non-smoker
Dead,Other,64,Male,44,66.25,213,84,144,158,40,70,276,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,43,63.5,189,96,138,151,0,,234,Borderline,High,Overweight,Non-smoker
Alive,,,Female,39,62.5,106,80,128,91,20,,263,High,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,72,Female,54,58.75,139,96,204,135,0,74,243,High,High,Overweight,Non-smoker
Alive,,,Female,36,62.25,107,78,120,92,5,,288,High,Normal,Normal,Light (1-5)
Alive,,,Female,37,60.5,112,80,124,103,5,,213,Borderline,Normal,Normal,Light (1-5)
Alive,,,Male,40,70.5,169,94,140,111,20,,236,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,32,64.75,202,90,120,158,0,,208,Borderline,High,Overweight,Non-smoker
Alive,,,Female,30,67.5,154,60,104,113,0,,154,Desirable,Optimal,Overweight,Non-smoker
Dead,Other,,Female,51,61.25,121,92,144,108,0,75,280,High,High,Normal,Non-smoker
Dead,Coronary Heart Disease,84,Female,54,65.25,171,126,218,134,0,86,167,Desirable,High,Overweight,Non-smoker
Alive,,,Male,30,72.75,200,88,140,124,0,,242,High,Normal,Overweight,Non-smoker
Dead,Other,,Female,55,63,174,94,142,145,20,73,211,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,62,Male,60,67.5,172,100,170,123,15,80,255,High,High,Overweight,Moderate (6-15)
Dead,Cancer,64,Female,48,64.5,147,80,126,119,0,74,271,High,Normal,Overweight,Non-smoker
Alive,,,Male,29,68.75,170,70,102,118,20,,248,High,Optimal,Overweight,Heavy (16-25)
Alive,,49,Female,43,60.5,114,90,142,105,0,,161,Desirable,High,Normal,Non-smoker
Alive,,,Male,37,69.5,153,70,104,103,0,,173,Desirable,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,78,Female,54,63.75,163,70,120,136,0,86,313,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,45,64,157,96,142,127,0,61,233,Borderline,High,Overweight,Non-smoker
Alive,,,Female,45,65.75,125,56,86,98,0,,180,Desirable,Optimal,Normal,Non-smoker
Dead,Unknown,,Male,42,64.25,136,70,110,106,,50,,,Optimal,Normal,
Dead,Coronary Heart Disease,52,Male,50,66,149,84,124,110,40,62,263,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,44,60.25,130,88,144,119,5,,150,Desirable,High,Overweight,Light (1-5)
Alive,,,Female,46,63.25,181,80,136,151,0,,226,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,34,63,120,70,106,100,25,,234,Borderline,Optimal,Normal,Heavy (16-25)
Dead,Cancer,,Female,56,64.25,138,80,120,111,0,70,153,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,74,Female,54,60.75,186,82,132,171,1,86,276,High,Normal,Overweight,Light (1-5)
Alive,,,Female,43,60,92,84,120,84,1,,180,Desirable,Normal,Underweight,Light (1-5)
Dead,Cancer,,Male,45,67.75,126,70,100,90,0,75,157,Desirable,Optimal,Underweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,38,65.25,112,58,96,88,15,62,289,High,Optimal,Underweight,Moderate (6-15)
Alive,,,Female,48,62.5,137,78,126,118,0,,,,Normal,Overweight,Non-smoker
Alive,,,Male,33,68.5,162,80,130,113,20,,184,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,53,Female,51,63.25,175,90,132,146,0,75,242,High,High,Overweight,Non-smoker
Alive,,,Female,35,62.5,105,74,136,91,5,,192,Desirable,Normal,Normal,Light (1-5)
Alive,,,Female,38,65.75,173,80,120,135,0,,,,Normal,Overweight,Non-smoker
Alive,,66,Male,40,66.5,175,70,112,130,0,,228,Borderline,Optimal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,59,63.75,153,80,158,128,10,85,,,High,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,44,64,166,86,150,134,25,52,258,High,High,Overweight,Heavy (16-25)
Alive,,,Female,37,65.25,154,74,114,120,0,,224,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,35,64.5,151,76,120,122,0,,173,Desirable,Normal,Overweight,Non-smoker
Alive,,61,Male,31,69.75,166,72,108,112,0,,309,High,Optimal,Overweight,Non-smoker
Alive,,,Male,31,72.5,181,76,136,112,0,,,,Normal,Overweight,Non-smoker
Alive,,,Female,40,65.75,151,78,130,118,30,,,,Normal,Overweight,Very Heavy (> 25)
Dead,Other,,Female,45,61.25,154,80,122,138,30,77,217,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,37,63,146,70,114,122,5,,238,Borderline,Optimal,Overweight,Light (1-5)
Alive,,,Female,39,59.5,104,76,110,98,0,,179,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,30,62.25,111,70,98,96,5,,150,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Male,30,71.5,221,84,132,141,20,,253,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,41,62,123,82,132,106,0,,213,Borderline,Normal,Normal,Non-smoker
Alive,,57,Female,31,61.5,168,78,106,150,0,,184,Desirable,Optimal,Overweight,Non-smoker
Dead,Cancer,,Male,40,69.25,163,90,148,110,20,70,246,High,High,Overweight,Heavy (16-25)
Dead,Other,,Male,40,67,194,106,156,139,50,50,182,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Male,36,67.5,141,78,126,101,15,,198,Desirable,Normal,Normal,Moderate (6-15)
Alive,,47,Female,33,62.25,112,84,124,97,20,,167,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,45,70.25,181,80,124,119,0,,146,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,53,64.25,155,84,128,125,0,,202,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,55,63,132,68,108,110,0,75,292,High,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,70,Male,52,67,191,80,120,136,10,82,234,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,53,60.5,104,96,152,95,0,,267,High,High,Normal,Non-smoker
Dead,Other,72,Female,58,57.5,175,104,176,175,0,76,242,High,High,Overweight,Non-smoker
Alive,,,Female,31,61,118,74,112,105,0,,302,High,Optimal,Normal,Non-smoker
Alive,,,Male,36,69.75,166,70,118,112,5,,,,Optimal,Overweight,Light (1-5)
Dead,Unknown,,Male,32,67.25,124,78,108,89,,58,,,Optimal,Underweight,
Alive,,,Male,48,74.5,222,98,136,131,0,,224,Borderline,High,Overweight,Non-smoker
Alive,,,Female,42,64,127,66,94,102,25,,205,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,82,Female,52,61,135,74,122,121,20,,317,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,78,Male,58,68,149,114,170,103,0,80,225,Borderline,High,Normal,Non-smoker
Alive,,,Male,31,66.5,159,80,118,118,10,,263,High,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Female,46,59,118,74,104,111,0,52,284,High,Optimal,Overweight,Non-smoker
Alive,,68,Male,46,69.5,177,88,138,120,0,,238,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,38,64.5,141,76,126,114,20,,292,High,Normal,Overweight,Heavy (16-25)
Dead,Other,,Female,53,58.5,130,94,156,126,0,85,280,High,High,Overweight,Non-smoker
Dead,Other,54,Female,52,60.25,187,86,144,172,10,72,292,High,High,Overweight,Moderate (6-15)
Alive,,,Female,31,63.75,101,70,108,84,10,,194,Desirable,Optimal,Underweight,Moderate (6-15)
Alive,,,Female,57,64.25,118,78,120,95,0,,292,High,Normal,Normal,Non-smoker
Alive,,,Female,43,59.25,110,70,104,104,0,,211,Borderline,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,73,Male,45,63,153,80,130,122,0,75,259,High,Normal,Overweight,Non-smoker
Dead,Cancer,69,Male,51,67.75,173,80,128,124,25,75,255,High,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,39,58,134,76,114,130,0,53,,,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,63,Female,55,59.5,133,98,172,125,0,71,317,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,78,Female,54,64.25,158,94,134,127,0,80,,,High,Overweight,Non-smoker
Alive,,,Female,34,62,103,72,112,89,5,,205,Borderline,Optimal,Underweight,Light (1-5)
Alive,,,Male,39,68.75,147,76,116,102,0,,167,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,35,62.75,136,70,110,117,0,,276,High,Optimal,Overweight,Non-smoker
Dead,Other,54,Male,54,65.25,182,110,160,139,0,74,196,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,58,68.75,170,124,210,118,0,66,245,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,58,60,143,80,124,131,0,68,216,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,44,Female,34,65.75,138,80,120,108,15,54,155,Desirable,Normal,Normal,Moderate (6-15)
Dead,Unknown,,Male,39,69.25,176,94,144,119,0,71,184,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Female,48,62.5,123,70,106,106,0,66,184,Desirable,Optimal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,56,62.25,171,90,170,147,15,78,246,High,High,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,74,Male,60,69,190,86,136,128,0,82,242,High,Normal,Overweight,Non-smoker
Alive,,,Female,42,62.75,150,86,124,129,1,,280,High,Normal,Overweight,Light (1-5)
Alive,,,Female,37,65.5,142,62,92,111,0,,209,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,47,63,136,110,160,113,0,,315,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,58,63.5,107,70,106,89,0,82,221,Borderline,Optimal,Underweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,41,62.25,115,100,130,99,10,59,200,Borderline,High,Normal,Moderate (6-15)
Alive,,,Female,49,61,132,76,120,118,5,,280,High,Normal,Overweight,Light (1-5)
Alive,,,Female,32,64,178,78,110,144,0,,192,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,44,68,148,86,128,103,0,,196,Desirable,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Male,45,67,182,100,160,130,,63,,,High,Overweight,
Dead,Coronary Heart Disease,45,Male,39,66.5,140,86,124,104,30,47,254,High,Normal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,60,Male,44,68.75,169,94,142,117,20,66,184,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,58,64.5,133,84,128,107,0,,,,Normal,Normal,Non-smoker
Alive,,,Female,52,64.75,171,84,140,138,0,,267,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,65,Female,55,63,183,64,102,153,0,81,288,High,Optimal,Overweight,Non-smoker
Alive,,,Female,30,64.25,121,76,118,98,0,,150,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,32,62.5,127,80,126,109,0,,188,Desirable,Normal,Normal,Non-smoker
Alive,,78,Male,48,68.5,166,92,140,115,0,,259,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,72,Male,48,67.25,190,80,120,136,15,74,268,High,Normal,Overweight,Moderate (6-15)
Alive,,,Male,52,68.25,162,78,122,113,1,,196,Desirable,Normal,Overweight,Light (1-5)
Dead,Cancer,,Male,57,70.5,168,70,106,111,0,79,179,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,51,68,175,80,112,125,5,,243,High,Normal,Overweight,Light (1-5)
Alive,,,Female,42,64.5,136,78,114,110,0,,196,Desirable,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,47,Male,47,68.25,124,78,120,86,25,57,258,High,Normal,Underweight,Heavy (16-25)
Alive,,62,Male,38,71.5,159,70,108,101,0,,238,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,44,62.25,138,76,120,119,0,,200,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,37,62.5,117,80,146,101,0,61,200,Borderline,High,Normal,Non-smoker
Alive,,,Female,53,60,131,90,140,120,0,,275,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,68,Male,52,65.5,164,92,122,125,20,82,236,Borderline,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,46,61.5,144,80,118,129,15,74,180,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Female,50,64.5,161,90,116,130,0,,179,Desirable,High,Overweight,Non-smoker
Alive,,,Female,37,62.75,131,78,112,113,5,,196,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Female,34,68.25,125,82,112,89,0,,182,Desirable,Normal,Underweight,Non-smoker
Alive,,,Male,34,65.5,187,90,134,143,0,,217,Borderline,High,Overweight,Non-smoker
Alive,,54,Male,30,70.25,175,84,132,115,0,,179,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,65,Male,37,68.5,151,78,126,105,20,67,234,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,53,64.5,168,86,122,135,1,,232,Borderline,Normal,Overweight,Light (1-5)
Dead,Cancer,,Male,50,68.25,150,70,106,104,30,82,205,Borderline,Optimal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,51,Male,47,67,195,90,120,139,10,69,232,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,39,65,148,78,116,116,1,,226,Borderline,Optimal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,59,Male,39,73.5,244,100,144,147,20,71,276,High,High,Overweight,Heavy (16-25)
Alive,,64,Female,38,65.75,167,84,106,130,5,,192,Desirable,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,59,Female,55,63.75,170,130,230,142,0,71,255,High,High,Overweight,Non-smoker
Alive,,,Female,36,63.5,112,68,120,93,15,,198,Desirable,Normal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,70,Female,48,63.25,195,86,140,163,0,72,250,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,53,Male,35,70,212,90,150,139,40,57,200,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Male,53,68.25,180,90,140,125,20,,309,High,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,60,Male,44,71.25,207,100,140,132,0,72,182,Desirable,High,Overweight,Non-smoker
Alive,,,Male,45,68.5,184,84,132,128,30,,170,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,39,61.25,119,74,122,106,5,,200,Borderline,Normal,Normal,Light (1-5)
Alive,,80,Female,56,61.75,154,78,112,138,0,,243,High,Optimal,Overweight,Non-smoker
Alive,,73,Female,47,59.75,143,80,110,135,5,,198,Desirable,Normal,Overweight,Light (1-5)
Alive,,67,Male,37,67.75,176,84,134,126,0,,217,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,60,Male,50,66,159,98,138,118,40,66,223,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,47,61.75,135,80,132,121,0,,255,High,Normal,Overweight,Non-smoker
Alive,,,Female,31,68.25,153,64,100,109,0,,148,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,40,59,104,70,110,98,0,,217,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,45,64,138,98,168,111,0,,219,Borderline,High,Overweight,Non-smoker
Alive,,,Male,30,69.25,155,70,106,105,30,,165,Desirable,Optimal,Normal,Very Heavy (> 25)
Alive,,,Female,38,63.25,157,80,112,131,0,,221,Borderline,Normal,Overweight,Non-smoker
Dead,Other,,Female,35,68.25,197,90,130,141,0,59,280,High,High,Overweight,Non-smoker
Alive,,,Male,32,68,145,78,134,101,20,,182,Desirable,Normal,Normal,Heavy (16-25)
Dead,Other,,Male,31,71.75,216,80,122,138,35,61,280,High,Normal,Overweight,Very Heavy (> 25)
Alive,,62,Male,32,69.75,151,72,132,102,25,,167,Desirable,Normal,Normal,Heavy (16-25)
Alive,,73,Male,49,68.5,189,90,130,131,30,,233,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,77,Female,57,65.5,152,64,104,119,0,,234,Borderline,Optimal,Overweight,Non-smoker
Alive,,68,Male,38,68.75,153,76,126,106,20,,240,High,Normal,Normal,Heavy (16-25)
Dead,Other,74,Male,54,68,,90,132,,60,80,307,High,High,,Very Heavy (> 25)
Alive,,52,Female,32,61,114,84,128,102,0,,211,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,54,66.75,158,70,100,117,20,,221,Borderline,Optimal,Overweight,Heavy (16-25)
Dead,Other,,Female,55,61.5,137,80,124,122,0,75,324,High,Normal,Overweight,Non-smoker
Alive,,48,Female,48,66.75,172,74,128,130,5,,176,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,46,59.25,128,88,150,121,0,,223,Borderline,High,Overweight,Non-smoker
Alive,,,Female,43,58.5,136,90,120,132,0,,282,High,High,Overweight,Non-smoker
Alive,,,Male,49,71,211,84,120,134,0,,192,Desirable,Normal,Overweight,Non-smoker
Alive,,67,Female,45,59,117,76,124,110,20,,199,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,52,Female,42,63.25,149,70,100,124,0,,171,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,50,64.75,128,88,136,103,5,,255,High,Normal,Normal,Light (1-5)
Alive,,,Female,30,56.25,98,60,112,101,0,,241,High,Optimal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,49,62.5,156,80,140,134,0,81,217,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,55,64,149,70,110,120,0,,221,Borderline,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Female,42,63.75,127,70,110,106,5,68,243,High,Optimal,Normal,Light (1-5)
Alive,,,Female,44,64.75,134,70,110,108,5,,291,High,Optimal,Normal,Light (1-5)
Alive,,74,Male,52,68.75,137,88,140,95,0,,236,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,30,65,116,70,110,91,20,,167,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Male,31,67,160,74,116,114,30,,250,High,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Female,46,57.25,133,76,112,133,0,,223,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,33,62.75,114,70,112,98,5,,232,Borderline,Optimal,Normal,Light (1-5)
Alive,,54,Male,36,70.5,182,88,124,120,5,,290,High,Normal,Overweight,Light (1-5)
Alive,,,Female,31,61,116,72,122,104,5,,159,Desirable,Normal,Normal,Light (1-5)
Alive,,,Male,31,68.25,149,70,110,103,15,,282,High,Optimal,Normal,Moderate (6-15)
Alive,,,Female,28,60.5,140,64,108,128,15,,243,High,Optimal,Overweight,Moderate (6-15)
Alive,,,Male,33,67.25,159,80,132,114,20,,271,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,37,71.5,169,74,102,108,20,,242,High,Optimal,Normal,Heavy (16-25)
Alive,,,Female,32,62,122,70,100,105,5,,,,Optimal,Normal,Light (1-5)
Alive,,54,Male,52,66,153,80,120,113,20,,244,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,33,55.75,94,70,108,100,0,,255,High,Optimal,Normal,Non-smoker
Alive,,,Female,36,59.75,119,76,126,112,10,,213,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,44,62.25,187,86,120,161,0,,159,Desirable,Normal,Overweight,Non-smoker
Dead,Other,,Female,57,62.75,172,80,146,148,0,69,315,High,High,Overweight,Non-smoker
Alive,,,Female,34,62,122,70,124,105,20,,175,Desirable,Normal,Normal,Heavy (16-25)
Alive,,54,Female,36,66.25,129,76,116,98,0,,159,Desirable,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,53,Female,37,63.5,165,104,160,138,0,69,,,High,Overweight,Non-smoker
Alive,,58,Male,42,67,144,74,110,103,30,,207,Borderline,Optimal,Normal,Very Heavy (> 25)
Alive,,68,Female,40,66.5,131,68,106,99,0,,,,Optimal,Normal,Non-smoker
Alive,,,Male,36,68.25,206,84,114,143,0,,277,High,Normal,Overweight,Non-smoker
Alive,,,Female,60,62.5,180,88,130,155,0,,,,Normal,Overweight,Non-smoker
Alive,,,Male,43,66.5,147,88,138,109,20,,150,Desirable,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,57,72,212,70,114,132,0,85,292,High,Optimal,Overweight,Non-smoker
Alive,,,Male,51,65.75,171,82,128,131,45,,292,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,36,60,112,78,110,103,0,,175,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,29,62.75,135,70,100,116,5,,221,Borderline,Optimal,Overweight,Light (1-5)
Alive,,,Female,44,65.75,166,84,120,130,15,,209,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Male,36,66.25,161,80,122,119,20,,207,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,41,62.5,125,72,104,108,1,,234,Borderline,Optimal,Normal,Light (1-5)
Alive,,,Male,40,64.5,120,74,112,94,20,,188,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Female,57,60.25,104,84,138,95,0,,259,High,Normal,Normal,Non-smoker
Alive,,,Male,43,68.25,150,80,112,104,20,,250,High,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,44,61,122,78,124,109,5,74,292,High,Normal,Normal,Light (1-5)
Alive,,,Female,43,62.25,139,84,130,120,25,,,,Normal,Overweight,Heavy (16-25)
Alive,,,Female,32,61.5,144,74,112,129,25,,224,Borderline,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,44,63.5,128,80,126,107,0,,234,Borderline,Normal,Normal,Non-smoker
Dead,Other,,Male,54,68.5,170,80,142,118,0,86,232,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,57,Male,49,65.25,208,98,138,159,15,59,,,High,Overweight,Moderate (6-15)
Dead,Cancer,,Female,51,63,122,100,174,102,0,77,258,High,High,Normal,Non-smoker
Alive,,77,Male,47,63,149,80,120,119,0,,271,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,50,Male,42,67.25,175,90,136,125,20,54,255,High,High,Overweight,Heavy (16-25)
Alive,,,Female,34,65,114,70,110,89,20,,209,Borderline,Optimal,Underweight,Heavy (16-25)
Dead,Other,68,Female,56,63.25,142,124,220,118,0,86,292,High,High,Overweight,Non-smoker
Alive,,58,Female,34,65,172,90,120,134,5,,196,Desirable,High,Overweight,Light (1-5)
Dead,Cancer,,Female,43,65.75,178,124,164,139,20,51,274,High,High,Overweight,Heavy (16-25)
Alive,,78,Female,56,60.75,154,96,152,141,0,,278,High,High,Overweight,Non-smoker
Alive,,65,Male,47,71.25,166,80,110,106,20,,196,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,47,65,131,80,104,102,0,,188,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,38,69.5,151,94,138,105,0,,165,Desirable,High,Normal,Non-smoker
Alive,,,Female,31,64,115,78,114,93,20,,138,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,76,Male,46,66.75,148,72,112,110,20,,355,High,Optimal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,40,65.25,117,70,138,91,0,64,267,High,Normal,Normal,Non-smoker
Alive,,,Female,40,63,119,76,112,99,0,,186,Desirable,Optimal,Normal,Non-smoker
Dead,Other,69,Female,57,57,131,76,118,131,20,85,296,High,Optimal,Overweight,Heavy (16-25)
Dead,Other,,Male,36,72.25,184,70,112,114,0,68,177,Desirable,Optimal,Overweight,Non-smoker
Dead,Other,,Female,56,58.25,131,76,142,127,0,84,273,High,High,Overweight,Non-smoker
Dead,Other,,Male,57,65.75,162,70,126,124,20,89,252,High,Normal,Overweight,Heavy (16-25)
Dead,Other,,Male,60,68.5,194,98,140,135,20,84,196,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Male,42,74,166,70,100,98,15,,209,Borderline,Optimal,Normal,Moderate (6-15)
Dead,Unknown,,Female,54,66,156,94,134,118,1,72,278,High,High,Overweight,Light (1-5)
Alive,,,Female,42,61,137,80,122,122,0,,188,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,65,Female,59,62.75,128,90,180,110,0,67,223,Borderline,High,Overweight,Non-smoker
Dead,Unknown,,Female,52,60.25,132,106,152,121,0,78,284,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,58,63.5,164,80,110,131,0,82,197,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,56,63,181,96,154,151,0,,192,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Female,54,61.25,160,88,130,143,20,80,234,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,42,58,116,70,108,113,0,,219,Borderline,Optimal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,65,Female,51,67.5,190,80,122,140,0,81,165,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,51,69.5,184,100,180,124,0,61,173,Desirable,High,Overweight,Non-smoker
Alive,,,Female,31,61,125,90,140,112,0,,,,High,Overweight,Non-smoker
Alive,,,Male,39,69.5,178,70,100,120,20,,230,Borderline,Optimal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,46,60.25,160,120,178,147,0,76,,,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,59,Female,43,64.5,117,78,104,94,20,69,209,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Female,42,65.5,130,74,124,102,15,,200,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Male,55,65,175,86,138,134,0,,270,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,59,63.75,135,90,142,108,40,71,263,High,High,Normal,Very Heavy (> 25)
Alive,,,Female,46,64.5,111,76,118,90,0,,161,Desirable,Optimal,Underweight,Non-smoker
Dead,Cancer,,Male,32,70.5,159,74,118,105,25,62,158,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Cancer,,Male,46,66,179,80,110,133,0,78,227,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,36,64.75,188,84,130,152,20,,217,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,54,68.75,198,100,150,138,0,74,250,High,High,Overweight,Non-smoker
Alive,,,Female,48,56.75,125,78,150,129,0,,309,High,High,Overweight,Non-smoker
Alive,,,Female,52,63.25,144,92,150,120,5,,310,High,High,Overweight,Light (1-5)
Alive,,,Male,54,70.25,203,84,126,134,0,,208,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,33,63.25,154,88,120,128,0,,203,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,52,61.5,131,70,106,117,0,80,226,Borderline,Optimal,Overweight,Non-smoker
Dead,Cancer,,Female,39,63,113,60,112,94,30,71,271,High,Optimal,Normal,Very Heavy (> 25)
Alive,,,Male,33,66.25,169,78,116,125,0,,250,High,Optimal,Overweight,Non-smoker
Alive,,,Female,42,61,163,84,140,146,0,,288,High,Normal,Overweight,Non-smoker
Alive,,,Male,32,69,148,80,124,100,15,,278,High,Normal,Normal,Moderate (6-15)
Alive,,,Female,59,61.5,172,80,120,154,0,,,,Normal,Overweight,Non-smoker
Alive,,,Female,45,62.25,145,94,150,125,5,,259,High,High,Overweight,Light (1-5)
Alive,,,Male,49,70,188,80,128,124,0,,270,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,29,65.75,118,78,128,92,0,57,175,Desirable,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,64,Male,58,67.75,158,110,226,113,0,68,260,High,High,Overweight,Non-smoker
Alive,,69,Female,39,62,118,70,126,102,20,,188,Desirable,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,45,Female,33,62.75,137,110,160,118,40,47,,,High,Overweight,Very Heavy (> 25)
Alive,,,Female,59,58.5,136,92,196,132,0,,242,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,79,Male,53,66.75,155,90,144,115,0,81,255,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,53,67.5,138,70,114,99,20,79,192,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Male,46,65.75,154,80,120,118,35,,200,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,32,62.5,128,78,104,110,1,46,173,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Male,40,65,137,80,114,105,0,,209,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,33,67.75,166,90,138,119,20,,217,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,57,Male,51,68.75,179,92,138,124,0,75,284,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,52,Male,36,70,212,98,160,139,45,54,,,High,Overweight,Very Heavy (> 25)
Dead,Unknown,,Male,50,68.5,152,90,142,106,30,58,226,Borderline,High,Normal,Very Heavy (> 25)
Dead,Other,,Female,57,64.5,158,82,122,127,0,75,255,High,Normal,Overweight,Non-smoker
Dead,Other,,Male,34,61,161,80,140,135,0,66,196,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,54,63.5,151,96,156,126,0,,384,High,High,Overweight,Non-smoker
Alive,,,Female,34,68.5,140,70,124,100,15,,192,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,34,67.75,165,84,130,118,0,,170,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,33,61,136,70,130,121,20,53,217,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,69,Male,55,66.5,165,84,120,122,0,81,225,Borderline,Normal,Overweight,Non-smoker
Alive,,72,Male,50,67,170,84,140,121,0,,193,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,43,66.25,129,68,112,96,25,,192,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,74,Male,46,62,191,106,160,157,20,,212,Borderline,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,46,70.25,202,78,120,133,25,68,200,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,46,64.5,131,80,122,106,0,,305,High,Normal,Normal,Non-smoker
Alive,,,Male,46,69.5,174,90,140,118,40,,204,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,34,60,123,76,120,113,15,,307,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,31,64.25,142,74,114,115,15,,207,Borderline,Optimal,Overweight,Moderate (6-15)
Dead,Unknown,,Male,62,69,118,72,140,80,0,74,232,Borderline,Normal,Underweight,Non-smoker
Alive,,51,Female,33,62.5,191,80,108,165,0,,208,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,33,65.5,129,74,114,98,15,,285,High,Optimal,Normal,Moderate (6-15)
Dead,Cancer,,Female,50,67.5,181,80,106,133,20,58,,,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,46,64,147,92,140,119,0,64,217,Borderline,High,Overweight,Non-smoker
Alive,,,Female,54,59.5,118,92,140,111,0,,249,High,High,Overweight,Non-smoker
Alive,,,Female,32,63,143,80,114,119,0,,193,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,42,60.5,135,140,230,124,0,,209,Borderline,High,Overweight,Non-smoker
Alive,,,Female,48,60.5,132,100,158,121,0,,342,High,High,Overweight,Non-smoker
Alive,,,Male,32,67.25,178,70,126,127,10,,255,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,41,63,139,84,132,116,0,,,,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,55,61.25,122,130,216,109,0,61,245,High,High,Normal,Non-smoker
Dead,Unknown,,Female,42,62.5,128,80,126,110,10,68,236,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,53,62.5,126,110,170,109,0,73,234,Borderline,High,Normal,Non-smoker
Dead,Cancer,,Female,43,63.5,185,92,160,154,0,73,,,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,42,Male,40,65.75,178,110,152,136,25,52,258,High,High,Overweight,Heavy (16-25)
Dead,Cancer,71,Female,49,62.5,150,106,208,129,0,77,288,High,High,Overweight,Non-smoker
Alive,,,Male,31,69,168,92,142,114,15,,307,High,High,Overweight,Moderate (6-15)
Alive,,56,Male,36,70.5,175,86,140,115,5,,,,Normal,Overweight,Light (1-5)
Alive,,,Female,32,65.75,141,60,112,110,0,,192,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,33,69.75,195,80,120,132,0,,190,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,52,62,154,110,166,133,0,,267,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,63,Female,53,62,221,88,136,191,1,73,255,High,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,39,66.25,152,70,168,113,40,55,,,High,Overweight,Very Heavy (> 25)
Alive,,,Female,36,61.5,126,86,130,113,0,,184,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,34,60.5,176,92,140,161,10,,200,Borderline,High,Overweight,Moderate (6-15)
Dead,Other,64,Female,52,62.25,145,84,130,125,20,80,232,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,32,61,127,76,116,113,0,,184,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,51,65.5,139,80,124,109,0,,236,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,33,65.5,122,70,120,95,1,,207,Borderline,Normal,Normal,Light (1-5)
Alive,,,Male,44,65.75,162,90,138,124,5,,170,Desirable,High,Overweight,Light (1-5)
Alive,,,Female,32,60.5,125,60,118,115,15,,200,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,,Male,39,67.25,168,70,110,120,10,,,,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,45,64.5,128,70,110,103,20,,300,High,Optimal,Normal,Heavy (16-25)
Alive,,,Female,30,65.5,122,70,110,95,20,,242,High,Optimal,Normal,Heavy (16-25)
Alive,,77,Female,55,65,205,100,200,160,0,,242,High,High,Overweight,Non-smoker
Alive,,,Male,35,64,157,100,164,123,20,,192,Desirable,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,63,Male,49,67.5,166,78,118,119,0,65,217,Borderline,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,69,Male,59,69,211,74,114,143,20,71,161,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,65,Male,35,72,139,70,114,86,0,,255,High,Optimal,Underweight,Non-smoker
Dead,Coronary Heart Disease,66,Male,50,70,191,94,144,126,30,68,217,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,64,Male,44,68.5,162,86,126,113,0,66,234,Borderline,Normal,Overweight,Non-smoker
Alive,,54,Female,54,63.75,184,78,134,153,0,,,,Normal,Overweight,Non-smoker
Dead,Other,59,Male,45,67,131,70,124,94,20,67,226,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,33,68.25,190,82,118,132,0,,296,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,39,64,156,70,120,126,20,65,243,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,65,Male,51,69.25,205,82,140,139,45,67,217,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,43,65.25,142,80,146,111,0,,255,High,High,Overweight,Non-smoker
Dead,Cancer,67,Female,49,60.25,133,100,210,122,0,71,227,Borderline,High,Overweight,Non-smoker
Dead,Other,62,Male,58,67,159,80,124,114,0,68,265,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,87,Female,57,63.5,115,80,112,96,0,89,250,High,Normal,Normal,Non-smoker
Alive,,,Male,39,68.25,161,86,136,112,0,,230,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,35,68.25,141,68,112,98,10,,234,Borderline,Optimal,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,51,61,152,70,110,136,5,71,150,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Male,32,69.25,187,80,122,126,25,,238,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,50,61,173,80,122,154,0,,190,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,42,62,145,90,128,125,0,,200,Borderline,High,Overweight,Non-smoker
Alive,,,Male,43,67.75,121,74,130,86,20,,217,Borderline,Normal,Underweight,Heavy (16-25)
Dead,Coronary Heart Disease,60,Male,56,70.5,203,120,170,134,0,72,260,High,High,Overweight,Non-smoker
Alive,,,Female,44,67,145,80,122,107,5,,236,Borderline,Normal,Normal,Light (1-5)
Alive,,,Female,32,64.25,128,66,112,103,0,,184,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,46,65.25,161,76,116,126,0,,292,High,Optimal,Overweight,Non-smoker
Dead,Cancer,,Female,55,60,173,110,186,159,0,63,198,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,57,60,159,80,124,146,15,79,217,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,65,Female,51,64.25,169,90,150,136,20,67,182,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,51,63,143,80,124,119,0,,,,Normal,Overweight,Non-smoker
Alive,,,Female,37,59.5,120,80,132,113,0,,154,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,57,60.5,134,80,130,123,0,77,276,High,Normal,Overweight,Non-smoker
Alive,,,Male,30,73,198,80,142,119,0,,250,High,High,Overweight,Non-smoker
Dead,Unknown,48,Male,40,66.25,164,104,164,121,15,60,492,High,High,Overweight,Moderate (6-15)
Dead,Other,,Female,53,57.5,109,76,126,109,0,77,282,High,Normal,Normal,Non-smoker
Alive,,,Male,51,68.5,194,96,140,135,40,,165,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,36,60.75,99,68,100,91,0,60,223,Borderline,Optimal,Normal,Non-smoker
Dead,Cancer,,Female,48,63.25,185,92,170,154,0,80,238,Borderline,High,Overweight,Non-smoker
Alive,,,Female,33,63.5,138,66,110,115,0,,,,Optimal,Overweight,Non-smoker
Dead,Cancer,72,Female,58,62.25,170,90,140,147,0,84,283,High,High,Overweight,Non-smoker
Alive,,,Male,43,65.75,148,80,120,113,20,,234,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,35,61.25,126,60,106,113,0,,252,High,Optimal,Overweight,Non-smoker
Alive,,77,Female,49,63.25,140,80,120,117,0,,221,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,69,Male,55,67.25,159,90,130,114,0,79,309,High,High,Overweight,Non-smoker
Dead,Cancer,55,Male,47,64.25,140,80,110,109,25,73,245,High,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,75,Male,55,67.5,147,90,140,105,5,77,278,High,High,Normal,Light (1-5)
Alive,,,Female,41,61,109,80,120,97,20,,342,High,Normal,Normal,Heavy (16-25)
Alive,,60,Male,44,65.25,136,86,132,104,15,,217,Borderline,Normal,Normal,Moderate (6-15)
Alive,,60,Male,38,68.5,198,90,136,138,20,,268,High,High,Overweight,Heavy (16-25)
Alive,,,Female,55,62,146,82,132,126,0,,255,High,Normal,Overweight,Non-smoker
Alive,,,Female,32,63,146,98,140,122,20,,239,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,39,71.25,202,82,132,129,25,,208,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Other,54,Male,48,66.75,152,84,120,113,20,62,271,High,Normal,Overweight,Heavy (16-25)
Alive,,59,Male,47,63.75,133,88,128,106,15,,184,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,48,63.5,132,74,138,110,0,,184,Desirable,Normal,Overweight,Non-smoker
Alive,,58,Female,44,58.25,121,86,130,117,0,,342,High,Normal,Overweight,Non-smoker
Alive,,60,Female,44,60,141,96,130,129,0,,278,High,High,Overweight,Non-smoker
Alive,,80,Male,54,67.5,160,96,152,114,0,,209,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,57,69.75,169,90,140,114,20,87,318,High,High,Overweight,Heavy (16-25)
Alive,,,Female,41,62,122,74,100,105,0,,129,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,34,60.75,116,70,110,106,20,,195,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Cancer,,Female,42,61.5,142,100,142,127,0,66,210,Borderline,High,Overweight,Non-smoker
Alive,,,Male,45,66,167,80,112,124,20,,218,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,30,65.5,214,100,140,163,5,,243,High,High,Overweight,Light (1-5)
Alive,,70,Female,40,63.25,152,80,128,127,20,,146,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,68,Male,40,70.5,187,88,140,123,20,,177,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,31,72.75,181,78,122,112,20,,182,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,30,60.75,102,64,102,94,0,,196,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,33,59.75,116,80,120,109,20,,260,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,43,61.5,133,80,120,119,0,,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,47,65.5,151,80,120,115,50,,221,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,35,65.75,165,70,110,129,20,,175,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,38,63,116,72,110,97,0,,234,Borderline,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,48,Male,30,68,135,80,128,94,0,50,196,Desirable,Normal,Normal,Non-smoker
Alive,,66,Male,46,66.75,160,70,114,119,0,,242,High,Optimal,Overweight,Non-smoker
Alive,,,Female,38,67,142,90,130,104,5,,250,High,High,Normal,Light (1-5)
Alive,,72,Female,52,65.5,180,80,134,141,0,,309,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,55,66,164,84,126,121,0,83,300,High,Normal,Overweight,Non-smoker
Alive,,71,Male,43,70,154,76,118,101,5,,191,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Female,43,61.5,109,70,110,97,20,,232,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Female,37,62,113,68,118,97,30,,277,High,Optimal,Normal,Very Heavy (> 25)
Alive,,,Male,33,64.25,143,76,132,112,0,,263,High,Normal,Overweight,Non-smoker
Alive,,,Female,33,67,148,80,110,109,15,,224,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Male,32,70.75,197,74,122,130,35,,282,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,49,64.5,148,88,134,119,20,,256,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,37,67,148,72,102,109,5,,200,Borderline,Optimal,Normal,Light (1-5)
Dead,Coronary Heart Disease,69,Female,59,59.5,91,72,102,86,0,91,200,Borderline,Optimal,Underweight,Non-smoker
Dead,Cerebral Vascular Disease,57,Male,47,70.25,176,90,144,116,30,79,224,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Other,,Female,43,60.75,136,100,158,125,15,55,268,High,High,Overweight,Moderate (6-15)
Alive,,,Female,33,62.5,138,90,130,119,0,,233,Borderline,High,Overweight,Non-smoker
Alive,,,Female,57,59.25,113,84,108,107,0,,212,Borderline,Normal,Normal,Non-smoker
Dead,Unknown,,Male,56,64,145,78,124,113,20,76,200,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,32,69.5,171,80,112,116,15,,234,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,35,60.75,144,64,114,132,0,,183,Desirable,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,53,Male,53,74.5,191,100,160,112,5,59,267,High,High,Overweight,Light (1-5)
Alive,,,Female,33,63.5,119,76,112,99,10,,224,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Male,35,69.25,167,70,120,113,20,,210,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Other,78,Female,58,59.25,106,80,140,100,0,84,267,High,Normal,Normal,Non-smoker
Alive,,62,Female,32,61.25,136,74,114,121,0,,256,High,Optimal,Overweight,Non-smoker
Alive,,,Female,42,67,129,60,106,95,20,,222,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Male,32,71.5,170,80,144,108,0,,196,Desirable,High,Normal,Non-smoker
Alive,,,Female,32,61.75,105,70,120,94,0,,228,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,30,64.25,126,80,120,102,15,,232,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,30,65.25,178,74,112,139,0,,184,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,31,65.25,146,80,122,111,20,,204,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,46,69.5,152,100,150,103,0,60,192,Desirable,High,Normal,Non-smoker
Alive,,53,Male,35,70.5,164,80,130,108,20,,207,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,33,62.25,138,72,112,119,0,,188,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,43,64.25,148,80,128,119,0,,275,High,Normal,Overweight,Non-smoker
Alive,,,Male,38,67,169,86,120,121,0,,250,High,Normal,Overweight,Non-smoker
Alive,,,Male,48,74,224,90,130,132,0,,225,Borderline,High,Overweight,Non-smoker
Alive,,57,Male,37,67,175,80,124,125,0,,233,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,48,62,187,80,130,161,0,,239,Borderline,Normal,Overweight,Non-smoker
Alive,,79,Male,53,71,186,78,118,118,0,,230,Borderline,Optimal,Overweight,Non-smoker
Dead,Cancer,68,Male,46,69.5,166,76,124,112,0,70,217,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,34,67,168,78,124,120,0,54,221,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,33,70,180,88,130,118,35,,212,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,62,Male,32,69,173,80,116,117,0,64,217,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,48,62,197,110,166,170,0,72,250,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,44,63.25,134,66,100,112,25,64,271,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,43,63,169,80,120,141,5,,291,High,Normal,Overweight,Light (1-5)
Alive,,,Female,47,65.5,131,80,136,102,1,,271,High,Normal,Normal,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,46,65,184,90,122,140,30,60,,,High,Overweight,Very Heavy (> 25)
Alive,,,Male,51,67.25,152,92,126,109,20,,167,Desirable,High,Normal,Heavy (16-25)
Dead,Cancer,,Male,51,,170,76,106,133,20,59,250,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,34,62,160,72,112,138,20,,204,Borderline,Optimal,Overweight,Heavy (16-25)
Alive,,55,Male,35,65.25,188,78,124,144,10,,275,High,Normal,Overweight,Moderate (6-15)
Dead,Unknown,,Female,47,63.5,162,82,138,135,5,57,222,Borderline,Normal,Overweight,Light (1-5)
Dead,Cancer,,Male,54,69,130,90,122,88,40,58,,,High,Underweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,61,60,143,88,136,131,0,91,313,High,Normal,Overweight,Non-smoker
Alive,,,Female,45,61.5,150,100,180,134,20,,317,High,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,49,67,167,100,132,119,20,55,255,High,High,Overweight,Heavy (16-25)
Alive,,,Female,39,64,128,88,136,103,0,,242,High,Normal,Normal,Non-smoker
Alive,,,Male,40,69,189,80,140,128,40,,276,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,43,71,172,88,128,110,0,,294,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,59,62.25,146,80,124,126,0,87,258,High,Normal,Overweight,Non-smoker
Alive,,,Female,39,65,155,80,112,121,0,,234,Borderline,Normal,Overweight,Non-smoker
Dead,Other,,Male,51,61,136,110,180,114,0,65,317,High,High,Overweight,Non-smoker
Alive,,60,Female,36,65,161,80,132,126,0,,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,34,60.5,136,66,104,125,0,,277,High,Optimal,Overweight,Non-smoker
Dead,Cancer,68,Male,54,68.25,190,80,120,132,15,82,209,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,60,Female,56,61.5,133,110,160,119,0,78,322,High,High,Overweight,Non-smoker
Alive,,,Female,38,63,129,80,118,108,0,,204,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,67,Male,59,65,156,90,160,119,25,69,208,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,49,65.5,153,94,135,117,0,,242,High,High,Overweight,Non-smoker
Alive,,,Female,37,68,159,82,118,114,0,,250,High,Normal,Overweight,Non-smoker
Alive,,68,Female,38,59,106,80,124,100,0,,175,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,44,70.25,204,80,102,134,0,,238,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,52,63.25,153,78,132,128,25,,206,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,56,70,147,60,120,97,1,88,228,Borderline,Normal,Normal,Light (1-5)
Alive,,,Female,41,59.75,123,70,110,116,5,,219,Borderline,Optimal,Overweight,Light (1-5)
Alive,,,Female,33,59,114,80,112,108,0,,267,High,Normal,Normal,Non-smoker
Alive,,56,Male,34,67.25,183,88,138,131,30,,234,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,31,65.25,150,78,118,117,5,,200,Borderline,Optimal,Overweight,Light (1-5)
Alive,,,Female,36,65.25,149,74,122,116,0,,199,Desirable,Normal,Overweight,Non-smoker
Dead,Other,,Male,40,69.75,177,72,112,120,5,72,250,High,Optimal,Overweight,Light (1-5)
Dead,Unknown,,Female,36,60.5,116,76,112,106,0,58,,,Optimal,Normal,Non-smoker
Alive,,,Male,49,70.5,142,78,118,93,0,,163,Desirable,Optimal,Normal,Non-smoker
Dead,Cancer,,Male,45,67.5,158,84,136,113,30,73,246,High,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,37,66.5,193,94,132,143,5,69,209,Borderline,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,83,Female,59,62.75,135,110,190,116,0,89,267,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,74,Female,52,65,141,78,122,110,0,76,288,High,Normal,Overweight,Non-smoker
Alive,,,Female,52,67.25,163,110,180,120,0,,204,Borderline,High,Overweight,Non-smoker
Alive,,,Female,35,61.75,135,88,132,121,0,,284,High,Normal,Overweight,Non-smoker
Alive,,,Male,37,67.5,147,80,118,105,20,,178,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,31,66.25,150,70,112,114,20,,196,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,51,65.75,165,90,130,129,0,69,238,Borderline,High,Overweight,Non-smoker
Alive,,,Male,32,67.5,194,84,122,139,5,,268,High,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,59,Male,57,64.5,117,90,150,91,0,63,246,High,High,Normal,Non-smoker
Dead,Other,,Female,30,64.25,153,68,110,123,0,52,217,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,33,70,190,80,130,125,5,,213,Borderline,Normal,Overweight,Light (1-5)
Dead,Other,66,Female,50,59.5,109,78,138,103,1,76,276,High,Normal,Normal,Light (1-5)
Dead,Coronary Heart Disease,67,Male,49,66.25,182,96,130,135,0,77,226,Borderline,High,Overweight,Non-smoker
Alive,,,Female,54,62.75,143,92,150,123,0,,271,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,77,Female,55,63.75,186,90,150,155,0,79,216,Borderline,High,Overweight,Non-smoker
Alive,,,Female,51,61.25,151,76,150,135,0,,380,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,52,69,162,94,136,109,10,72,219,Borderline,High,Normal,Moderate (6-15)
Dead,Other,,Female,49,59,143,115,180,135,0,69,263,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,58,62.5,145,100,160,125,0,78,308,High,High,Overweight,Non-smoker
Alive,,,Female,42,67.25,150,80,120,110,0,,,,Normal,Overweight,Non-smoker
Alive,,,Female,48,61.5,142,100,150,127,0,,291,High,High,Overweight,Non-smoker
Alive,,,Male,47,65.5,146,86,126,111,0,,173,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,35,66.25,133,70,110,99,15,,198,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Female,51,65.25,239,88,150,187,1,,175,Desirable,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,54,67,176,86,130,126,20,70,228,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,66,Female,44,61.5,179,108,162,160,10,68,324,High,High,Overweight,Moderate (6-15)
Alive,,,Female,41,63,125,76,122,104,0,,271,High,Normal,Normal,Non-smoker
Alive,,,Male,42,65.75,138,80,118,105,15,,,,Normal,Normal,Moderate (6-15)
Alive,,,Female,58,63.5,114,92,180,95,0,,300,High,High,Normal,Non-smoker
Alive,,,Male,45,61,134,90,140,113,0,,267,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,60,61.5,117,80,160,104,0,84,227,Borderline,High,Normal,Non-smoker
Alive,,,Female,50,61.75,138,80,128,123,0,,243,High,Normal,Overweight,Non-smoker
Alive,,,Female,39,62.5,157,92,130,135,20,,248,High,High,Overweight,Heavy (16-25)
Alive,,65,Female,35,62.5,120,80,130,103,0,,242,High,Normal,Normal,Non-smoker
Alive,,,Female,30,63,138,70,132,115,40,,184,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,30,62.5,130,88,126,112,40,,194,Desirable,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,46,Male,40,69,186,90,148,126,20,60,267,High,High,Overweight,Heavy (16-25)
Alive,,,Male,52,62,155,70,108,127,0,,192,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,46,59,101,84,132,95,0,,271,High,Normal,Normal,Non-smoker
Dead,Cancer,,Female,51,65,151,70,112,118,0,81,230,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,37,61,104,84,112,93,20,,255,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,30,63,121,84,118,101,0,,226,Borderline,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,53,62.25,129,80,132,111,10,81,219,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,30,64.75,152,80,118,123,15,,179,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,59,Female,35,61.25,127,78,122,113,20,,358,High,Normal,Overweight,Heavy (16-25)
Alive,,62,Male,32,67.5,177,80,108,126,5,,149,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,42,59,92,82,126,87,0,,179,Desirable,Normal,Underweight,Non-smoker
Alive,,32,Male,32,73,239,92,138,144,0,,171,Desirable,High,Overweight,Non-smoker
Dead,Other,,Female,42,61.25,105,70,96,94,0,58,222,Borderline,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,63,Male,57,67.5,169,72,102,121,15,79,162,Desirable,Optimal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,79,Male,59,70.5,193,78,128,127,10,81,167,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Female,38,62.25,117,66,110,101,15,,197,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Male,41,66.25,136,100,138,101,15,,171,Desirable,High,Normal,Moderate (6-15)
Alive,,,Female,39,67,159,86,134,117,0,,197,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,38,58.5,113,64,100,110,0,,252,High,Optimal,Overweight,Non-smoker
Alive,,,Female,40,63.5,149,86,142,124,0,,180,Desirable,High,Overweight,Non-smoker
Alive,,,Female,31,63.75,128,64,102,107,15,,248,High,Optimal,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,51,57.25,104,80,120,104,0,65,184,Desirable,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,37,60,176,94,164,161,0,59,282,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,50,68.5,165,100,140,115,0,74,179,Desirable,High,Overweight,Non-smoker
Alive,,,Female,41,61,95,70,120,85,15,,238,Borderline,Normal,Underweight,Moderate (6-15)
Alive,,,Female,51,64,175,80,116,141,20,,267,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,38,61,138,88,142,123,0,,209,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,56,63.25,136,80,124,113,0,78,309,High,Normal,Overweight,Non-smoker
Dead,Unknown,60,Male,34,72.5,245,90,140,152,0,64,271,High,High,Overweight,Non-smoker
Dead,Other,,Female,42,60.5,129,92,168,118,0,64,238,Borderline,High,Overweight,Non-smoker
Alive,,66,Female,46,60.5,139,80,146,128,0,,278,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,63,Male,51,68.75,193,90,134,134,25,65,256,High,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,79,Male,53,68,169,72,138,117,10,81,259,High,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,59,Female,45,61,130,80,122,116,5,71,338,High,Normal,Overweight,Light (1-5)
Alive,,,Female,35,62,122,80,118,105,5,,,,Normal,Normal,Light (1-5)
Alive,,38,Male,38,71,179,70,110,114,0,,184,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,45,60,104,70,112,95,0,,209,Borderline,Optimal,Normal,Non-smoker
Dead,Other,,Male,36,71,184,70,122,117,30,58,218,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,60,Male,40,68.5,182,90,138,126,0,,242,High,High,Overweight,Non-smoker
Dead,Other,,Male,32,69.25,211,96,158,143,40,62,250,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,40,63.5,128,70,110,107,0,,179,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,45,68,183,80,126,127,5,,228,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,53,64,145,88,130,117,0,,233,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,75,Male,51,74,239,100,158,141,5,77,243,High,High,Overweight,Light (1-5)
Alive,,,Male,44,67,155,70,132,111,15,,220,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,72,Female,44,61.5,149,90,156,133,0,74,234,Borderline,High,Overweight,Non-smoker
Alive,,,Female,32,64,119,76,118,96,5,,188,Desirable,Optimal,Normal,Light (1-5)
Dead,Unknown,,Female,34,59.5,120,70,118,113,5,58,309,High,Optimal,Overweight,Light (1-5)
Dead,Cancer,48,Male,48,65.25,144,76,110,110,0,80,253,High,Optimal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,52,66.5,147,130,228,109,20,58,184,Desirable,High,Normal,Heavy (16-25)
Alive,,,Female,39,65.25,135,74,110,105,0,,234,Borderline,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,54,Female,48,62.75,166,94,144,143,0,60,493,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,63,Male,53,66.75,172,94,150,127,0,81,226,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,68,Male,54,69,180,76,110,122,0,80,202,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,50,65,203,96,150,159,0,,196,Desirable,High,Overweight,Non-smoker
Alive,,,Male,33,69.25,168,80,118,114,0,,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,35,65.25,137,80,128,107,0,,179,Desirable,Normal,Normal,Non-smoker
Dead,Cancer,,Male,50,68.25,187,90,136,130,30,80,217,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,37,62.25,120,88,130,103,5,,175,Desirable,Normal,Normal,Light (1-5)
Alive,,,Male,39,66.25,190,100,164,141,30,,221,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,55,Female,51,61.25,129,100,168,115,0,,309,High,High,Overweight,Non-smoker
Dead,Cancer,58,Female,36,64.25,142,82,122,115,15,68,194,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,64,Male,44,64.5,162,98,158,127,0,,215,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,57,Male,53,66.25,150,86,120,111,60,67,209,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,49,60.5,164,86,128,150,0,59,280,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,57,66.5,173,96,158,128,5,61,,,High,Overweight,Light (1-5)
Alive,,,Female,40,62,116,70,140,100,20,,248,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,40,62.5,132,72,128,114,0,,199,Desirable,Normal,Overweight,Non-smoker
Alive,,67,Male,37,67.25,162,100,140,116,20,,211,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,51,71.25,166,106,168,106,20,,219,Borderline,High,Normal,Heavy (16-25)
Alive,,,Male,37,71.5,178,68,100,113,0,,179,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,58,56.75,117,82,154,121,0,,242,High,High,Overweight,Non-smoker
Alive,,62,Female,36,59,106,68,122,100,5,,167,Desirable,Normal,Normal,Light (1-5)
Alive,,,Female,36,64.25,111,70,122,90,0,,228,Borderline,Normal,Underweight,Non-smoker
Alive,,,Male,39,69.75,196,70,110,132,0,,209,Borderline,Optimal,Overweight,Non-smoker
Dead,Cancer,,Male,50,70.25,183,100,176,120,0,70,276,High,High,Overweight,Non-smoker
Alive,,,Male,31,69.75,146,88,142,99,0,,163,Desirable,High,Normal,Non-smoker
Alive,,,Male,51,65,167,100,150,127,20,,288,High,High,Overweight,Heavy (16-25)
Alive,,60,Female,42,63,129,90,142,108,15,,278,High,High,Normal,Moderate (6-15)
Alive,,77,Female,53,63,135,92,132,113,5,,197,Desirable,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,59,67.5,178,90,148,131,20,75,255,High,High,Overweight,Heavy (16-25)
Alive,,,Female,36,61,115,68,116,103,40,,229,Borderline,Optimal,Normal,Very Heavy (> 25)
Alive,,,Male,35,69,181,86,128,122,40,,249,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,33,68.5,201,78,142,140,0,,227,Borderline,High,Overweight,Non-smoker
Alive,,,Female,33,68,146,72,112,104,0,,180,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,42,61,137,76,120,122,0,,280,High,Normal,Overweight,Non-smoker
Alive,,,Female,42,60.25,131,92,160,120,0,,204,Borderline,High,Overweight,Non-smoker
Alive,,76,Female,48,65,157,88,148,123,0,,271,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,55,63.5,194,100,192,162,0,79,284,High,High,Overweight,Non-smoker
Dead,Other,,Male,39,70.25,179,82,120,118,20,57,233,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,52,60,155,100,160,142,0,,300,High,High,Overweight,Non-smoker
Alive,,,Female,40,61.25,113,70,98,101,0,,150,Desirable,Optimal,Normal,Non-smoker
Alive,,50,Male,44,66,164,80,120,121,20,,242,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,45,65.5,137,60,94,107,0,,,,Optimal,Normal,Non-smoker
Dead,Cancer,,Male,44,67.25,165,78,120,118,0,72,142,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,46,59.5,153,84,136,144,0,,184,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,40,61.5,156,100,150,139,20,,244,High,High,Overweight,Heavy (16-25)
Alive,,,Female,31,64.5,151,70,134,122,1,,267,High,Normal,Overweight,Light (1-5)
Dead,Other,,Female,56,64.25,169,80,124,136,0,88,175,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,39,70.75,128,70,110,86,15,,209,Borderline,Optimal,Underweight,Moderate (6-15)
Alive,,,Female,48,64.5,137,74,114,110,1,,228,Borderline,Optimal,Overweight,Light (1-5)
Dead,Cancer,,Male,48,71.75,151,76,136,96,20,80,192,Desirable,Normal,Normal,Heavy (16-25)
Alive,,55,Male,31,72.25,190,72,112,118,30,,233,Borderline,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Female,42,56.5,141,90,130,145,0,,243,High,High,Overweight,Non-smoker
Alive,,,Male,57,67.5,167,80,160,119,0,,292,High,High,Overweight,Non-smoker
Alive,,,Female,45,65,167,90,156,130,0,,276,High,High,Overweight,Non-smoker
Alive,,,Female,43,63.5,150,90,140,125,0,,242,High,High,Overweight,Non-smoker
Alive,,,Female,49,58.25,105,70,110,102,0,,,,Optimal,Normal,Non-smoker
Dead,Cancer,,Male,58,65.25,128,96,176,98,20,78,267,High,High,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,52,73,220,84,124,133,0,78,250,High,Normal,Overweight,Non-smoker
Alive,,61,Male,31,64.5,151,70,112,118,25,,263,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,48,58.5,118,80,124,115,0,,248,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,53,56.75,166,100,164,171,0,77,198,Desirable,High,Overweight,Non-smoker
Alive,,,Female,38,60.25,132,70,110,121,0,,250,High,Optimal,Overweight,Non-smoker
Alive,,,Male,43,65.25,168,72,116,128,20,,200,Borderline,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,32,67,133,70,122,95,0,,196,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,44,64,116,70,118,94,5,,200,Borderline,Optimal,Normal,Light (1-5)
Alive,,,Female,30,64.5,141,76,112,114,0,,215,Borderline,Optimal,Overweight,Non-smoker
Alive,,62,Male,42,69.5,178,82,116,120,0,,179,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,38,63.75,135,90,120,108,0,,207,Borderline,High,Normal,Non-smoker
Dead,Cancer,,Male,37,66.5,170,70,120,126,30,63,234,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,45,71.25,146,84,128,93,0,,239,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,40,59.25,128,84,122,121,10,,217,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,38,64.5,145,80,122,117,0,,192,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,49,63,143,90,136,119,0,,263,High,High,Overweight,Non-smoker
Alive,,,Male,41,63.75,117,84,138,94,20,,,,Normal,Normal,Heavy (16-25)
Alive,,,Female,43,64.5,148,86,132,119,0,,259,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,54,64,212,108,180,171,20,66,309,High,High,Overweight,Heavy (16-25)
Alive,,63,Female,43,61.5,138,86,132,123,0,,230,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,31,67.75,190,90,138,136,15,,233,Borderline,High,Overweight,Moderate (6-15)
Dead,Cancer,,Female,43,59.5,138,72,126,130,5,57,248,High,Normal,Overweight,Light (1-5)
Alive,,,Male,50,63.5,175,104,154,140,0,,248,High,High,Overweight,Non-smoker
Alive,,,Female,39,63,141,60,108,118,20,,238,Borderline,Optimal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,46,Male,38,71.5,220,90,128,140,30,48,258,High,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,52,Male,46,67.5,171,90,140,122,20,58,334,High,High,Overweight,Heavy (16-25)
Alive,,63,Female,53,61.5,135,80,140,121,0,,248,High,Normal,Overweight,Non-smoker
Alive,,72,Male,44,73.25,238,100,150,143,20,,237,Borderline,High,Overweight,Heavy (16-25)
Alive,,60,Female,34,60.5,180,86,128,165,0,,243,High,Normal,Overweight,Non-smoker
Alive,,69,Female,47,64,123,80,122,99,5,,298,High,Normal,Normal,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,45,71.25,183,84,160,117,40,55,263,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,39,63,154,90,160,128,0,,196,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,59,Male,57,65.5,135,100,164,103,0,73,300,High,High,Normal,Non-smoker
Dead,Cancer,62,Male,40,71.5,240,90,128,153,40,70,228,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,43,59,136,78,122,128,0,,209,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,32,62,109,62,100,94,5,,200,Borderline,Optimal,Normal,Light (1-5)
Alive,,,Female,51,60,103,80,130,94,0,,200,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,84,Male,56,63.5,125,80,143,100,10,86,219,Borderline,High,Normal,Moderate (6-15)
Alive,,,Female,45,62.25,119,78,120,103,0,,128,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,50,68.25,172,78,130,119,35,,194,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,31,67,193,100,148,138,40,,161,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Male,35,63.25,175,102,158,140,0,,179,Desirable,High,Overweight,Non-smoker
Dead,Other,,Female,35,61.5,112,80,116,100,15,43,188,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,31,63.25,144,80,128,120,0,,179,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,49,61.75,129,82,126,115,0,59,307,High,Normal,Overweight,Non-smoker
Alive,,,Male,44,66.25,151,68,128,112,15,,200,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,33,66.75,145,80,122,110,20,,217,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,33,67.75,159,74,120,114,20,,221,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,70,Female,40,65.25,133,82,160,104,0,,196,Desirable,High,Normal,Non-smoker
Alive,,,Male,34,66.5,133,80,122,99,15,,179,Desirable,Normal,Normal,Moderate (6-15)
Dead,Cancer,,Female,44,62.25,115,86,130,99,0,68,171,Desirable,Normal,Normal,Non-smoker
Alive,,57,Male,31,69,238,88,140,161,0,,250,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,54,Male,48,71.25,196,82,134,125,30,66,,,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,57,Male,57,67.5,168,84,148,120,25,73,184,Desirable,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,66,Female,46,61,127,82,128,113,0,68,234,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,57,70,188,76,120,124,20,,255,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,61,Male,55,70,177,100,162,116,0,67,288,High,High,Overweight,Non-smoker
Dead,Unknown,,Female,54,62.5,169,100,188,146,10,66,258,High,High,Overweight,Moderate (6-15)
Alive,,,Female,54,61.5,139,104,160,124,40,,213,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,47,64.5,135,90,136,109,20,,,,High,Normal,Heavy (16-25)
Alive,,,Female,51,64.25,182,100,156,147,0,,255,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,38,72.5,158,80,132,98,20,64,258,High,Normal,Normal,Heavy (16-25)
Alive,,,Male,47,65.75,175,80,144,134,20,,161,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,41,65.5,143,80,134,112,0,,234,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,57,65.75,158,80,110,121,5,,150,Desirable,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,63,Female,53,60.25,171,130,240,157,0,67,219,Borderline,High,Overweight,Non-smoker
Alive,,,Female,32,64,137,78,124,110,0,,271,High,Normal,Overweight,Non-smoker
Alive,,,Male,44,68.5,171,86,136,119,15,,217,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,76,Female,50,63.5,143,86,138,119,15,78,226,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,73,Male,51,69.75,167,82,146,113,0,75,165,Desirable,High,Overweight,Non-smoker
Alive,,,Female,40,60.25,128,74,104,117,0,,178,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,45,64.5,151,86,132,122,0,,121,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,45,72,194,88,140,120,0,,192,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,56,62,126,100,200,109,0,84,278,High,High,Normal,Non-smoker
Alive,,,Female,57,65.25,161,92,132,126,30,,,,High,Overweight,Very Heavy (> 25)
Alive,,,Female,59,61,131,72,140,117,0,,276,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,50,65.5,170,80,132,130,0,66,228,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,42,68.75,164,76,128,114,20,,200,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,75,Male,53,67.75,171,90,160,122,0,83,226,Borderline,High,Overweight,Non-smoker
Alive,,,Male,42,69.25,182,82,142,123,0,,,,High,Overweight,Non-smoker
Alive,,,Male,44,66.75,145,80,118,107,0,,193,Desirable,Normal,Normal,Non-smoker
Dead,Cancer,,Male,39,68.5,137,70,110,95,20,53,234,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Male,32,69,164,78,118,111,0,,175,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,35,66.75,141,90,126,107,15,,221,Borderline,High,Normal,Moderate (6-15)
Alive,,,Female,50,64,169,86,134,136,15,,284,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,31,65,125,74,130,98,15,,192,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,37,71,129,90,140,82,0,,134,Desirable,High,Underweight,Non-smoker
Alive,,,Female,37,64,109,72,110,88,10,,178,Desirable,Optimal,Underweight,Moderate (6-15)
Alive,,,Female,47,64,154,78,126,124,0,,196,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Male,56,67,166,90,150,119,40,74,199,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Female,52,60.5,144,94,170,132,0,,234,Borderline,High,Overweight,Non-smoker
Dead,Cancer,61,Male,55,65.5,128,86,142,98,20,75,220,Borderline,High,Normal,Heavy (16-25)
Alive,,,Female,36,61,116,68,120,104,5,,188,Desirable,Normal,Normal,Light (1-5)
Alive,,71,Male,41,65.5,180,86,132,137,5,,200,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,39,61.5,144,72,112,129,20,,,,Optimal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,72,Female,58,62.5,141,110,198,122,0,74,219,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,54,66,150,88,140,114,5,68,258,High,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,49,68,160,80,120,111,0,77,228,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,61,Male,51,65.5,157,70,102,120,20,67,243,High,Optimal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,49,Male,45,65,157,98,130,120,20,55,242,High,High,Overweight,Heavy (16-25)
Alive,,,Female,33,64.5,137,80,112,110,0,,200,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,58,Male,30,66.5,155,82,120,115,10,60,206,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,32,60.5,126,80,122,116,0,,226,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,47,62,168,70,114,145,15,,209,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,38,63.5,108,70,122,90,0,,179,Desirable,Normal,Underweight,Non-smoker
Alive,,,Female,47,64.25,145,86,136,117,5,,284,High,Normal,Overweight,Light (1-5)
Dead,Other,68,Male,48,71,210,80,122,134,0,76,217,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,50,66,156,80,165,118,0,,228,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,49,64.5,112,80,130,90,15,81,258,High,Normal,Underweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,68,Male,40,63.75,212,82,156,170,20,72,154,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Male,31,73,182,80,132,110,20,,200,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,31,64.5,116,90,130,94,20,,167,Desirable,High,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,39,61.25,150,138,240,134,0,57,209,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,52,Male,44,63.25,184,86,138,147,20,54,204,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,38,57.75,114,80,120,114,10,,248,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,33,60,141,86,120,129,0,,221,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,35,64,166,90,130,134,0,,234,Borderline,High,Overweight,Non-smoker
Alive,,,Female,51,58,116,100,134,113,0,,242,High,High,Overweight,Non-smoker
Alive,,,Female,34,59.5,130,80,118,123,0,,159,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,49,61,138,78,112,123,40,,194,Desirable,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Male,52,66.75,178,80,120,132,0,,258,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,43,Female,33,66.25,126,78,120,95,20,45,290,High,Normal,Normal,Heavy (16-25)
Alive,,66,Female,50,62.25,194,86,142,167,0,,258,High,High,Overweight,Non-smoker
Alive,,61,Female,37,62.25,132,98,140,114,0,,200,Borderline,High,Overweight,Non-smoker
Alive,,,Female,39,60,148,100,134,136,0,,200,Borderline,High,Overweight,Non-smoker
Alive,,,Female,39,63,133,82,128,111,5,,204,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Male,40,68.75,142,90,160,99,5,,184,Desirable,High,Normal,Light (1-5)
Dead,Other,,Male,55,66.75,186,98,158,138,0,65,304,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Male,54,64.25,137,90,170,107,15,74,204,Borderline,High,Normal,Moderate (6-15)
Alive,,,Female,44,62.5,176,86,130,152,0,,209,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,48,67.75,172,86,144,123,0,,221,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,57,62.75,157,110,184,129,0,71,219,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,69,Male,43,68,182,110,168,126,0,71,228,Borderline,High,Overweight,Non-smoker
Alive,,,Male,38,65.25,168,102,170,128,20,,258,High,High,Overweight,Heavy (16-25)
Dead,Other,,Female,50,65,144,68,98,113,5,62,200,Borderline,Optimal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,59,Male,59,69.5,178,100,162,120,20,67,167,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,51,64.25,139,76,136,112,0,,184,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,34,63.5,147,76,124,123,5,,196,Desirable,Normal,Overweight,Light (1-5)
Alive,,63,Female,45,66.75,167,74,130,127,0,,238,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,56,Male,46,68.25,214,80,144,149,0,58,206,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,48,65,156,100,164,122,0,80,334,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,39,69,188,90,142,127,40,61,255,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,44,74.75,186,80,142,109,0,,213,Borderline,High,Normal,Non-smoker
Alive,,,Female,42,65.5,135,82,118,105,1,,267,High,Normal,Normal,Light (1-5)
Alive,,,Female,55,63,145,90,148,121,0,,258,High,High,Overweight,Non-smoker
Alive,,73,Female,57,66,133,84,148,101,0,,296,High,High,Normal,Non-smoker
Dead,Other,,Female,47,61.5,146,76,120,130,40,75,209,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,59,Female,39,60.75,131,88,158,120,0,,200,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,34,76,220,80,138,122,10,62,192,Desirable,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Male,54,68.25,181,82,142,126,0,74,219,Borderline,High,Overweight,Non-smoker
Alive,,,Female,34,65.5,138,80,132,108,5,,196,Desirable,Normal,Normal,Light (1-5)
Dead,Cancer,,Female,42,65.5,145,90,154,113,15,64,233,Borderline,High,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,69,Male,59,67.75,166,84,104,119,0,73,184,Desirable,Normal,Overweight,Non-smoker
Dead,Unknown,61,Male,59,68.5,198,92,152,138,0,75,276,High,High,Overweight,Non-smoker
Alive,,,Male,40,69.5,182,78,110,123,20,,163,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Unknown,61,Male,37,67.75,205,90,130,146,25,65,219,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,31,62,120,72,122,103,0,,288,High,Normal,Normal,Non-smoker
Alive,,,Female,33,64.5,123,80,120,99,5,,179,Desirable,Normal,Normal,Light (1-5)
Dead,Other,,Female,58,67,135,96,180,99,0,82,228,Borderline,High,Normal,Non-smoker
Dead,Coronary Heart Disease,57,Male,45,67.5,182,90,142,130,30,59,284,High,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,72,Male,54,65.75,169,80,128,129,40,74,309,High,Normal,Overweight,Very Heavy (> 25)
Dead,Other,,Female,47,64,146,98,130,118,1,79,234,Borderline,High,Overweight,Light (1-5)
Alive,,,Female,46,59.25,117,84,136,110,0,,271,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,55,61,153,80,130,137,0,63,276,High,Normal,Overweight,Non-smoker
Alive,,52,Male,34,69,209,86,140,141,20,,182,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,32,66.5,140,60,98,106,15,,171,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Female,42,61.5,125,78,114,112,15,,200,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,38,61,113,70,110,101,15,,,,Optimal,Normal,Moderate (6-15)
Alive,,33,Male,33,64.75,260,100,148,203,0,,,,High,Overweight,Non-smoker
Dead,Other,,Male,40,65,151,98,142,115,0,58,267,High,High,Overweight,Non-smoker
Alive,,,Female,49,61.5,167,80,134,149,0,,312,High,Normal,Overweight,Non-smoker
Alive,,,Male,42,65.75,172,100,140,131,0,,235,Borderline,High,Overweight,Non-smoker
Alive,,,Female,39,56.5,104,80,122,107,20,,392,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,34,63.5,145,72,122,121,1,,,,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,59,Female,59,59.75,130,92,172,123,1,77,234,Borderline,High,Overweight,Light (1-5)
Dead,Cancer,,Female,33,66.5,126,80,112,95,15,59,192,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,42,65.25,181,100,178,141,15,,192,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Female,38,65,128,68,108,100,5,,368,High,Optimal,Normal,Light (1-5)
Alive,,,Female,45,62.5,135,92,158,116,0,,296,High,High,Overweight,Non-smoker
Alive,,,Female,37,64.75,155,80,112,125,20,,,,Normal,Overweight,Heavy (16-25)
Alive,,67,Male,55,70,191,90,150,126,15,,228,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Male,30,69,197,86,136,133,0,,300,High,Normal,Overweight,Non-smoker
Alive,,,Male,41,66.25,172,80,142,127,0,,154,Desirable,High,Overweight,Non-smoker
Dead,Other,,Female,42,62.5,104,60,100,90,5,74,165,Desirable,Optimal,Underweight,Light (1-5)
Alive,,,Female,29,65.75,227,88,136,177,20,,211,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,41,63,123,96,164,103,0,,213,Borderline,High,Normal,Non-smoker
Dead,Unknown,,Female,57,61,160,90,140,143,0,85,233,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,81,Male,59,66,179,106,164,133,0,83,255,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Female,46,64.25,177,110,174,143,0,64,284,High,High,Overweight,Non-smoker
Alive,,,Male,36,72,151,72,120,94,15,,221,Borderline,Normal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,55,Male,43,69.5,170,82,120,115,25,63,338,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,54,67,141,78,130,101,25,,226,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,46,65,170,78,124,130,0,,,,Normal,Overweight,Non-smoker
Alive,,,Female,52,64,172,106,178,139,0,,288,High,High,Overweight,Non-smoker
Alive,,,Male,38,68.25,137,76,114,95,0,,243,High,Optimal,Normal,Non-smoker
Alive,,,Female,54,62.75,148,96,160,128,5,,278,High,High,Overweight,Light (1-5)
Dead,Other,,Female,61,65.25,171,104,158,134,0,79,219,Borderline,High,Overweight,Non-smoker
Alive,,,Female,58,59.75,129,88,158,122,0,,236,Borderline,High,Overweight,Non-smoker
Alive,,,Female,46,65.75,152,76,124,119,20,,196,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,44,68.25,244,126,190,169,0,,292,High,High,Overweight,Non-smoker
Alive,,,Female,32,62,138,78,124,119,0,,167,Desirable,Normal,Overweight,Non-smoker
Alive,,62,Male,42,68,165,80,132,115,20,,234,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,61,Male,41,66,167,90,140,124,0,,322,High,High,Overweight,Non-smoker
Alive,,,Female,33,66,148,70,106,112,5,,217,Borderline,Optimal,Overweight,Light (1-5)
Alive,,64,Female,38,62.5,126,90,140,109,15,,255,High,High,Normal,Moderate (6-15)
Alive,,,Male,42,68,178,90,142,124,10,,338,High,High,Overweight,Moderate (6-15)
Alive,,,Male,41,66.5,163,80,118,121,0,,217,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,30,68,193,82,120,134,40,50,226,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,47,61.5,139,90,194,124,15,,242,High,High,Overweight,Moderate (6-15)
Dead,Other,,Female,33,63.75,181,90,138,151,0,65,,,High,Overweight,Non-smoker
Dead,Other,56,Male,54,64.5,200,96,172,156,0,76,317,High,High,Overweight,Non-smoker
Alive,,,Female,44,64,169,86,140,136,0,,227,Borderline,Normal,Overweight,Non-smoker
Alive,,51,Female,51,63,135,72,132,113,15,,278,High,Normal,Overweight,Moderate (6-15)
Alive,,,Male,31,65,115,70,112,88,15,,217,Borderline,Optimal,Underweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,51,60.25,193,92,170,177,0,69,304,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,51,Male,39,69.5,195,96,140,132,20,59,276,High,High,Overweight,Heavy (16-25)
Alive,,,Male,30,70,190,76,126,125,25,,221,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,41,64.5,163,76,130,131,15,69,226,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,38,66,136,76,140,103,20,,309,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,35,61.5,118,68,102,105,5,,171,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Female,32,64.75,118,82,138,95,5,,184,Desirable,Normal,Normal,Light (1-5)
Alive,,61,Male,39,69.25,162,86,136,109,0,,242,High,Normal,Normal,Non-smoker
Alive,,67,Female,45,60.5,176,88,152,161,35,,182,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,65,Female,45,63.5,140,82,128,117,0,67,250,High,Normal,Overweight,Non-smoker
Alive,,,Male,46,66,150,76,132,111,0,,258,High,Normal,Overweight,Non-smoker
Dead,Unknown,,Female,52,62,123,78,122,106,15,84,242,High,Normal,Normal,Moderate (6-15)
Dead,Other,72,Male,46,69,187,84,134,126,0,78,234,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,45,62,146,82,118,120,0,,217,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,46,59,153,80,150,144,0,,,,High,Overweight,Non-smoker
Alive,,,Female,43,65.25,194,76,122,152,0,,227,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,57,69,141,90,130,95,0,,284,High,High,Normal,Non-smoker
Alive,,,Male,38,66.25,220,96,140,163,0,,182,Desirable,High,Overweight,Non-smoker
Alive,,69,Female,39,64.75,137,80,122,110,0,,228,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,67,Female,45,60,156,90,120,143,0,77,234,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,56,69.25,163,80,140,110,20,76,192,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,54,63,156,120,210,130,0,,194,Desirable,High,Overweight,Non-smoker
Alive,,,Male,36,63.25,168,90,120,134,20,,217,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,47,63.75,141,85,120,118,0,59,209,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,49,63.25,144,80,118,120,0,,210,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,33,58.75,103,68,90,100,0,,199,Desirable,Optimal,Normal,Non-smoker
Dead,Other,,Male,59,67,151,98,168,108,10,65,284,High,High,Normal,Moderate (6-15)
Alive,,,Female,48,60.75,121,76,118,111,15,,,,Optimal,Overweight,Moderate (6-15)
Alive,,,Male,57,71.5,173,78,118,110,0,,292,High,Optimal,Overweight,Non-smoker
Dead,Other,,Male,47,73,182,72,126,110,35,65,271,High,Normal,Overweight,Very Heavy (> 25)
Alive,,86,Female,56,62,118,90,148,102,0,,228,Borderline,High,Normal,Non-smoker
Alive,,,Female,52,62,137,100,160,118,0,,284,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,74,Male,50,66.25,173,86,140,128,0,78,244,High,Normal,Overweight,Non-smoker
Alive,,,Female,52,61.5,138,78,120,123,0,,322,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,50,62,120,95,140,103,0,56,248,High,High,Normal,Non-smoker
Alive,,,Female,52,61.5,162,84,136,145,20,,265,High,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,44,64.5,153,92,148,123,10,56,334,High,High,Overweight,Moderate (6-15)
Alive,,59,Male,35,67.5,157,90,120,112,20,,248,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,54,68.25,145,88,160,101,0,58,,,High,Normal,Non-smoker
Alive,,,Female,47,64.25,191,84,140,154,0,,217,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,48,62.5,166,90,150,143,0,,228,Borderline,High,Overweight,Non-smoker
Alive,,,Male,40,64.5,184,90,140,144,25,,197,Desirable,High,Overweight,Heavy (16-25)
Dead,Other,,Male,36,63.75,155,90,135,124,0,60,159,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,60,69.25,169,88,152,114,0,88,213,Borderline,High,Overweight,Non-smoker
Alive,,,Female,49,63,151,105,165,126,5,,205,Borderline,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,56,Male,52,70.5,223,90,164,147,20,58,226,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,44,66.25,114,75,120,84,30,,255,High,Normal,Underweight,Very Heavy (> 25)
Alive,,,Male,34,69.5,133,70,120,90,20,,183,Desirable,Normal,Underweight,Heavy (16-25)
Dead,Cancer,,Male,57,67.25,143,68,128,102,0,89,263,High,Normal,Normal,Non-smoker
Alive,,70,Male,54,68.75,174,72,118,121,20,,228,Borderline,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,35,65,118,72,110,92,5,,182,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Female,39,60.5,85,70,112,78,20,,271,High,Optimal,Underweight,Heavy (16-25)
Alive,,,Male,38,67.25,151,80,118,108,0,,194,Desirable,Normal,Normal,Non-smoker
Dead,Cancer,,Female,54,61.5,151,90,150,135,0,80,228,Borderline,High,Overweight,Non-smoker
Alive,,,Female,43,62.75,120,58,90,103,15,,278,High,Optimal,Normal,Moderate (6-15)
Dead,Unknown,,Female,47,62.5,139,80,140,120,0,79,184,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,30,62.25,148,72,120,121,15,,196,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,56,Female,34,61,161,90,130,144,10,,198,Desirable,High,Overweight,Moderate (6-15)
Dead,Unknown,,Female,60,60.5,163,100,165,150,25,80,228,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,35,71.25,176,85,120,112,0,,175,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,31,63.5,138,65,100,115,0,,200,Borderline,Optimal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,74,Female,54,56.5,140,108,212,144,0,80,221,Borderline,High,Overweight,Non-smoker
Alive,,,Female,34,61.75,109,70,120,97,20,,192,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,42,62.5,148,95,165,128,5,,,,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,46,Female,38,60,118,70,112,108,0,70,479,High,Optimal,Normal,Non-smoker
Alive,,,Female,47,66.5,157,80,122,119,20,,179,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,46,Male,32,65.5,131,72,120,100,20,,242,High,Normal,Normal,Heavy (16-25)
Alive,,72,Male,50,72.25,209,84,140,130,0,,184,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,43,65.75,176,70,105,138,0,,213,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,30,63.5,111,68,100,93,20,,157,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,37,64.25,171,98,190,134,0,59,202,Borderline,High,Overweight,Non-smoker
Alive,,,Male,41,74.25,191,82,146,112,20,,184,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,31,62,139,76,104,120,0,,161,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,38,66,177,78,140,131,30,,250,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,32,64.5,140,68,110,113,5,,165,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Female,34,62.25,126,78,110,109,0,,232,Borderline,Optimal,Normal,Non-smoker
Alive,,,Male,42,68.5,183,80,120,127,45,,242,High,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,50,63,162,90,130,135,20,78,263,High,High,Overweight,Heavy (16-25)
Alive,,,Female,57,62.5,120,96,168,103,0,,221,Borderline,High,Normal,Non-smoker
Dead,Coronary Heart Disease,63,Male,51,65.5,144,76,110,110,0,75,255,High,Optimal,Overweight,Non-smoker
Alive,,,Female,43,66.25,146,88,140,111,10,,197,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Female,49,62,127,80,126,109,20,,223,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,67,Female,59,61.5,124,100,170,111,0,81,199,Desirable,High,Overweight,Non-smoker
Alive,,,Female,40,62,132,90,115,114,0,,209,Borderline,High,Overweight,Non-smoker
Alive,,,Male,32,70.5,203,90,140,134,60,,146,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Other,71,Male,51,68,145,76,124,101,15,73,238,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,36,63,149,80,122,124,5,,213,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,47,60.75,121,100,180,111,0,,179,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,63,Male,53,69,197,90,168,133,15,81,182,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Male,30,67.25,168,86,124,120,0,,263,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,59,57.75,123,72,132,123,0,71,250,High,Normal,Overweight,Non-smoker
Alive,,,Female,42,66.75,135,70,110,102,10,,213,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,63,Male,43,68.5,213,90,140,148,15,,317,High,High,Overweight,Moderate (6-15)
Dead,Cancer,,Female,40,65.5,144,90,126,113,0,72,184,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Male,59,72.75,194,90,160,120,0,69,253,High,High,Overweight,Non-smoker
Alive,,,Female,56,61.25,196,106,176,175,5,,209,Borderline,High,Overweight,Light (1-5)
Dead,Cancer,,Male,57,70.5,160,78,130,105,5,83,209,Borderline,Normal,Normal,Light (1-5)
Dead,Cancer,,Female,44,62.25,125,106,168,108,0,60,234,Borderline,High,Normal,Non-smoker
Dead,Other,,Male,44,63.75,160,90,146,128,10,60,276,High,High,Overweight,Moderate (6-15)
Alive,,80,Male,50,71,180,90,150,115,0,,228,Borderline,High,Overweight,Non-smoker
Alive,,,Male,49,70.75,171,64,100,113,0,,300,High,Optimal,Overweight,Non-smoker
Alive,,,Female,48,60.75,123,100,170,113,0,,250,High,High,Overweight,Non-smoker
Dead,Other,59,Female,39,62.75,115,68,100,99,20,63,183,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,77,Female,53,63,116,98,170,97,0,79,277,High,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,59,57.75,116,96,150,116,0,81,192,Desirable,High,Overweight,Non-smoker
Alive,,69,Male,47,67.25,153,72,120,109,20,,234,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Male,46,67.75,188,90,150,134,20,70,233,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,39,Male,39,70.25,152,74,122,100,20,55,234,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Male,55,68.5,147,82,138,102,10,59,195,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,38,65,103,62,90,80,20,,209,Borderline,Optimal,Underweight,Heavy (16-25)
Alive,,63,Female,55,65.25,187,100,172,146,0,,238,Borderline,High,Overweight,Non-smoker
Alive,,,Female,44,62.75,143,74,108,123,0,,196,Desirable,Optimal,Overweight,Non-smoker
Dead,Other,,Male,56,68.5,143,72,130,99,15,74,242,High,Normal,Normal,Moderate (6-15)
Alive,,45,Male,33,69.25,224,100,142,151,20,,233,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,48,64.75,144,84,130,113,20,,182,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,50,63.25,133,94,142,111,0,,146,Desirable,High,Overweight,Non-smoker
Alive,,,Male,40,71,182,90,126,116,20,,209,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,48,68.5,151,80,120,105,15,,167,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,52,60,134,100,160,123,0,,317,High,High,Overweight,Non-smoker
Alive,,75,Male,55,68.5,181,92,140,126,0,,255,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,45,67,171,80,140,126,5,75,248,High,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,55,67.5,165,88,124,118,30,85,217,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,47,66.75,170,94,138,126,10,,228,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,39,61.5,136,84,120,121,40,,192,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,45,62.5,94,90,128,81,0,,199,Desirable,High,Underweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,49,71,191,100,172,122,5,73,221,Borderline,High,Overweight,Light (1-5)
Alive,,,Male,38,71.5,179,82,130,114,0,,150,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,47,63.25,125,86,136,104,0,,213,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,55,64.25,134,90,140,108,0,,355,High,High,Normal,Non-smoker
Alive,,,Male,33,64.5,157,84,128,123,15,,191,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Male,34,68,151,80,130,105,25,,196,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,32,65.75,146,76,124,114,40,,142,Desirable,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,62,Male,58,65.5,156,95,150,119,15,82,292,High,High,Overweight,Moderate (6-15)
Alive,,,Female,55,60.5,127,85,132,117,0,,275,High,Normal,Overweight,Non-smoker
Alive,,67,Female,43,62.25,171,80,120,147,0,,248,High,Normal,Overweight,Non-smoker
Alive,,,Female,43,62.5,104,82,130,90,5,,219,Borderline,Normal,Underweight,Light (1-5)
Dead,Cancer,,Male,50,67.75,187,70,118,134,20,80,200,Borderline,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,32,71.25,150,80,138,96,0,,217,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,55,61,137,76,138,122,0,,201,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,30,70.5,197,90,148,130,0,,175,Desirable,High,Overweight,Non-smoker
Alive,,,Female,38,59.5,242,86,132,228,0,,157,Desirable,Normal,Overweight,Non-smoker
Dead,Other,77,Female,55,60.5,119,90,134,109,10,81,246,High,High,Normal,Moderate (6-15)
Dead,Cancer,,Female,44,59,99,80,135,93,20,54,253,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,48,65.25,163,94,144,127,0,,192,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,59,60.5,116,76,124,106,0,79,309,High,Normal,Normal,Non-smoker
Alive,,,Male,36,69,179,118,160,121,30,,260,High,High,Overweight,Very Heavy (> 25)
Dead,Cancer,44,Female,36,62.25,133,86,122,115,20,66,200,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Other,,Male,55,69.25,180,92,148,122,20,67,228,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,38,73,173,80,130,104,10,68,193,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,43,60.25,129,86,124,118,5,,233,Borderline,Normal,Overweight,Light (1-5)
Alive,,57,Female,53,63.25,159,95,120,133,0,,,,High,Overweight,Non-smoker
Alive,,,Female,46,61.5,128,70,122,114,0,,214,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,32,68.75,153,90,120,109,0,,200,Borderline,High,Normal,Non-smoker
Alive,,,Female,37,63.5,120,76,110,100,20,,118,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Male,43,69,165,90,140,111,1,,200,Borderline,High,Overweight,Light (1-5)
Dead,Cancer,,Female,59,65.5,166,90,170,130,15,89,334,High,High,Overweight,Moderate (6-15)
Alive,,,Female,40,59,107,80,120,101,0,,165,Desirable,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,56,Male,46,64.25,158,94,134,123,5,58,242,High,High,Overweight,Light (1-5)
Alive,,,Female,35,62,166,78,122,143,0,,159,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,35,61.75,139,82,120,124,0,,234,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,59,68.25,276,80,124,192,0,81,182,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,35,64.25,146,66,106,118,0,,150,Desirable,Optimal,Overweight,Non-smoker
Alive,,64,Male,40,65,123,92,128,94,10,,233,Borderline,High,Normal,Moderate (6-15)
Alive,,,Male,40,69.5,195,80,118,132,0,,199,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,39,60.5,123,70,98,113,0,,217,Borderline,Optimal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,47,61.5,161,70,120,144,0,67,194,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,41,65.5,134,72,124,102,20,,212,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,47,65.75,134,70,100,102,50,,247,High,Optimal,Normal,Very Heavy (> 25)
Alive,,,Female,39,65.5,146,80,130,114,5,,200,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Male,41,70.75,182,80,134,120,5,,150,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Male,34,65.5,134,90,124,102,0,,363,High,High,Normal,Non-smoker
Alive,,,Female,43,63.25,155,95,125,129,0,,230,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,56,67,203,100,180,145,0,80,178,Desirable,High,Overweight,Non-smoker
Alive,,,Female,51,66.75,198,110,190,150,15,,284,High,High,Overweight,Moderate (6-15)
Alive,,,Female,42,60,126,82,124,116,0,,167,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,32,73.25,226,68,114,136,20,,150,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,41,58.75,100,72,114,97,0,,163,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,46,65,167,100,154,127,0,,171,Desirable,High,Overweight,Non-smoker
Alive,,,Female,39,60.25,129,84,120,118,0,,258,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,84,Female,58,65.25,127,78,124,99,5,88,288,High,Normal,Normal,Light (1-5)
Alive,,,Female,45,64,140,80,116,113,0,,192,Desirable,Normal,Overweight,Non-smoker
Dead,Other,,Female,47,67.75,127,80,130,93,10,57,276,High,Normal,Normal,Moderate (6-15)
Alive,,,Female,34,64.75,153,90,134,123,15,,165,Desirable,High,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,72,Male,50,65.5,151,80,136,115,10,74,233,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Male,46,69.25,141,95,135,95,20,,276,High,High,Normal,Heavy (16-25)
Alive,,,Female,33,64.75,151,90,128,122,5,,226,Borderline,High,Overweight,Light (1-5)
Alive,,69,Male,45,67,137,92,138,98,35,,238,Borderline,High,Normal,Very Heavy (> 25)
Dead,Cancer,,Female,59,62.25,170,70,110,147,5,83,317,High,Optimal,Overweight,Light (1-5)
Alive,,,Female,49,67,158,100,178,116,0,,317,High,High,Overweight,Non-smoker
Alive,,,Female,33,61.25,126,70,110,113,0,,196,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,33,67.5,171,95,150,122,20,,192,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,50,62.5,137,78,118,118,5,,229,Borderline,Optimal,Overweight,Light (1-5)
Alive,,,Female,56,66.5,148,100,140,112,0,,184,Desirable,High,Overweight,Non-smoker
Alive,,,Female,59,61.5,135,84,136,121,0,,276,High,Normal,Overweight,Non-smoker
Alive,,,Female,33,64.75,137,70,110,110,0,,185,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,31,63.5,105,82,136,88,20,,221,Borderline,Normal,Underweight,Heavy (16-25)
Dead,Coronary Heart Disease,35,Male,33,67.75,139,80,126,99,20,65,219,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,32,62,139,76,126,120,20,,255,High,Normal,Overweight,Heavy (16-25)
Dead,Other,,Female,56,59,133,80,136,125,0,84,238,Borderline,Normal,Overweight,Non-smoker
Dead,Other,,Female,43,61.75,156,105,150,139,20,71,221,Borderline,High,Overweight,Heavy (16-25)
Alive,,65,Male,45,66.75,181,72,116,134,20,,204,Borderline,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,36,67.25,152,80,130,109,30,,250,High,Normal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,59,Male,59,65,119,90,170,91,0,69,242,High,High,Normal,Non-smoker
Alive,,,Female,43,64,116,74,120,94,0,,146,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,50,63.25,130,88,118,108,0,,209,Borderline,Normal,Normal,Non-smoker
Dead,Other,,Female,50,64.25,138,94,174,111,0,82,200,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,46,60.75,159,90,136,146,0,54,200,Borderline,High,Overweight,Non-smoker
Dead,Other,77,Male,59,64.75,159,86,120,124,0,85,250,High,Normal,Overweight,Non-smoker
Alive,,51,Male,43,67.75,179,80,136,128,30,,276,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,34,66.75,147,86,142,109,25,,195,Desirable,High,Normal,Heavy (16-25)
Alive,,,Female,48,62.25,157,96,168,135,0,,221,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,50,66.25,199,85,135,151,0,60,242,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,54,65.5,166,95,145,127,0,66,192,Desirable,High,Overweight,Non-smoker
Alive,,,Female,43,66,157,70,114,119,5,,196,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Female,42,65.75,117,62,106,91,15,,228,Borderline,Optimal,Normal,Moderate (6-15)
Dead,Cancer,56,Female,50,64,150,90,144,121,10,78,,,High,Overweight,Moderate (6-15)
Alive,,,Female,35,65.5,114,70,114,89,10,,167,Desirable,Optimal,Underweight,Moderate (6-15)
Alive,,68,Female,38,65,149,95,145,116,0,,255,High,High,Overweight,Non-smoker
Alive,,,Female,44,63,137,70,118,114,0,,243,High,Optimal,Overweight,Non-smoker
Alive,,70,Female,44,62,119,102,156,103,5,,,,High,Normal,Light (1-5)
Dead,Coronary Heart Disease,53,Male,45,69.75,168,84,132,114,5,55,249,High,Normal,Overweight,Light (1-5)
Dead,Cancer,,Female,36,61.5,147,90,130,131,0,68,194,Desirable,High,Overweight,Non-smoker
Alive,,,Male,32,66.5,135,78,114,100,25,,209,Borderline,Optimal,Normal,Heavy (16-25)
Dead,Unknown,,Female,39,64.75,148,100,160,119,10,69,171,Desirable,High,Overweight,Moderate (6-15)
Alive,,65,Female,37,61.75,151,70,130,135,0,,194,Desirable,Normal,Overweight,Non-smoker
Alive,,58,Male,40,68.25,199,92,140,138,10,,233,Borderline,High,Overweight,Moderate (6-15)
Dead,Other,,Male,53,71,195,80,114,124,25,85,197,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,41,68.25,162,76,128,113,0,,277,High,Normal,Overweight,Non-smoker
Alive,,,Female,34,62.25,119,82,124,103,0,,159,Desirable,Normal,Normal,Non-smoker
Alive,,64,Female,42,60.5,150,70,110,138,5,,150,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Male,38,70.75,183,84,120,120,20,,252,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,45,69,204,90,128,138,25,,196,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,41,62,151,70,106,130,0,,278,High,Optimal,Overweight,Non-smoker
Alive,,,Male,39,67.25,162,90,130,116,50,,248,High,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,52,65,118,92,158,92,0,72,267,High,High,Normal,Non-smoker
Alive,,,Male,52,65.75,143,78,118,109,0,,221,Borderline,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,90,Female,60,63.25,144,90,148,120,0,92,306,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,37,60.5,125,90,150,115,15,45,228,Borderline,High,Overweight,Moderate (6-15)
Dead,Cancer,,Female,52,59.25,124,76,130,117,0,64,219,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,35,65,179,70,118,140,0,,191,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,37,70.5,156,80,120,103,10,,200,Borderline,Normal,Normal,Moderate (6-15)
Alive,,48,Male,36,68.5,193,92,142,134,20,,255,High,High,Overweight,Heavy (16-25)
Alive,,,Female,33,61,128,84,130,114,5,,213,Borderline,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,58,Male,44,69,187,96,148,126,30,70,277,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,35,68.75,220,90,125,153,20,,219,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,30,66.5,168,84,140,124,0,,183,Desirable,Normal,Overweight,Non-smoker
Dead,Other,,Male,42,69.75,158,110,165,107,0,46,212,Borderline,High,Normal,Non-smoker
Alive,,61,Male,35,71,169,92,136,108,20,,200,Borderline,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,78,Female,58,63.5,136,94,146,113,5,80,243,High,High,Overweight,Light (1-5)
Dead,Other,,Male,42,64,141,100,132,110,40,60,194,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,53,72,213,72,124,132,30,75,171,Desirable,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,51,70.5,179,82,130,118,20,75,213,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,55,63.5,138,78,140,115,0,71,188,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,42,60.5,130,84,140,119,0,,192,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,49,61,157,100,150,140,20,71,233,Borderline,High,Overweight,Heavy (16-25)
Dead,Other,,Female,42,62.5,124,120,212,107,0,62,255,High,High,Normal,Non-smoker
Alive,,,Female,36,63.5,110,76,128,92,5,,179,Desirable,Normal,Normal,Light (1-5)
Alive,,,Female,31,62.75,122,80,114,105,10,,167,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,37,61,173,82,134,154,1,,221,Borderline,Normal,Overweight,Light (1-5)
Dead,Cancer,,Female,36,63.5,128,72,124,107,5,68,167,Desirable,Normal,Normal,Light (1-5)
Alive,,,Female,34,60.25,113,64,102,104,20,,166,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Cancer,,Male,36,64.25,163,80,136,127,20,58,243,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,67,Female,49,60.75,149,88,140,137,0,69,238,Borderline,Normal,Overweight,Non-smoker
Dead,Other,64,Male,50,66.5,164,82,108,121,20,72,260,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,42,70.5,178,62,128,117,0,,182,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,38,70.25,151,70,128,99,20,,198,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,39,71,180,86,142,115,10,,225,Borderline,High,Overweight,Moderate (6-15)
Alive,,60,Male,32,68.25,145,90,146,101,20,,209,Borderline,High,Normal,Heavy (16-25)
Alive,,,Male,31,65.75,128,82,122,98,20,,162,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,38,63,106,80,134,88,10,,221,Borderline,Normal,Underweight,Moderate (6-15)
Dead,Cancer,,Female,52,63.75,124,70,104,103,0,68,196,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,33,68.5,162,76,106,116,0,,163,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,36,67.25,163,62,94,120,20,,163,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,30,72.25,183,110,150,114,20,,233,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,78,Male,52,69.25,165,90,128,111,0,80,275,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,59,69,152,90,138,103,0,85,213,Borderline,High,Normal,Non-smoker
Dead,Coronary Heart Disease,57,Male,35,66.5,183,94,142,136,50,59,234,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Unknown,47,Female,41,63,144,82,120,120,20,59,309,High,Normal,Overweight,Heavy (16-25)
Alive,,66,Female,38,63.75,130,70,120,108,20,,188,Desirable,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,43,66,139,84,114,105,10,71,260,High,Normal,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,48,68.25,161,82,138,112,20,76,182,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,31,62.25,106,82,110,91,0,,173,Desirable,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,66,Female,42,60.75,131,90,132,120,15,74,217,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,54,61.75,132,82,138,118,0,,368,High,Normal,Overweight,Non-smoker
Alive,,,Male,58,65.25,167,96,158,127,5,,192,Desirable,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,39,61.75,110,84,136,98,20,51,276,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,39,61.5,132,76,124,118,0,,209,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,70,Female,52,62.75,155,102,160,134,20,72,196,Desirable,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,43,69.5,164,100,168,111,15,73,359,High,High,Overweight,Moderate (6-15)
Dead,Cancer,77,Male,55,67.25,179,100,148,128,0,79,217,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,51,51.5,72,92,126,88,1,79,234,Borderline,High,Underweight,Light (1-5)
Alive,,,Female,46,61.75,152,80,114,136,0,,209,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,31,62.25,168,102,140,145,0,,172,Desirable,High,Overweight,Non-smoker
Alive,,,Female,33,61.25,112,80,112,100,0,,217,Borderline,Normal,Normal,Non-smoker
Dead,Other,,Male,36,63.5,151,96,136,121,20,64,280,High,High,Overweight,Heavy (16-25)
Alive,,,Male,36,70.25,143,70,120,94,30,,246,High,Normal,Normal,Very Heavy (> 25)
Alive,,57,Male,43,68.5,186,88,134,129,0,,292,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,43,59,109,100,148,103,0,65,259,High,High,Normal,Non-smoker
Alive,,,Female,55,59.75,153,78,132,144,0,,234,Borderline,Normal,Overweight,Non-smoker
Dead,Other,,Female,42,63.75,136,86,146,113,20,64,194,Desirable,High,Overweight,Heavy (16-25)
Dead,Unknown,,Male,41,70.5,191,88,130,126,10,63,233,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Other,,Female,34,65.75,145,70,118,113,35,54,192,Desirable,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Female,43,60,98,70,108,90,10,,199,Desirable,Optimal,Underweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,44,68.5,175,84,114,122,0,58,171,Desirable,Normal,Overweight,Non-smoker
Alive,,57,Female,55,63,145,90,158,121,0,,355,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,56,Male,32,67.75,159,70,124,114,40,58,284,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,32,61.25,121,80,128,108,0,,184,Desirable,Normal,Normal,Non-smoker
Dead,Cancer,,Male,51,67,139,80,108,99,5,73,284,High,Normal,Normal,Light (1-5)
Alive,,74,Female,44,60,138,102,146,127,0,,242,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,74,Male,50,64.5,141,80,142,110,40,76,271,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,39,70,207,84,128,136,10,,172,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Male,30,72,171,84,126,106,30,,173,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Cancer,,Male,37,70.75,146,88,136,96,20,55,188,Desirable,Normal,Normal,Heavy (16-25)
Dead,Cancer,56,Male,48,64.75,162,94,152,127,30,70,258,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,42,60.25,118,72,116,108,5,,259,High,Optimal,Normal,Light (1-5)
Alive,,,Female,31,64.75,155,80,106,125,15,,209,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Male,32,68.5,189,74,130,131,0,,205,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,38,66.5,116,64,106,86,0,,134,Desirable,Optimal,Underweight,Non-smoker
Alive,,,Female,44,65.25,200,80,140,156,0,,178,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,60,Male,42,63.5,135,88,142,108,0,74,216,Borderline,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,59,61.5,165,84,144,147,5,91,277,High,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,57,68.25,183,100,184,127,0,67,162,Desirable,High,Overweight,Non-smoker
Alive,,,Male,40,68.25,148,82,124,103,20,,222,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,44,67.5,157,72,122,112,30,,244,High,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,52,65,172,82,134,131,0,84,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,49,59,125,90,138,118,0,,263,High,High,Overweight,Non-smoker
Dead,Cancer,52,Male,52,68.25,169,90,136,117,25,66,173,Desirable,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,56,64.25,161,84,136,130,0,84,338,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,69,Female,45,60.5,137,92,146,126,20,71,271,High,High,Overweight,Heavy (16-25)
Alive,,,Female,44,63.5,149,80,128,124,0,,258,High,Normal,Overweight,Non-smoker
Alive,,,Female,49,64.5,183,106,182,148,0,,320,High,High,Overweight,Non-smoker
Alive,,66,Male,40,68.5,136,82,134,94,0,,209,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,43,63.25,156,100,152,130,10,,130,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Female,33,58.25,97,78,108,94,20,,209,Borderline,Optimal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,61,Male,45,68,201,98,152,140,5,63,234,Borderline,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,59,Male,59,71.75,148,72,128,94,0,81,260,High,Normal,Normal,Non-smoker
Alive,,,Male,44,72.25,219,90,130,136,0,,280,High,High,Overweight,Non-smoker
Alive,,,Female,40,60,183,108,174,168,0,,200,Borderline,High,Overweight,Non-smoker
Dead,Cancer,72,Male,58,67.25,161,82,124,115,0,84,188,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,49,68.25,174,92,154,121,40,,192,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,63,Male,57,65.75,186,118,220,142,0,85,217,Borderline,High,Overweight,Non-smoker
Alive,,,Female,58,60.5,149,86,120,137,0,,260,High,Normal,Overweight,Non-smoker
Dead,Cancer,58,Male,52,69.25,204,100,152,138,0,84,175,Desirable,High,Overweight,Non-smoker
Alive,,,Male,53,66.5,143,70,120,106,30,,171,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Cancer,,Male,47,65.25,140,94,142,107,40,75,214,Borderline,High,Normal,Very Heavy (> 25)
Alive,,,Male,30,69.75,195,94,140,132,0,,200,Borderline,High,Overweight,Non-smoker
Alive,,,Female,40,61.5,102,64,112,91,0,,163,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,52,63.75,133,80,130,106,35,,183,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Other,,Male,60,69.25,234,98,138,158,30,86,175,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,79,Female,57,59,150,104,172,142,30,81,255,High,High,Overweight,Very Heavy (> 25)
Alive,,78,Male,56,65.5,142,68,120,108,0,,242,High,Normal,Normal,Non-smoker
Alive,,,Female,55,62.25,187,90,140,161,5,,284,High,High,Overweight,Light (1-5)
Dead,Other,,Female,33,62,143,82,110,123,0,59,182,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,39,63.75,123,62,110,103,0,,198,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,55,61,137,82,110,122,0,,405,High,Normal,Overweight,Non-smoker
Alive,,57,Male,53,62.5,137,74,114,112,0,,267,High,Optimal,Overweight,Non-smoker
Alive,,,Female,57,61.25,126,78,110,113,0,,243,High,Optimal,Overweight,Non-smoker
Dead,Cancer,,Female,40,63.75,123,86,124,103,0,46,216,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,36,60,181,106,164,166,0,,184,Desirable,High,Overweight,Non-smoker
Alive,,,Male,41,64.5,145,88,140,113,0,,242,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,50,64.25,138,96,154,111,0,68,280,High,High,Overweight,Non-smoker
Dead,Other,,Female,35,68.5,147,94,128,105,15,65,197,Desirable,High,Normal,Moderate (6-15)
Alive,,,Female,34,61.75,165,88,134,147,0,,234,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,45,66.25,192,104,144,142,30,,213,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,39,63.75,160,70,128,133,10,,175,Desirable,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,48,Male,34,69.25,155,84,132,105,30,66,234,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,71,Male,43,63.75,138,90,140,110,0,,296,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,49,65.25,161,94,154,123,10,71,309,High,High,Overweight,Moderate (6-15)
Alive,,,Female,49,64,138,76,118,111,20,,178,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,38,66,210,90,142,159,1,54,249,High,High,Overweight,Light (1-5)
Dead,Other,,Male,40,65,170,92,136,130,20,62,225,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,33,68.25,184,90,124,128,10,,290,High,High,Overweight,Moderate (6-15)
Alive,,69,Male,49,69.25,162,80,130,109,0,,188,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,57,64.5,150,82,110,117,0,,209,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,47,67.25,163,82,144,116,0,79,255,High,High,Overweight,Non-smoker
Alive,,,Male,43,68.5,138,92,136,96,0,,200,Borderline,High,Normal,Non-smoker
Alive,,,Female,34,63.5,163,80,116,136,20,,175,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,55,Male,37,69.5,186,112,174,126,10,57,204,Borderline,High,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,49,66.5,179,88,120,136,20,71,260,High,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,47,63.5,174,98,158,145,0,67,284,High,High,Overweight,Non-smoker
Alive,,,Female,49,62.25,183,84,126,158,0,,284,High,Normal,Overweight,Non-smoker
Alive,,,Female,31,65.25,124,70,110,97,15,,227,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Male,52,66.5,188,85,130,139,0,,284,High,Normal,Overweight,Non-smoker
Alive,,,Female,48,64,154,90,146,124,0,,255,High,High,Overweight,Non-smoker
Alive,,,Male,51,68,151,82,134,105,20,,242,High,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,41,71.5,186,78,120,118,20,59,159,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,39,Female,39,64.5,177,80,120,143,5,,206,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,33,63.75,147,86,124,123,15,,221,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,63,Female,33,59.75,114,82,134,108,20,,142,Desirable,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,49,Male,33,70.5,235,96,146,155,25,51,224,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,47,66.5,146,80,120,108,20,55,197,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,45,64.25,126,76,116,98,35,,140,Desirable,Optimal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,70,Male,40,62.5,164,100,160,134,0,72,263,High,High,Overweight,Non-smoker
Dead,Other,,Female,56,63.25,155,100,160,129,5,74,184,Desirable,High,Overweight,Light (1-5)
Dead,Cancer,58,Male,40,67.25,209,78,108,149,30,70,263,High,Optimal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,46,60.5,159,92,126,146,20,74,238,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,34,65,132,88,126,103,0,,161,Desirable,Normal,Normal,Non-smoker
Alive,,56,Male,36,65,148,65,130,113,20,,244,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,43,64.5,125,90,128,101,20,,191,Desirable,High,Normal,Heavy (16-25)
Alive,,,Male,45,70.25,163,72,110,107,20,,213,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,71,Female,57,62,156,92,160,134,1,,278,High,High,Overweight,Light (1-5)
Dead,Cancer,46,Male,42,68.75,175,84,130,122,20,50,295,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,41,60.75,126,70,120,116,20,,235,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,44,Male,32,68.75,142,82,118,99,0,,232,Borderline,Normal,Normal,Non-smoker
Dead,Other,71,Male,45,70.75,223,104,150,147,0,77,248,High,High,Overweight,Non-smoker
Alive,,,Male,35,70.75,203,85,135,134,40,,258,High,Normal,Overweight,Very Heavy (> 25)
Alive,,58,Male,34,68.5,154,72,128,107,20,,190,Desirable,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,80,Male,52,70,134,94,165,88,5,82,167,Desirable,High,Underweight,Light (1-5)
Alive,,,Female,36,66.5,158,82,126,120,20,,200,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Other,52,Female,36,61.5,96,70,114,86,30,68,194,Desirable,Optimal,Underweight,Very Heavy (> 25)
Dead,Cancer,,Male,36,71,225,86,136,143,0,56,178,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,37,66.25,173,76,114,131,0,,199,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,36,61.25,122,80,126,109,1,,262,High,Normal,Normal,Light (1-5)
Alive,,,Female,31,63,110,102,138,92,5,,209,Borderline,High,Normal,Light (1-5)
Alive,,,Male,30,74.25,177,74,126,104,20,,171,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,39,62.75,106,80,112,91,0,,166,Desirable,Normal,Normal,Non-smoker
Dead,Cancer,,Female,55,62.25,170,95,175,147,0,81,220,Borderline,High,Overweight,Non-smoker
Alive,,,Female,50,61.25,155,110,190,138,0,,242,High,High,Overweight,Non-smoker
Alive,,,Male,31,71,190,92,146,121,0,,184,Desirable,High,Overweight,Non-smoker
Alive,,,Male,37,69,174,54,128,118,30,,212,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,45,65,135,82,120,105,0,,207,Borderline,Normal,Normal,Non-smoker
Dead,Unknown,,Female,43,64.5,94,80,176,76,15,69,213,Borderline,High,Underweight,Moderate (6-15)
Dead,Other,,Female,54,65.25,112,100,165,88,20,80,195,Desirable,High,Underweight,Heavy (16-25)
Alive,,,Female,45,59.5,133,70,100,125,0,,244,High,Optimal,Overweight,Non-smoker
Dead,Other,56,Male,46,68.5,138,80,142,96,30,68,230,Borderline,High,Normal,Very Heavy (> 25)
Alive,,75,Female,45,59.75,99,80,135,93,1,,198,Desirable,Normal,Normal,Light (1-5)
Alive,,,Female,42,61.5,111,70,116,99,0,,234,Borderline,Optimal,Normal,Non-smoker
Alive,,73,Male,51,61.5,134,96,140,113,5,,301,High,High,Overweight,Light (1-5)
Alive,,84,Female,54,58,120,76,116,117,15,,267,High,Optimal,Overweight,Moderate (6-15)
Alive,,47,Male,33,65.5,178,70,115,136,0,,146,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,50,62.5,187,80,118,161,0,,250,High,Normal,Overweight,Non-smoker
Alive,,,Female,33,59.75,105,75,105,99,20,,161,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Male,42,65.25,151,72,132,115,30,,254,High,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,64,Female,60,63.25,157,85,150,131,0,66,309,High,High,Overweight,Non-smoker
Alive,,,Male,33,65.5,175,70,140,134,0,,200,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,59,61.25,126,55,100,113,5,79,300,High,Optimal,Overweight,Light (1-5)
Alive,,,Female,53,64.75,140,80,126,113,0,,292,High,Normal,Overweight,Non-smoker
Alive,,,Female,30,66.25,142,72,100,108,10,,171,Desirable,Optimal,Normal,Moderate (6-15)
Dead,Cancer,,Male,34,65,146,76,118,111,30,60,213,Borderline,Optimal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,48,Male,48,68.75,216,100,142,150,50,54,246,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,50,58.25,154,88,175,150,0,,242,High,High,Overweight,Non-smoker
Alive,,,Female,31,62.5,162,80,112,140,0,,226,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,38,69,177,78,122,123,15,,284,High,Normal,Overweight,Moderate (6-15)
Alive,,,Male,52,73.5,177,82,118,107,0,,249,High,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,77,Female,47,61.25,117,82,148,104,0,79,242,High,High,Normal,Non-smoker
Alive,,,Male,32,69.5,165,74,120,111,25,,166,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,32,68.75,145,76,124,104,5,,149,Desirable,Normal,Normal,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,53,61.5,158,75,175,141,0,61,200,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,70,Male,50,66.5,125,80,114,93,0,76,192,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,34,68.25,195,70,117,135,50,,315,High,Optimal,Overweight,Very Heavy (> 25)
Dead,Unknown,65,Female,45,61.5,97,104,180,87,20,71,209,Borderline,High,Underweight,Heavy (16-25)
Alive,,,Male,36,64.25,117,65,105,91,30,,334,High,Optimal,Normal,Very Heavy (> 25)
Alive,,,Female,47,61.5,150,106,146,134,5,,326,High,High,Overweight,Light (1-5)
Alive,,,Female,36,61,113,70,115,101,0,,155,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,36,69,154,62,110,104,20,,277,High,Optimal,Normal,Heavy (16-25)
Alive,,,Female,37,63.75,110,76,114,92,0,,171,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,38,62.25,187,100,160,161,5,,274,High,High,Overweight,Light (1-5)
Alive,,,Female,31,62.25,128,84,120,110,0,,208,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,46,63.75,131,66,124,109,20,,232,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,50,64.5,176,85,135,142,5,,244,High,Normal,Overweight,Light (1-5)
Alive,,,Female,38,61.5,119,65,100,106,5,,205,Borderline,Optimal,Normal,Light (1-5)
Alive,,,Female,46,65.5,175,90,160,137,5,,225,Borderline,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,67,Male,49,70,177,76,128,116,20,69,217,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,39,71,142,96,160,90,30,51,197,Desirable,High,Underweight,Very Heavy (> 25)
Alive,,,Male,38,71.25,197,94,144,125,30,,234,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,41,64.5,129,72,89,104,20,,342,High,Optimal,Normal,Heavy (16-25)
Alive,,,Female,41,68.25,157,100,138,112,0,,223,Borderline,High,Overweight,Non-smoker
Alive,,,Female,51,67.5,198,104,152,146,0,,239,Borderline,High,Overweight,Non-smoker
Alive,,,Male,37,64.75,115,78,110,90,0,,198,Desirable,Optimal,Underweight,Non-smoker
Dead,Coronary Heart Disease,60,Male,50,68.5,176,104,164,122,0,76,221,Borderline,High,Overweight,Non-smoker
Alive,,59,Female,35,67,131,76,120,96,15,,175,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,42,62.5,135,76,116,116,0,,172,Desirable,Optimal,Overweight,Non-smoker
Alive,,46,Male,40,68.25,182,80,120,126,5,,226,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,34,67.5,141,90,120,104,10,,195,Desirable,High,Normal,Moderate (6-15)
Alive,,,Female,32,65.75,139,80,120,109,0,,208,Borderline,Normal,Normal,Non-smoker
Alive,,68,Female,38,61,110,78,124,98,5,,286,High,Normal,Normal,Light (1-5)
Alive,,,Female,36,62.25,149,80,120,128,0,,180,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,47,61.75,150,82,135,134,0,,258,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,75,Female,53,60.25,271,130,246,249,0,85,200,Borderline,High,Overweight,Non-smoker
Alive,,,Female,41,61.25,120,82,128,107,0,,242,High,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,56,Male,54,68.25,138,95,160,96,20,72,174,Desirable,High,Normal,Heavy (16-25)
Alive,,,Female,45,59.5,138,96,155,130,0,,233,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,53,62.75,119,75,125,103,0,85,151,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,52,64.25,142,138,188,115,15,,167,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Male,37,73.25,161,84,126,97,20,,225,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,54,61.75,147,75,122,131,0,,217,Borderline,Normal,Overweight,Non-smoker
Dead,Other,,Male,58,67,196,102,144,140,0,76,124,Desirable,High,Overweight,Non-smoker
Alive,,,Female,42,64,152,85,125,123,0,,267,High,Normal,Overweight,Non-smoker
Alive,,66,Male,44,66,163,94,130,121,0,,219,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,40,67.75,195,108,150,139,0,70,227,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,55,63.5,141,68,120,118,0,77,309,High,Normal,Overweight,Non-smoker
Dead,Other,,Male,54,68.25,176,86,140,122,20,62,204,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,31,59.25,118,80,120,111,0,,134,Desirable,Normal,Overweight,Non-smoker
Alive,,52,Female,36,62.25,150,70,115,129,10,,169,Desirable,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,42,59.75,105,72,104,99,20,,247,High,Optimal,Normal,Heavy (16-25)
Alive,,,Female,34,61.25,115,66,108,103,35,,159,Desirable,Optimal,Normal,Very Heavy (> 25)
Alive,,,Male,34,64,118,55,105,92,20,,242,High,Optimal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,63,Female,57,62.5,153,86,146,132,0,85,213,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,51,Male,41,64.5,115,80,130,90,30,53,225,Borderline,Normal,Underweight,Very Heavy (> 25)
Alive,,,Female,43,61.5,134,82,130,120,5,,184,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,45,64.5,153,78,130,123,0,,203,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,44,65.25,137,64,104,105,0,,216,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,49,60.5,161,105,150,148,0,,234,Borderline,High,Overweight,Non-smoker
Alive,,,Female,42,59,107,70,108,101,0,,234,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,36,65,138,70,110,108,20,,198,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Cancer,56,Male,38,67.75,158,100,140,113,25,60,233,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,39,59.75,128,90,130,121,0,,336,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,73,Female,59,60.5,151,94,154,139,0,75,313,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Male,60,64,154,70,175,120,0,68,260,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,41,63,151,100,150,121,5,73,284,High,High,Overweight,Light (1-5)
Alive,,71,Female,41,65.75,127,75,117,99,0,,234,Borderline,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,55,Male,55,64,154,80,135,120,0,61,237,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,38,69,184,110,155,124,0,,212,Borderline,High,Overweight,Non-smoker
Dead,Other,73,Male,49,68.5,157,86,138,109,20,77,225,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,44,70,186,70,120,122,40,,227,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,79,Male,59,63,120,88,150,96,5,81,225,Borderline,High,Normal,Light (1-5)
Alive,,,Female,36,62.5,129,80,110,111,10,,197,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Female,58,63.75,171,92,138,143,0,,259,High,High,Overweight,Non-smoker
Alive,,,Male,42,73.25,180,88,130,108,0,,200,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,42,67.75,197,90,130,141,0,,213,Borderline,High,Overweight,Non-smoker
Alive,,,Female,36,62.75,141,68,104,122,15,,208,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,45,62.5,160,76,134,138,20,,308,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,48,64.5,160,90,135,129,20,,282,High,High,Overweight,Heavy (16-25)
Alive,,62,Female,54,61.25,155,116,194,138,0,,289,High,High,Overweight,Non-smoker
Alive,,62,Female,38,60.25,112,80,115,103,15,,226,Borderline,Normal,Normal,Moderate (6-15)
Alive,,64,Male,40,70.5,192,90,120,126,0,,198,Desirable,High,Overweight,Non-smoker
Alive,,,Male,32,69.25,167,80,124,113,0,,175,Desirable,Normal,Overweight,Non-smoker
Alive,,54,Male,42,66.5,185,110,140,137,30,,220,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,63,Male,37,66,117,70,112,87,20,,192,Desirable,Optimal,Underweight,Heavy (16-25)
Dead,Coronary Heart Disease,58,Male,38,67.25,194,70,145,139,40,68,309,High,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,58,Female,40,58.5,166,94,164,161,0,60,317,High,High,Overweight,Non-smoker
Alive,,,Female,43,63.75,173,110,162,144,20,,330,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,42,65,159,72,120,121,20,48,310,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,44,60.5,123,78,136,113,0,,230,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,74,Male,52,65,147,100,150,112,40,80,249,High,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,45,66.25,122,50,90,90,5,75,175,Desirable,Optimal,Underweight,Light (1-5)
Alive,,,Male,41,64.5,146,85,135,114,40,,229,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,38,66,145,96,150,110,0,,157,Desirable,High,Overweight,Non-smoker
Alive,,,Male,46,68,180,84,128,125,20,,292,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,35,60.5,131,86,124,120,0,,324,High,Normal,Overweight,Non-smoker
Alive,,,Female,39,60,107,95,140,98,20,,275,High,High,Normal,Heavy (16-25)
Alive,,,Male,39,67.5,121,100,150,86,30,,194,Desirable,High,Underweight,Very Heavy (> 25)
Alive,,,Female,34,57.5,100,70,125,100,1,,209,Borderline,Normal,Normal,Light (1-5)
Alive,,,Female,33,62,181,80,116,156,10,,178,Desirable,Normal,Overweight,Moderate (6-15)
Dead,Other,,Female,38,61.5,175,95,145,156,0,70,213,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,44,63.25,188,106,148,150,0,76,209,Borderline,High,Overweight,Non-smoker
Alive,,,Female,42,60.75,135,80,128,124,0,,170,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,32,66,152,80,130,113,0,,197,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,36,60.5,129,80,115,118,0,,197,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,32,65,117,60,110,91,0,,167,Desirable,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,65,Female,57,63.5,154,104,204,128,0,69,300,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,34,65,118,80,115,92,5,66,197,Desirable,Normal,Normal,Light (1-5)
Alive,,70,Female,42,59,124,82,126,117,15,,230,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,44,66.75,148,75,135,112,0,,202,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,31,66.25,141,82,126,107,0,,155,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,54,66.5,174,80,134,129,10,,167,Desirable,Normal,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,54,59,160,88,138,151,0,86,234,Borderline,Normal,Overweight,Non-smoker
Alive,,57,Male,33,68.5,150,75,115,104,20,,276,High,Optimal,Normal,Heavy (16-25)
Alive,,,Male,45,62.5,144,80,130,118,25,,274,High,Normal,Overweight,Heavy (16-25)
Alive,,74,Female,44,62,132,75,135,114,0,,281,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,49,Male,43,71,205,98,150,131,20,73,285,High,High,Overweight,Heavy (16-25)
Alive,,,Male,45,69.75,154,88,110,104,0,,207,Borderline,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,55,60.25,170,155,230,156,0,71,313,High,High,Overweight,Non-smoker
Alive,,,Female,50,59,134,94,140,126,0,,215,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,38,65.25,153,100,144,120,0,50,191,Desirable,High,Overweight,Non-smoker
Alive,,,Female,35,64.25,124,80,120,100,20,,274,High,Normal,Normal,Heavy (16-25)
Alive,,,Male,32,67.5,172,84,126,123,5,,274,High,Normal,Overweight,Light (1-5)
Alive,,,Female,55,68,153,80,132,109,5,,244,High,Normal,Normal,Light (1-5)
Alive,,57,Male,35,69,156,65,125,105,20,,230,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,42,62.75,124,82,122,107,0,,230,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,42,Male,42,65,143,85,140,109,0,52,260,High,Normal,Normal,Non-smoker
Dead,Unknown,,Female,58,62.25,177,84,140,153,0,86,324,High,Normal,Overweight,Non-smoker
Alive,,,Female,45,60.5,169,85,135,155,0,,346,High,Normal,Overweight,Non-smoker
Alive,,61,Female,41,63.75,133,94,146,111,0,,205,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,44,63,105,90,140,88,20,70,157,Desirable,High,Underweight,Heavy (16-25)
Alive,,,Female,42,62.5,152,85,120,131,0,,203,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,54,60.5,118,104,165,108,0,,220,Borderline,High,Normal,Non-smoker
Dead,Other,75,Male,51,66.75,177,80,130,131,0,79,259,High,Normal,Overweight,Non-smoker
Alive,,69,Male,51,69,160,84,124,108,30,,223,Borderline,Normal,Normal,Very Heavy (> 25)
Dead,Other,65,Female,43,62.5,132,88,130,114,0,73,247,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,86,Male,60,64,129,78,140,101,0,88,220,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,37,66,151,100,150,112,20,,248,High,High,Overweight,Heavy (16-25)
Alive,,59,Male,37,65.5,221,86,138,169,20,,221,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,36,64.25,139,78,108,112,0,,195,Desirable,Optimal,Overweight,Non-smoker
Alive,,58,Female,36,61.75,180,85,150,161,0,,198,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,59,Female,55,60,116,100,155,106,5,67,220,Borderline,High,Normal,Light (1-5)
Alive,,,Female,33,63.25,126,75,110,105,0,,202,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,37,60.5,123,72,120,113,0,,215,Borderline,Normal,Overweight,Non-smoker
Dead,Other,,Male,50,66.5,237,100,156,176,5,76,247,High,High,Overweight,Light (1-5)
Alive,,,Female,40,61.25,108,78,132,96,10,,298,High,Normal,Normal,Moderate (6-15)
Alive,,,Male,39,69,142,74,104,96,10,,268,High,Optimal,Normal,Moderate (6-15)
Alive,,,Male,31,66,138,74,124,102,25,,276,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,52,65.75,189,90,130,148,0,,221,Borderline,High,Overweight,Non-smoker
Alive,,,Female,32,66.25,176,88,124,133,5,,255,High,Normal,Overweight,Light (1-5)
Alive,,,Male,36,69.25,213,85,112,144,20,,308,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,31,61,145,70,130,129,0,,244,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,44,Male,38,63,132,90,130,106,20,66,255,High,High,Normal,Heavy (16-25)
Alive,,61,Female,35,62.25,224,98,144,193,30,,262,High,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,58,Male,38,66.5,189,98,144,140,30,68,242,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,48,60.5,125,86,130,115,25,,234,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,44,62.75,201,80,114,165,35,54,308,High,Normal,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,61,Female,59,66.5,203,150,216,154,0,71,289,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,46,Male,36,66.5,178,100,130,132,20,54,243,High,High,Overweight,Heavy (16-25)
Alive,,,Female,32,62,178,70,118,153,0,,241,High,Optimal,Overweight,Non-smoker
Dead,Other,,Male,40,64,174,106,164,136,0,58,227,Borderline,High,Overweight,Non-smoker
Alive,,,Female,39,63,122,80,128,102,1,,232,Borderline,Normal,Normal,Light (1-5)
Dead,Coronary Heart Disease,62,Male,56,73.5,182,100,178,110,15,68,172,Desirable,High,Overweight,Moderate (6-15)
Dead,Unknown,,Female,54,63.75,139,70,130,116,0,74,219,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,34,63.5,149,80,125,124,5,,213,Borderline,Normal,Overweight,Light (1-5)
Dead,Other,,Female,52,66.75,167,84,154,127,5,66,183,Desirable,High,Overweight,Light (1-5)
Dead,Cancer,,Female,44,61.75,119,100,160,106,20,70,195,Desirable,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,73,Male,61,68.75,187,75,135,130,20,75,255,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,35,63.5,87,76,120,73,20,,232,Borderline,Normal,Underweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,82,Female,56,60.5,160,100,160,147,0,86,242,High,High,Overweight,Non-smoker
Alive,,,Female,52,63.5,149,88,140,124,0,,344,High,Normal,Overweight,Non-smoker
Alive,,,Male,33,69.25,168,84,138,114,40,,309,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,55,62,162,110,190,140,20,,324,High,High,Overweight,Heavy (16-25)
Alive,,43,Female,43,60.25,235,134,246,216,0,,300,High,High,Overweight,Non-smoker
Alive,,,Female,57,64.25,168,92,182,135,0,,225,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,59,65.75,137,96,160,105,20,91,263,High,High,Normal,Heavy (16-25)
Alive,,,Male,49,66.75,171,90,140,127,0,,219,Borderline,High,Overweight,Non-smoker
Alive,,,Female,36,62.75,203,100,150,175,5,,184,Desirable,High,Overweight,Light (1-5)
Alive,,,Female,53,61.5,135,80,165,121,0,,167,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Female,56,64.5,164,130,190,132,0,82,326,High,High,Overweight,Non-smoker
Dead,Unknown,58,Male,58,69.5,212,110,156,143,0,84,268,High,High,Overweight,Non-smoker
Alive,,,Female,32,62.25,134,70,115,116,5,,155,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Male,38,67.5,177,82,110,126,30,,206,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,44,64.5,128,84,110,103,0,,192,Desirable,Normal,Normal,Non-smoker
Dead,Other,,Male,38,62.5,166,100,150,136,20,68,268,High,High,Overweight,Heavy (16-25)
Alive,,42,Male,36,66.25,200,95,135,148,30,,207,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,57,Male,47,65,129,78,140,98,20,69,226,Borderline,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,56,Male,44,66.5,169,90,140,125,35,58,191,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Male,34,65.25,150,90,150,115,1,,205,Borderline,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,38,72.25,273,120,180,170,0,58,227,Borderline,High,Overweight,Non-smoker
Alive,,,Female,43,63,151,90,150,126,0,,215,Borderline,High,Overweight,Non-smoker
Alive,,,Female,40,60.5,132,76,128,121,0,,274,High,Normal,Overweight,Non-smoker
Alive,,,Female,51,64.5,132,98,126,106,10,,244,High,High,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,53,62,176,96,164,152,0,73,149,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,65,Male,55,66,152,84,148,113,20,67,259,High,High,Overweight,Heavy (16-25)
Alive,,,Female,47,62.75,159,90,140,137,0,,209,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,51,64.5,168,88,142,131,20,65,209,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,33,64.5,150,98,165,117,0,,207,Borderline,High,Overweight,Non-smoker
Alive,,,Female,38,61.25,153,100,158,137,0,,190,Desirable,High,Overweight,Non-smoker
Alive,,,Female,35,63,123,90,130,103,0,,190,Desirable,High,Normal,Non-smoker
Alive,,,Male,39,74.5,177,85,135,104,0,,268,High,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Male,50,66.5,177,84,126,131,0,66,281,High,Normal,Overweight,Non-smoker
Alive,,48,Female,32,59.25,108,70,116,102,0,,200,Borderline,Optimal,Normal,Non-smoker
Alive,,,Male,38,63.25,186,105,164,149,30,,307,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,44,61.75,128,90,150,108,30,,194,Desirable,High,Normal,Very Heavy (> 25)
Alive,,,Female,33,59,139,75,120,131,5,,192,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Male,33,66.25,241,90,140,179,0,,259,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,83,Female,55,59,163,110,155,154,0,85,287,High,High,Overweight,Non-smoker
Alive,,,Male,46,69.5,167,90,124,113,40,,221,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,35,60,134,66,108,123,1,,170,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Male,34,66.5,203,98,145,150,15,,183,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Female,35,63.25,122,80,120,102,0,,171,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,59,59.5,117,98,165,110,0,,266,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,34,63.25,109,68,105,91,20,56,197,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Female,33,62,161,90,146,139,0,,231,Borderline,High,Overweight,Non-smoker
Alive,,,Female,39,64,139,82,120,112,15,,209,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Unknown,,Male,45,69.25,176,92,126,119,50,51,229,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Male,40,69,167,96,136,113,0,,204,Borderline,High,Overweight,Non-smoker
Alive,,59,Female,33,59.25,123,80,130,116,5,,226,Borderline,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,75,Female,61,58.5,180,115,185,175,0,77,238,Borderline,High,Overweight,Non-smoker
Alive,,,Female,36,60,106,70,110,97,5,,220,Borderline,Optimal,Normal,Light (1-5)
Dead,Other,48,Female,48,62.25,113,92,150,97,0,74,220,Borderline,High,Normal,Non-smoker
Dead,Other,,Female,58,62.5,166,110,180,143,0,84,230,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,38,Male,32,64.75,181,85,130,141,30,48,328,High,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,58,Male,44,64.25,129,82,118,101,20,60,224,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,31,62.5,123,88,130,106,20,63,250,High,Normal,Normal,Heavy (16-25)
Alive,,,Male,35,64,139,70,104,109,20,,276,High,Optimal,Normal,Heavy (16-25)
Alive,,,Male,36,69,194,70,112,131,0,,206,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,33,70.5,178,80,138,117,0,,247,High,Normal,Overweight,Non-smoker
Dead,Cancer,54,Male,48,64,152,100,142,119,30,64,250,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,34,63,132,85,132,110,0,,259,High,Normal,Overweight,Non-smoker
Alive,,,Male,47,66.5,164,80,150,121,0,,244,High,High,Overweight,Non-smoker
Alive,,,Female,38,59,106,100,148,100,20,,183,Desirable,High,Normal,Heavy (16-25)
Alive,,,Female,37,62,114,75,110,98,0,,166,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,49,60,165,100,170,151,0,,209,Borderline,High,Overweight,Non-smoker
Alive,,,Female,42,64.5,130,90,140,105,15,,255,High,High,Normal,Moderate (6-15)
Alive,,,Male,45,69.75,172,80,122,116,20,,324,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,76,Male,60,67.25,192,100,160,137,0,78,200,Borderline,High,Overweight,Non-smoker
Alive,,,Male,33,69.5,184,90,120,124,20,,210,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,40,59,115,90,140,108,0,,221,Borderline,High,Normal,Non-smoker
Alive,,,Female,32,63.5,116,75,115,97,0,,209,Borderline,Optimal,Normal,Non-smoker
Alive,,,Male,37,74,222,80,130,131,0,,207,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,43,63,133,80,140,111,0,,171,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,30,62.5,134,95,145,116,5,,170,Desirable,High,Overweight,Light (1-5)
Alive,,,Male,32,68.5,204,96,154,142,0,,177,Desirable,High,Overweight,Non-smoker
Alive,,,Male,32,71,156,98,160,99,20,,268,High,High,Normal,Heavy (16-25)
Alive,,59,Male,37,65.5,140,75,125,107,10,,167,Desirable,Normal,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,51,Female,51,60.5,150,108,186,138,20,79,308,High,High,Overweight,Heavy (16-25)
Alive,,,Female,36,61,146,85,130,130,0,,182,Desirable,Normal,Overweight,Non-smoker
Alive,,53,Male,53,68,209,90,130,145,0,,289,High,High,Overweight,Non-smoker
Alive,,,Female,39,59.5,130,100,150,123,0,,142,Desirable,High,Overweight,Non-smoker
Alive,,,Male,34,70.5,162,90,140,107,0,,327,High,High,Normal,Non-smoker
Alive,,,Male,44,68.75,145,84,130,101,20,,192,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,30,66.25,123,120,150,93,20,,175,Desirable,High,Normal,Heavy (16-25)
Alive,,,Female,37,60.5,132,80,130,121,0,,300,High,Normal,Overweight,Non-smoker
Alive,,,Male,38,64.5,182,100,150,142,0,,220,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,61,60.5,104,82,140,95,0,91,308,High,Normal,Normal,Non-smoker
Alive,,,Female,34,63,147,80,130,123,0,,267,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,37,70.5,164,90,160,108,20,63,209,Borderline,High,Normal,Heavy (16-25)
Alive,,,Female,40,61.75,172,82,136,154,0,,234,Borderline,Normal,Overweight,Non-smoker
Alive,,70,Male,48,66,190,130,200,141,0,,261,High,High,Overweight,Non-smoker
Alive,,,Male,40,69,196,90,128,132,20,,214,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,60,Female,60,63.5,180,92,170,150,0,68,425,High,High,Overweight,Non-smoker
Alive,,,Female,34,63,124,75,125,103,10,,178,Desirable,Normal,Normal,Moderate (6-15)
Alive,,45,Male,37,66,187,80,110,139,20,,212,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,45,64,111,88,122,90,0,,284,High,Normal,Underweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,45,64.5,120,100,154,94,20,71,234,Borderline,High,Normal,Heavy (16-25)
Dead,Other,,Female,56,64.75,169,90,150,136,0,80,284,High,High,Overweight,Non-smoker
Alive,,83,Male,53,63.5,171,90,140,137,0,,186,Desirable,High,Overweight,Non-smoker
Alive,,61,Female,51,59,118,88,140,111,5,,225,Borderline,Normal,Overweight,Light (1-5)
Dead,Other,,Male,45,66.75,160,76,140,119,20,75,209,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,63,Male,35,67,147,95,135,105,20,,200,Borderline,High,Normal,Heavy (16-25)
Alive,,,Female,51,60.5,163,102,155,150,0,,215,Borderline,High,Overweight,Non-smoker
Alive,,,Female,44,64,158,110,160,127,0,,243,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,43,62.75,109,75,110,94,0,59,200,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,40,59.5,154,94,146,145,0,,220,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,44,59,152,88,146,143,15,56,155,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Female,32,60.5,151,100,150,139,10,,229,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,37,62,137,80,124,118,0,,186,Desirable,Normal,Overweight,Non-smoker
Alive,,50,Female,50,56.5,139,84,140,143,0,,216,Borderline,Normal,Overweight,Non-smoker
Alive,,70,Female,58,62,154,90,150,133,0,,368,High,High,Overweight,Non-smoker
Alive,,61,Male,35,71,171,68,104,109,30,,213,Borderline,Optimal,Normal,Very Heavy (> 25)
Alive,,,Female,50,61,148,94,154,132,0,,221,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,50,70.5,222,108,150,146,0,66,192,Desirable,High,Overweight,Non-smoker
Alive,,,Female,48,58.5,167,98,140,162,0,,231,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,54,68.75,130,100,160,90,20,74,267,High,High,Underweight,Heavy (16-25)
Alive,,,Female,34,63.25,112,74,120,93,0,,163,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,49,58.25,138,100,184,134,5,,248,High,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,32,62.75,110,100,140,95,30,46,250,High,High,Normal,Very Heavy (> 25)
Dead,Cancer,,Female,44,58,162,80,135,157,5,64,195,Desirable,Normal,Overweight,Light (1-5)
Dead,Cancer,,Female,35,61.25,132,90,130,118,20,67,292,High,High,Overweight,Heavy (16-25)
Alive,,,Male,36,63.5,138,80,120,110,20,,223,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Other,75,Female,59,62.25,198,120,240,171,0,91,200,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,41,63,170,95,148,142,0,57,213,Borderline,High,Overweight,Non-smoker
Alive,,,Female,37,66,154,90,130,117,0,,213,Borderline,High,Overweight,Non-smoker
Alive,,,Male,31,65.25,154,90,140,118,35,,184,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Male,34,66.25,178,90,135,132,0,,195,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,59,Male,37,65.5,147,88,136,112,20,63,244,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,36,65.5,136,90,140,104,5,,159,Desirable,High,Normal,Light (1-5)
Dead,Coronary Heart Disease,52,Male,36,63.5,128,88,155,102,20,54,309,High,High,Normal,Heavy (16-25)
Dead,Cancer,,Female,35,62,129,110,150,111,30,61,197,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Male,37,66.25,159,88,130,118,20,,242,High,Normal,Overweight,Heavy (16-25)
Alive,,66,Female,40,63.75,138,80,130,115,0,,205,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,84,Female,56,62.25,170,85,168,147,0,88,246,High,High,Overweight,Non-smoker
Alive,,,Female,35,63,108,78,124,90,20,,155,Desirable,Normal,Underweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,32,66,119,90,140,90,20,52,187,Desirable,High,Underweight,Heavy (16-25)
Dead,Cancer,64,Female,52,59,172,112,240,162,0,80,246,High,High,Overweight,Non-smoker
Alive,,,Female,34,60,120,82,120,110,20,,195,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,33,60.75,137,85,140,126,0,,169,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,38,59.25,119,66,108,112,0,,221,Borderline,Optimal,Overweight,Non-smoker
Dead,Cancer,,Male,36,65.25,180,120,166,137,30,56,167,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Female,32,66.25,116,75,120,88,0,,237,Borderline,Normal,Underweight,Non-smoker
Dead,Other,,Female,58,63.5,132,112,170,110,0,80,206,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,60,Male,60,64,162,80,160,127,0,74,292,High,High,Overweight,Non-smoker
Dead,Cancer,59,Female,47,60.25,177,100,150,162,5,75,242,High,High,Overweight,Light (1-5)
Alive,,,Male,31,66.25,166,88,124,123,0,,150,Desirable,Normal,Overweight,Non-smoker
Alive,,56,Male,44,61.25,172,85,145,145,40,,242,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,34,61.5,101,70,120,90,0,,183,Desirable,Normal,Underweight,Non-smoker
Dead,Cancer,,Female,60,62.25,194,85,130,167,0,78,274,High,Normal,Overweight,Non-smoker
Alive,,58,Female,38,64.25,134,90,120,108,20,,248,High,High,Normal,Heavy (16-25)
Alive,,,Female,31,66,136,80,114,103,0,,180,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,34,70.5,169,85,164,111,0,,195,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,55,59.75,189,145,280,178,0,75,325,High,High,Overweight,Non-smoker
Alive,,60,Male,38,69.75,207,100,136,140,0,,248,High,High,Overweight,Non-smoker
Alive,,,Female,39,65,168,100,160,131,0,,206,Borderline,High,Overweight,Non-smoker
Alive,,,Male,49,68.75,159,75,108,110,0,,238,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,51,67.25,181,100,150,129,30,,281,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,49,62.5,130,105,145,112,5,,250,High,High,Overweight,Light (1-5)
Alive,,,Male,34,70.25,132,82,126,87,20,,170,Desirable,Normal,Underweight,Heavy (16-25)
Alive,,,Female,32,59.25,102,60,120,96,15,,182,Desirable,Normal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,63,Female,35,61.5,111,80,130,99,10,67,188,Desirable,Normal,Normal,Moderate (6-15)
Dead,Other,,Male,44,62.75,123,110,162,101,10,52,267,High,High,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,37,62,89,80,130,77,0,59,190,Desirable,Normal,Underweight,Non-smoker
Dead,Coronary Heart Disease,70,Female,48,56.5,126,85,125,130,0,80,180,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,52,61.5,142,90,140,127,5,84,231,Borderline,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,64,Male,52,67.25,156,100,142,111,0,80,238,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,41,58.25,136,90,145,132,5,65,270,High,High,Overweight,Light (1-5)
Alive,,51,Male,43,65.5,165,90,140,126,20,,261,High,High,Overweight,Heavy (16-25)
Alive,,,Male,31,67.5,170,70,116,121,10,,206,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,36,62.75,125,80,120,108,20,,234,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Male,42,72.25,174,80,116,108,20,54,267,High,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,52,63.5,156,100,160,130,0,70,219,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,56,66,147,80,130,109,20,78,183,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,48,65.75,208,80,140,159,15,,219,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,38,64.25,189,92,150,152,0,,138,Desirable,High,Overweight,Non-smoker
Dead,Other,60,Female,54,58.5,148,75,170,144,5,68,259,High,High,Overweight,Light (1-5)
Alive,,,Female,39,63,138,80,130,115,5,,195,Desirable,Normal,Overweight,Light (1-5)
Alive,,58,Female,48,59.5,157,100,150,148,0,,245,High,High,Overweight,Non-smoker
Dead,Other,69,Male,59,68,205,75,135,142,5,81,225,Borderline,Normal,Overweight,Light (1-5)
Dead,Cancer,,Male,39,70.75,170,70,116,112,20,57,250,High,Optimal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,44,Male,34,65.75,167,100,150,127,50,46,301,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,32,65.75,161,80,115,123,0,,171,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,52,66.25,173,90,130,128,0,66,313,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Male,60,68.5,134,110,166,93,30,74,216,Borderline,High,Normal,Very Heavy (> 25)
Alive,,,Male,37,63.5,113,75,142,90,20,,178,Desirable,High,Underweight,Heavy (16-25)
Dead,Coronary Heart Disease,68,Male,38,70.25,169,88,136,111,20,70,217,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,34,66.75,141,90,130,104,20,60,177,Desirable,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,43,Male,39,63.25,152,100,130,122,5,45,305,High,High,Overweight,Light (1-5)
Alive,,,Male,38,72.25,234,84,134,145,0,,155,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,31,61.5,96,76,120,86,20,,231,Borderline,Normal,Underweight,Heavy (16-25)
Alive,,,Female,55,67,160,80,150,118,0,,234,Borderline,High,Overweight,Non-smoker
Alive,,,Female,51,62,149,70,120,128,0,,215,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,33,63.75,134,75,115,112,20,,217,Borderline,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,39,66.5,156,88,128,118,20,,171,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,50,63,123,90,160,103,5,,248,High,High,Normal,Light (1-5)
Dead,Coronary Heart Disease,53,Male,53,65.25,210,120,190,160,10,63,250,High,High,Overweight,Moderate (6-15)
Alive,,,Female,42,58.5,132,98,140,128,5,,166,Desirable,High,Overweight,Light (1-5)
Alive,,66,Male,42,63.5,146,90,126,117,0,,217,Borderline,High,Overweight,Non-smoker
Alive,,,Female,36,54.75,127,100,150,140,0,,169,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,51,Male,33,73,185,100,146,111,20,59,225,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,38,69.25,149,84,124,101,20,,300,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,39,63,182,80,116,152,0,,166,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Male,44,69,151,80,120,102,1,68,259,High,Normal,Normal,Light (1-5)
Dead,Coronary Heart Disease,60,Male,46,73,156,74,116,94,20,70,213,Borderline,Optimal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,51,Male,45,70.75,181,100,150,119,40,63,263,High,High,Overweight,Very Heavy (> 25)
Alive,,55,Female,49,58.5,139,95,165,135,0,,197,Desirable,High,Overweight,Non-smoker
Alive,,,Female,37,58.25,119,70,160,116,0,,187,Desirable,High,Overweight,Non-smoker
Alive,,,Female,34,58.5,97,60,90,94,0,,153,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,32,67.5,122,82,120,90,25,,255,High,Normal,Underweight,Heavy (16-25)
Dead,Cancer,,Female,42,64.75,150,65,102,121,20,60,158,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,58,64,161,110,200,126,0,72,166,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Female,33,64.5,147,94,140,119,5,39,155,Desirable,High,Overweight,Light (1-5)
Dead,Other,,Male,58,67.75,179,115,166,128,0,64,242,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,79,Female,55,62.25,219,100,182,189,0,81,274,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,70,Female,60,59.75,156,84,140,147,0,92,267,High,Normal,Overweight,Non-smoker
Alive,,,Female,47,63,155,115,175,129,10,,209,Borderline,High,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,62,Female,50,62.25,192,95,148,166,1,72,255,High,High,Overweight,Light (1-5)
Dead,Cancer,,Male,54,68.75,200,100,140,139,0,86,236,Borderline,High,Overweight,Non-smoker
Alive,,66,Female,52,58.5,109,110,170,106,0,,197,Desirable,High,Normal,Non-smoker
Alive,,,Female,38,61,114,75,124,102,10,,170,Desirable,Normal,Normal,Moderate (6-15)
Dead,Cancer,,Male,45,65.5,186,108,184,142,25,63,270,High,High,Overweight,Heavy (16-25)
Alive,,,Female,48,65.25,167,96,150,130,0,,250,High,High,Overweight,Non-smoker
Alive,,,Female,37,61.75,182,98,155,163,20,,167,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Male,38,67.75,154,80,110,110,0,,159,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,40,58.25,137,84,114,133,0,68,169,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,49,60.75,138,110,210,127,0,,340,High,High,Overweight,Non-smoker
Alive,,,Male,33,56,148,95,130,142,0,,242,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,54,63.75,144,86,140,120,0,82,231,Borderline,Normal,Overweight,Non-smoker
Dead,Other,,Male,52,65.5,164,94,160,125,20,66,249,High,High,Overweight,Heavy (16-25)
Alive,,,Male,42,68.25,181,90,130,126,0,,202,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Male,36,68.5,151,80,134,105,20,68,245,High,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,50,65.5,206,104,166,157,10,80,232,Borderline,High,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,55,Male,47,63.75,198,130,195,158,10,71,223,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,50,61.75,145,90,170,129,0,,292,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,81,Male,51,67.5,179,80,136,128,15,83,231,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Male,33,67.5,159,85,132,114,20,,179,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,46,67.25,180,86,150,129,0,,225,Borderline,High,Overweight,Non-smoker
Alive,,,Male,53,65,178,80,120,136,20,,240,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,53,65.75,146,75,140,111,1,,189,Desirable,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,55,Female,55,65.5,117,104,176,91,0,85,183,Desirable,High,Normal,Non-smoker
Alive,,,Female,33,62.5,128,80,126,110,0,,216,Borderline,Normal,Overweight,Non-smoker
Dead,Other,,Female,59,64,115,74,126,93,20,85,250,High,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,62,Male,58,62.5,171,70,126,140,20,70,242,High,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,60,62,167,94,156,144,0,82,225,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,31,66.25,138,80,120,102,0,61,219,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,45,Male,41,63,162,112,146,130,30,63,324,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,46,61.75,126,70,116,113,0,,259,High,Optimal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,33,68.75,167,110,152,116,30,41,267,High,High,Overweight,Very Heavy (> 25)
Alive,,57,Female,55,58.75,152,140,250,148,0,,261,High,High,Overweight,Non-smoker
Alive,,65,Female,47,65.25,195,105,175,152,0,,369,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,72,Female,44,62.5,139,90,136,120,0,74,231,Borderline,High,Overweight,Non-smoker
Alive,,,Female,48,58.5,129,90,168,125,0,,249,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,60,67.25,203,94,142,145,0,86,237,Borderline,High,Overweight,Non-smoker
Alive,,,Female,37,63.25,145,70,130,121,20,,213,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,33,56,118,75,105,122,0,,200,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,40,59.5,99,70,106,93,20,,150,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Other,,Male,38,66.75,150,90,130,111,20,62,209,Borderline,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,59,63.75,173,80,146,138,0,67,266,High,High,Overweight,Non-smoker
Alive,,,Male,34,69.25,193,106,160,130,30,,259,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,31,66.25,205,90,140,152,0,,164,Desirable,High,Overweight,Non-smoker
Alive,,41,Female,41,67,130,65,105,96,5,,174,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Female,32,58.25,109,80,140,106,0,,209,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,32,65,142,88,166,108,20,,242,High,High,Normal,Heavy (16-25)
Alive,,59,Male,35,66,154,80,126,114,20,,270,High,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,53,66.5,149,80,165,113,0,75,171,Desirable,High,Overweight,Non-smoker
Dead,Other,,Male,37,71.25,191,64,108,122,20,63,245,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,34,67.25,128,85,125,91,20,,230,Borderline,Normal,Normal,Heavy (16-25)
Alive,,62,Female,40,61,113,75,115,101,5,,192,Desirable,Optimal,Normal,Light (1-5)
Dead,Cerebral Vascular Disease,62,Male,44,71,180,70,120,115,0,68,296,High,Normal,Overweight,Non-smoker
Dead,Other,,Female,52,63,114,80,110,95,10,82,225,Borderline,Normal,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,48,68.25,165,108,156,115,0,80,296,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,61,Male,55,69.25,147,82,140,99,30,67,296,High,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,37,62.5,154,96,130,133,0,,173,Desirable,High,Overweight,Non-smoker
Dead,Other,,Male,47,71.25,159,90,152,101,20,51,155,Desirable,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,67,Female,49,59.75,119,90,135,112,0,81,300,High,High,Overweight,Non-smoker
Alive,,79,Male,61,62.5,137,80,140,112,0,,186,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,45,58.75,130,80,120,126,0,,206,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,41,64,112,80,125,90,0,,237,Borderline,Normal,Underweight,Non-smoker
Alive,,,Male,54,68.75,153,80,130,106,0,,237,Borderline,Normal,Normal,Non-smoker
Dead,Cancer,63,Male,57,67.75,178,90,130,127,0,89,219,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,57,66.25,154,70,120,114,50,69,221,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,42,62,138,80,130,119,5,,166,Desirable,Normal,Overweight,Light (1-5)
Dead,Cancer,,Male,41,67,186,88,140,133,40,73,276,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,60,62.5,132,90,158,114,0,,217,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,82,Female,56,61.25,147,94,206,131,0,86,272,High,High,Overweight,Non-smoker
Alive,,,Female,31,59.75,112,80,130,106,0,,225,Borderline,Normal,Normal,Non-smoker
Dead,Cancer,,Female,54,61,118,95,145,105,0,62,213,Borderline,High,Normal,Non-smoker
Alive,,55,Female,31,63.25,108,100,140,90,20,,170,Desirable,High,Underweight,Heavy (16-25)
Alive,,,Female,55,62.5,115,72,120,99,0,,200,Borderline,Normal,Normal,Non-smoker
Dead,Cancer,,Female,43,63.5,129,90,120,108,5,73,220,Borderline,High,Normal,Light (1-5)
Alive,,,Female,32,61.5,143,84,126,128,0,,192,Desirable,Normal,Overweight,Non-smoker
Dead,Other,81,Female,57,58.75,114,95,155,111,0,89,219,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Female,54,61,155,94,150,138,0,68,296,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,54,Male,54,62,151,105,165,124,0,60,183,Desirable,High,Overweight,Non-smoker
Dead,Other,,Female,50,62.5,120,80,102,103,0,66,259,High,Normal,Normal,Non-smoker
Alive,,,Female,35,62.5,142,80,150,122,15,,238,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Male,32,66.75,145,90,125,107,20,,213,Borderline,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,54,Female,38,63.25,164,80,120,137,10,56,242,High,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Male,40,65.25,157,95,135,120,0,64,234,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,58,Female,32,61.25,116,80,108,104,5,60,245,High,Normal,Normal,Light (1-5)
Dead,Cerebral Vascular Disease,63,Female,55,62,174,100,170,150,35,75,342,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,51,64.75,163,96,150,131,0,,245,High,High,Overweight,Non-smoker
Alive,,,Female,45,61.75,133,90,150,119,15,,232,Borderline,High,Overweight,Moderate (6-15)
Dead,Cancer,,Male,45,71.25,143,84,116,91,0,67,252,High,Normal,Normal,Non-smoker
Alive,,,Male,35,62,136,80,140,111,20,,248,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,32,66.25,134,70,120,102,15,,212,Borderline,Normal,Normal,Moderate (6-15)
Alive,,51,Female,47,64.75,147,95,160,119,0,,317,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,42,62,146,100,140,126,5,74,288,High,High,Overweight,Light (1-5)
Alive,,58,Male,42,69,163,78,120,110,15,,169,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Female,34,61.25,122,75,115,109,20,,217,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Female,57,61.5,108,80,140,96,20,,191,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,38,64.25,196,110,150,153,0,,313,High,High,Overweight,Non-smoker
Alive,,,Female,43,60.5,128,75,125,117,20,,186,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,37,60.75,115,86,140,106,0,,219,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,54,59.5,126,80,120,119,0,,259,High,Normal,Overweight,Non-smoker
Alive,,,Male,32,65,144,90,135,110,0,,224,Borderline,High,Overweight,Non-smoker
Dead,Unknown,,Male,55,65.75,175,80,140,134,30,73,230,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,64,Male,38,69.25,169,90,135,114,5,,209,Borderline,High,Overweight,Light (1-5)
Alive,,,Female,38,62.5,142,90,130,122,0,,245,High,High,Overweight,Non-smoker
Alive,,,Male,38,68.75,187,90,135,130,5,,180,Desirable,High,Overweight,Light (1-5)
Dead,Other,57,Male,47,68.5,189,90,125,131,10,67,217,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,44,65.25,149,70,160,116,20,,220,Borderline,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,70,Male,58,65,151,84,132,115,40,86,238,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,50,60,143,100,170,131,0,82,270,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,59,63.75,128,70,140,102,5,81,170,Desirable,Normal,Normal,Light (1-5)
Alive,,,Female,42,62.5,144,82,148,124,0,,308,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,39,60.75,137,80,120,126,10,61,267,High,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Male,41,64.25,142,80,130,111,30,53,242,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,35,64.5,154,90,140,124,5,,215,Borderline,High,Overweight,Light (1-5)
Alive,,,Female,34,62,131,80,120,113,15,,147,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,55,Male,35,68.25,158,80,130,110,60,,177,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,50,Female,34,64.25,131,80,140,106,10,,187,Desirable,Normal,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,45,69.25,169,94,140,114,0,71,197,Desirable,High,Overweight,Non-smoker
Alive,,,Female,51,66,145,80,130,110,5,,215,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,51,66.75,148,88,156,112,0,,221,Borderline,High,Overweight,Non-smoker
Alive,,,Female,38,63.5,139,76,110,116,10,,180,Desirable,Optimal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,60,Male,52,68,226,104,190,157,25,62,255,High,High,Overweight,Heavy (16-25)
Alive,,,Male,34,70.5,164,90,115,108,60,,159,Desirable,High,Normal,Very Heavy (> 25)
Alive,,,Female,36,63.25,135,60,100,113,20,,163,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,34,65.5,132,80,130,103,10,,155,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,39,67.25,237,130,204,169,10,,204,Borderline,High,Overweight,Moderate (6-15)
Alive,,72,Female,44,60.25,211,120,190,194,0,,206,Borderline,High,Overweight,Non-smoker
Alive,,,Female,38,58.5,104,70,102,101,0,,231,Borderline,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,56,Male,44,66.25,174,84,130,129,20,64,206,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,49,Male,39,70,190,88,120,125,20,,280,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,57,66.5,138,80,130,105,0,,234,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,33,62.75,137,80,130,112,20,,268,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,41,68,121,84,130,86,0,,219,Borderline,Normal,Underweight,Non-smoker
Dead,Cancer,,Male,55,67.75,137,88,170,98,20,85,209,Borderline,High,Normal,Heavy (16-25)
Alive,,66,Male,36,67.5,158,80,130,113,30,,157,Desirable,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,45,70.5,169,80,120,111,0,71,200,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,50,Male,50,65.5,137,88,140,105,20,62,216,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,51,58,187,104,190,182,5,69,270,High,High,Overweight,Light (1-5)
Alive,,,Female,35,59,120,94,156,113,0,,217,Borderline,High,Overweight,Non-smoker
Alive,,,Female,46,60.5,123,80,130,113,0,,192,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,36,59.5,119,75,120,112,0,,201,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,40,69,179,90,140,121,0,,230,Borderline,High,Overweight,Non-smoker
Alive,,,Female,33,66,128,60,110,97,40,,239,Borderline,Optimal,Normal,Very Heavy (> 25)
Alive,,,Female,48,65.75,172,85,130,134,0,,245,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,33,65.75,179,70,120,137,0,55,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,40,59.75,172,84,124,162,0,,250,High,Normal,Overweight,Non-smoker
Alive,,,Male,31,72.5,167,70,105,104,20,,232,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,59,Female,47,64.5,139,84,172,112,0,,251,High,High,Overweight,Non-smoker
Alive,,,Male,52,61.25,135,80,120,113,20,,248,High,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,50,70.5,156,95,165,103,20,54,187,Desirable,High,Normal,Heavy (16-25)
Alive,,,Female,38,65,159,80,120,124,1,,125,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Male,49,63.5,160,90,164,128,0,,258,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,48,60,148,100,135,136,0,68,198,Desirable,High,Overweight,Non-smoker
Alive,,,Male,50,65,165,90,126,126,0,,145,Desirable,High,Overweight,Non-smoker
Alive,,,Male,37,65.5,160,80,140,122,0,,192,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,36,67.25,160,80,125,114,10,,194,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Female,37,59,99,64,102,93,20,,205,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Male,37,68.75,197,94,130,137,20,,260,High,High,Overweight,Heavy (16-25)
Alive,,,Male,47,71.75,236,88,130,150,0,,248,High,Normal,Overweight,Non-smoker
Alive,,65,Female,53,62.25,125,100,155,108,10,,277,High,High,Normal,Moderate (6-15)
Alive,,,Female,33,66,149,80,120,113,0,,197,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,48,57.5,160,84,170,160,0,66,225,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,68,Male,48,64.5,187,110,140,146,0,74,213,Borderline,High,Overweight,Non-smoker
Alive,,,Female,46,65.25,216,114,170,169,0,,236,Borderline,High,Overweight,Non-smoker
Alive,,,Male,37,70.25,219,100,140,144,0,,206,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,51,65,154,90,150,118,0,83,217,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,54,Male,40,72,169,98,155,105,20,56,568,High,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,56,Male,36,65.25,174,90,140,133,20,66,184,Desirable,High,Overweight,Heavy (16-25)
Alive,,61,Male,41,67.75,193,90,148,138,0,,206,Borderline,High,Overweight,Non-smoker
Alive,,,Female,33,64.5,124,80,114,100,15,,275,High,Normal,Normal,Moderate (6-15)
Alive,,,Male,45,71,196,78,112,125,20,,174,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,56,Male,54,69.25,174,100,180,118,0,60,192,Desirable,High,Overweight,Non-smoker
Dead,Unknown,,Female,45,58.5,107,85,130,104,20,71,242,High,Normal,Normal,Heavy (16-25)
Alive,,65,Male,35,67,173,80,138,124,0,,277,High,Normal,Overweight,Non-smoker
Alive,,,Male,58,62,115,85,140,94,1,,280,High,Normal,Normal,Light (1-5)
Alive,,,Female,31,67.25,137,70,110,101,5,,234,Borderline,Optimal,Normal,Light (1-5)
Dead,Other,,Male,36,69.5,172,90,138,116,20,64,242,High,High,Overweight,Heavy (16-25)
Dead,Unknown,,Female,57,58.25,151,100,155,147,0,89,225,Borderline,High,Overweight,Non-smoker
Alive,,,Male,35,68.5,181,80,136,126,20,,219,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,38,65.5,163,82,140,124,20,,192,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,55,65,169,100,160,132,5,,229,Borderline,High,Overweight,Light (1-5)
Dead,Unknown,,Female,46,58,138,110,172,134,10,72,259,High,High,Overweight,Moderate (6-15)
Alive,,,Female,38,59.75,181,90,164,171,0,,178,Desirable,High,Overweight,Non-smoker
Dead,Cancer,58,Male,46,70.5,222,90,160,146,20,78,190,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Male,34,65,138,80,130,105,20,,150,Desirable,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,39,64.5,130,94,170,105,0,63,200,Borderline,High,Normal,Non-smoker
Alive,,,Female,52,65,144,94,160,113,0,,240,High,High,Overweight,Non-smoker
Alive,,,Male,43,69.5,144,88,130,97,20,,244,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,37,62.25,153,90,120,132,20,,196,Desirable,High,Overweight,Heavy (16-25)
Alive,,46,Female,34,61.25,119,68,106,106,15,,187,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,46,Male,36,68.75,153,80,118,106,25,,184,Desirable,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,49,Male,41,71,163,64,108,104,20,51,315,High,Optimal,Normal,Heavy (16-25)
Dead,Cancer,,Female,35,65.5,153,90,150,120,20,39,200,Borderline,High,Overweight,Heavy (16-25)
Alive,,55,Male,37,69.5,138,84,120,93,20,,213,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,30,67,193,110,170,138,0,,169,Desirable,High,Overweight,Non-smoker
Alive,,,Female,33,62.25,168,84,130,145,0,,231,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,34,67.5,186,70,115,133,20,,192,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,36,60,132,76,134,121,0,,159,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,39,64.25,149,80,120,120,20,,233,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,55,Male,37,71,194,90,150,124,20,69,429,High,High,Overweight,Heavy (16-25)
Alive,,,Male,34,72,202,105,140,125,0,,299,High,High,Overweight,Non-smoker
Alive,,,Male,34,69.75,187,96,128,126,20,,225,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,31,68,151,85,130,108,15,,201,Borderline,Normal,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,60,64,235,96,190,190,0,92,,,High,Overweight,Non-smoker
Alive,,,Female,45,62.5,126,70,116,109,0,,219,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,37,60.5,167,70,110,153,0,,204,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,31,69.5,138,94,140,93,10,,219,Borderline,High,Normal,Moderate (6-15)
Alive,,,Female,37,62.25,149,70,134,128,0,,184,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,44,63.5,175,96,156,146,0,,197,Desirable,High,Overweight,Non-smoker
Alive,,,Male,46,71.75,230,70,130,146,40,,227,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,69,Male,61,62.75,171,85,145,140,10,75,299,High,High,Overweight,Moderate (6-15)
Alive,,65,Female,45,64.75,139,86,134,112,10,,271,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,43,60.25,163,100,145,150,0,,277,High,High,Overweight,Non-smoker
Dead,Other,,Female,34,64.75,119,94,158,96,25,42,183,Desirable,High,Normal,Heavy (16-25)
Dead,Cancer,,Male,38,67.75,155,88,138,111,15,48,214,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,31,63.5,141,74,126,118,0,,191,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,31,70,173,70,115,114,5,,220,Borderline,Optimal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,61,Female,35,61.75,144,80,134,129,0,63,231,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,33,66.25,158,74,126,117,0,,191,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,65,Male,59,64.75,186,108,172,145,0,79,305,High,High,Overweight,Non-smoker
Alive,,,Female,32,64.5,113,70,120,91,0,,194,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,33,72.25,148,72,110,92,20,,188,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,55,Male,41,73.5,178,140,200,107,0,73,277,High,High,Normal,Non-smoker
Alive,,,Female,39,65,120,70,100,94,10,,249,High,Optimal,Normal,Moderate (6-15)
Alive,,,Female,35,63,136,78,120,113,0,,292,High,Normal,Overweight,Non-smoker
Alive,,,Male,38,69.5,168,78,135,114,20,,186,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,33,68.75,158,80,120,110,20,,177,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,37,64.75,144,75,120,116,15,,240,High,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Female,42,61.25,194,85,130,173,5,56,206,Borderline,Normal,Overweight,Light (1-5)
Dead,Other,72,Male,54,68,153,68,110,106,0,84,238,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,38,63.25,135,70,105,113,0,,174,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,33,61,152,80,120,136,0,,150,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,43,67.25,183,76,118,131,20,,350,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,47,58,117,96,138,114,20,,203,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,50,66.25,165,120,145,122,0,,208,Borderline,High,Overweight,Non-smoker
Dead,Cancer,51,Female,51,54.75,105,110,200,115,0,69,210,Borderline,High,Overweight,Non-smoker
Alive,,,Male,31,67.25,133,70,112,95,40,,162,Desirable,Optimal,Normal,Very Heavy (> 25)
Alive,,,Male,38,63,170,85,135,136,15,,202,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,42,63.75,138,80,120,115,0,,213,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,39,57.5,140,80,130,140,15,,296,High,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Male,37,65.25,178,98,135,136,40,69,230,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Male,37,69.75,195,96,140,132,5,,221,Borderline,High,Overweight,Light (1-5)
Alive,,,Female,39,64,144,90,140,116,25,,167,Desirable,High,Overweight,Heavy (16-25)
Alive,,53,Female,29,64,133,75,120,107,30,,215,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Male,32,68.25,153,80,130,106,0,,268,High,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,54,64,138,76,130,111,5,78,177,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,58,56.75,153,125,220,158,0,,250,High,High,Overweight,Non-smoker
Alive,,,Male,35,66,148,95,135,110,0,,184,Desirable,High,Overweight,Non-smoker
Dead,Other,,Male,54,65.25,145,70,130,111,20,70,161,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,35,60.5,122,78,126,112,20,,221,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,36,67,140,80,135,100,20,,206,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,33,62.25,163,80,130,134,25,,281,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,36,62.25,147,80,120,127,20,,219,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,46,Male,36,71.5,164,100,160,104,30,,221,Borderline,High,Normal,Very Heavy (> 25)
Alive,,,Female,31,64.75,131,96,140,106,0,,213,Borderline,High,Normal,Non-smoker
Dead,Other,,Male,57,69.25,175,94,160,118,0,77,210,Borderline,High,Overweight,Non-smoker
Alive,,87,Female,61,60.75,146,94,154,134,0,,280,High,High,Overweight,Non-smoker
Alive,,80,Female,50,59.75,163,90,128,154,0,,231,Borderline,High,Overweight,Non-smoker
Alive,,,Female,40,64.75,179,75,105,144,0,,195,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,36,67.25,115,66,110,85,0,,175,Desirable,Optimal,Underweight,Non-smoker
Alive,,,Male,48,70.25,191,88,118,126,0,,240,High,Normal,Overweight,Non-smoker
Alive,,,Male,30,67.5,156,78,120,111,15,,206,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,31,66.25,108,85,128,82,5,,161,Desirable,Normal,Underweight,Light (1-5)
Alive,,,Female,41,66.25,128,70,116,97,20,,200,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Female,50,63.5,134,94,130,112,0,,197,Desirable,High,Overweight,Non-smoker
Alive,,33,Male,33,71.75,165,76,124,105,20,,200,Borderline,Normal,Normal,Heavy (16-25)
Dead,Other,,Female,43,62.25,136,70,110,117,1,71,216,Borderline,Optimal,Overweight,Light (1-5)
Alive,,46,Female,46,65,185,90,120,145,0,,285,High,High,Overweight,Non-smoker
Alive,,,Female,47,63.25,189,100,168,158,5,,142,Desirable,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,47,62.25,133,95,175,109,20,77,227,Borderline,High,Normal,Heavy (16-25)
Alive,,,Male,42,69,191,90,140,129,30,,213,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,47,59.5,135,90,140,127,0,,248,High,High,Overweight,Non-smoker
Dead,Cancer,65,Male,59,64.25,155,80,130,121,0,77,350,High,Normal,Overweight,Non-smoker
Alive,,64,Female,40,65.75,152,80,120,119,0,,117,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,42,66,154,120,178,114,5,,170,Desirable,High,Overweight,Light (1-5)
Alive,,,Female,48,57.5,109,86,130,109,20,,290,High,Normal,Normal,Heavy (16-25)
Alive,,,Male,44,63.5,160,90,130,128,10,,211,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Male,38,68.75,193,85,135,134,5,,230,Borderline,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,51,68.75,168,98,160,117,30,65,225,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Other,,Female,56,62.25,170,115,205,147,5,78,245,High,High,Overweight,Light (1-5)
Dead,Other,,Male,36,72,231,90,134,143,0,62,259,High,High,Overweight,Non-smoker
Dead,Unknown,,Female,37,60.75,131,76,124,120,20,51,266,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,37,69.25,190,85,130,128,20,,237,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,31,60.25,141,76,120,129,0,,163,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,44,62.25,141,86,115,122,0,,186,Desirable,Normal,Overweight,Non-smoker
Alive,,55,Female,37,64,140,90,142,113,0,,235,Borderline,High,Overweight,Non-smoker
Alive,,,Male,52,67.75,138,90,158,99,5,,219,Borderline,High,Normal,Light (1-5)
Alive,,,Female,31,60.5,117,76,120,107,15,,172,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,35,72,192,90,136,119,0,,195,Desirable,High,Overweight,Non-smoker
Alive,,,Male,38,67.5,197,80,146,141,20,,210,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,79,Female,57,59.5,134,80,186,126,0,85,296,High,High,Overweight,Non-smoker
Alive,,,Male,45,69.75,187,88,128,126,25,,250,High,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,59,64.75,128,114,220,103,1,85,288,High,High,Normal,Light (1-5)
Alive,,68,Female,40,64.25,117,70,120,94,0,,278,High,Normal,Normal,Non-smoker
Alive,,,Female,43,66.25,136,82,130,103,30,,230,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,37,63.5,133,74,120,111,5,,190,Desirable,Normal,Overweight,Light (1-5)
Alive,,52,Male,44,64,131,88,128,102,0,,252,High,Normal,Normal,Non-smoker
Alive,,,Female,45,60.25,138,90,148,127,0,,292,High,High,Overweight,Non-smoker
Alive,,,Male,42,66.5,143,78,124,106,20,,242,High,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,52,60.75,168,90,130,154,0,84,230,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,35,74.5,187,85,135,110,40,65,217,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,56,64.25,165,88,150,133,0,,300,High,High,Overweight,Non-smoker
Alive,,,Male,46,63.75,155,86,130,124,30,,270,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,42,64,128,80,110,103,10,,219,Borderline,Normal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,61,Male,43,71.75,205,100,154,131,20,63,250,High,High,Overweight,Heavy (16-25)
Alive,,,Female,48,56,108,82,128,111,20,,334,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,47,67.75,152,98,140,109,0,,229,Borderline,High,Normal,Non-smoker
Dead,Unknown,,Male,32,69,180,100,142,122,0,54,242,High,High,Overweight,Non-smoker
Alive,,,Female,42,67,203,90,140,149,1,,252,High,High,Overweight,Light (1-5)
Alive,,,Male,44,68,137,86,120,95,25,,150,Desirable,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,75,Female,51,63,202,90,150,168,0,77,252,High,High,Overweight,Non-smoker
Dead,Cancer,46,Male,30,73.5,176,86,120,106,10,56,219,Borderline,Normal,Normal,Moderate (6-15)
Alive,,36,Male,36,67.75,157,90,135,112,20,,268,High,High,Overweight,Heavy (16-25)
Alive,,,Male,46,71.25,162,110,144,103,30,,187,Desirable,High,Normal,Very Heavy (> 25)
Alive,,,Male,32,70.5,203,80,115,134,0,,225,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,41,63.75,135,80,120,113,1,,259,High,Normal,Overweight,Light (1-5)
Alive,,,Female,35,62.5,125,76,114,108,0,,167,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,37,64.75,140,100,164,113,10,,213,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,44,65,139,100,140,109,20,,208,Borderline,High,Normal,Heavy (16-25)
Alive,,,Male,37,70.25,166,80,120,109,10,,242,High,Normal,Normal,Moderate (6-15)
Alive,,62,Female,32,66.75,168,88,128,127,0,,250,High,Normal,Overweight,Non-smoker
Alive,,,Female,57,66.5,155,80,138,117,5,,250,High,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,80,Male,60,65.25,184,120,180,140,20,82,245,High,High,Overweight,Heavy (16-25)
Alive,,86,Male,56,68.25,147,78,128,102,0,,270,High,Normal,Normal,Non-smoker
Alive,,,Female,55,60.25,122,76,136,112,10,,248,High,Normal,Overweight,Moderate (6-15)
Alive,,,Male,31,67,141,80,112,101,0,,274,High,Normal,Normal,Non-smoker
Dead,Cancer,,Male,57,64.25,167,134,234,130,0,75,250,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,56,67.25,152,100,200,109,10,80,199,Desirable,High,Normal,Moderate (6-15)
Alive,,,Female,33,63.75,120,84,138,100,1,,150,Desirable,Normal,Normal,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,56,58.5,146,80,162,142,0,76,238,Borderline,High,Overweight,Non-smoker
Alive,,,Female,53,63,147,95,142,123,1,,302,High,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,76,Male,50,68.25,188,86,120,131,0,78,240,High,Normal,Overweight,Non-smoker
Alive,,,Male,45,72.75,179,100,142,111,0,,213,Borderline,High,Overweight,Non-smoker
Alive,,,Female,34,64,109,75,115,88,15,,230,Borderline,Optimal,Underweight,Moderate (6-15)
Alive,,62,Male,38,68,162,80,130,113,20,,294,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,71,Female,49,62,261,86,150,225,0,77,245,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,52,72,236,104,156,147,0,70,255,High,High,Overweight,Non-smoker
Alive,,,Female,50,65.75,163,80,126,127,0,,280,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,60,72,193,98,130,120,25,74,214,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,33,67.75,166,86,132,119,20,,274,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,54,63.25,165,96,180,138,5,,224,Borderline,High,Overweight,Light (1-5)
Alive,,,Male,44,68.75,151,76,120,105,20,,198,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,45,62.5,141,84,136,116,0,,219,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,31,61.75,104,68,118,93,1,,174,Desirable,Optimal,Normal,Light (1-5)
Alive,,78,Female,58,60,158,86,126,145,0,,242,High,Normal,Overweight,Non-smoker
Alive,,,Female,33,63.75,106,68,106,88,5,,180,Desirable,Optimal,Underweight,Light (1-5)
Dead,Cancer,,Female,38,64.5,129,78,110,104,40,42,194,Desirable,Optimal,Normal,Very Heavy (> 25)
Alive,,,Female,36,64,124,78,115,100,0,,175,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,33,61,121,66,102,108,20,,150,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Female,45,61.5,151,88,134,135,0,,193,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,37,68.75,189,70,112,131,30,,190,Desirable,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Female,42,59,129,90,138,122,0,,187,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,54,Male,52,68.25,177,94,146,123,35,58,232,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Other,,Female,52,60.25,156,95,135,143,0,84,260,High,High,Overweight,Non-smoker
Alive,,,Female,34,63,141,84,136,118,5,,151,Desirable,Normal,Overweight,Light (1-5)
Dead,Other,,Male,38,67.25,153,90,146,109,15,52,191,Desirable,High,Normal,Moderate (6-15)
Alive,,,Male,33,68.25,189,90,130,131,0,,247,High,High,Overweight,Non-smoker
Alive,,,Female,35,65.5,135,90,130,105,10,,174,Desirable,High,Normal,Moderate (6-15)
Dead,Other,,Male,39,68.75,181,72,128,126,20,59,187,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,50,65.75,126,85,135,98,20,72,245,High,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,54,65.5,144,110,215,113,0,60,310,High,High,Overweight,Non-smoker
Alive,,,Female,38,64.75,116,75,115,94,0,,229,Borderline,Optimal,Normal,Non-smoker
Alive,,,Male,36,65.5,181,80,120,138,15,,221,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,31,68.75,127,80,130,91,0,,178,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,56,60.5,132,94,166,121,0,,233,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,35,70.25,196,88,150,129,35,53,267,High,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,41,57.25,151,100,180,151,5,73,230,Borderline,High,Overweight,Light (1-5)
Alive,,71,Male,43,64.5,141,95,148,110,0,,225,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,46,63.25,127,84,124,106,10,64,200,Borderline,Normal,Normal,Moderate (6-15)
Dead,Unknown,,Male,50,65.5,194,120,220,148,0,78,220,Borderline,High,Overweight,Non-smoker
Alive,,,Female,38,64.25,121,70,120,98,0,,196,Desirable,Normal,Normal,Non-smoker
Alive,,52,Male,32,65,196,104,144,150,20,,230,Borderline,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,52,63.75,142,74,130,118,25,84,338,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,37,61.75,129,90,144,115,1,,217,Borderline,High,Overweight,Light (1-5)
Alive,,,Female,33,68,125,85,140,89,0,,197,Desirable,Normal,Underweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,52,62.75,144,94,144,124,15,78,362,High,High,Overweight,Moderate (6-15)
Alive,,,Male,55,68,176,94,156,122,25,,243,High,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,53,68.25,158,76,116,110,20,73,265,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,47,62.75,111,70,130,96,0,,259,High,Normal,Normal,Non-smoker
Alive,,,Female,42,58.25,98,90,150,95,10,,249,High,High,Normal,Moderate (6-15)
Dead,Other,56,Male,42,68.75,133,90,144,92,20,72,277,High,High,Normal,Heavy (16-25)
Alive,,,Female,47,63,149,80,120,124,10,,331,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,37,63,113,85,128,94,10,,206,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,32,61.5,104,76,110,93,1,,204,Borderline,Optimal,Normal,Light (1-5)
Alive,,,Female,41,63.25,131,80,130,109,5,,205,Borderline,Normal,Normal,Light (1-5)
Alive,,,Female,37,59.75,141,80,116,133,0,,205,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,39,60.25,131,74,110,120,20,,223,Borderline,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,45,66.75,127,90,130,96,0,,231,Borderline,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,35,63,191,95,135,159,0,55,163,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,38,Male,38,67,208,124,174,149,40,68,343,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,42,66.25,120,80,110,91,15,,255,High,Normal,Normal,Moderate (6-15)
Dead,Unknown,,Female,56,62.5,112,90,140,97,0,76,270,High,High,Normal,Non-smoker
Alive,,,Male,36,71.5,190,86,136,121,20,,212,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,41,66.5,123,76,140,93,20,,200,Borderline,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,70,Male,44,67.25,206,82,134,147,0,72,249,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,80,Male,50,68,155,85,125,108,0,82,205,Borderline,Normal,Normal,Non-smoker
Dead,Cancer,,Male,54,67,172,88,130,123,0,78,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,37,63,111,94,134,93,0,,175,Desirable,High,Normal,Non-smoker
Alive,,,Male,34,71.25,196,80,130,125,0,,255,High,Normal,Overweight,Non-smoker
Alive,,,Female,35,63.75,130,75,115,108,5,,153,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Female,50,58.25,166,110,220,161,0,,259,High,High,Overweight,Non-smoker
Alive,,,Male,34,69.75,154,84,126,104,20,,206,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,36,59.5,113,90,160,107,1,,245,High,High,Normal,Light (1-5)
Alive,,,Male,50,67.25,150,90,140,107,0,,292,High,High,Normal,Non-smoker
Alive,,,Female,39,63.25,155,80,120,129,15,,172,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Male,45,67,159,78,114,114,20,,256,High,Optimal,Overweight,Heavy (16-25)
Dead,Other,,Male,46,66,208,100,200,154,50,50,212,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,43,63.5,139,104,176,116,0,,234,Borderline,High,Overweight,Non-smoker
Alive,,,Female,31,62.25,114,76,120,98,15,,191,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,32,73.25,193,82,126,116,25,,166,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Other,,Male,48,69,136,75,130,92,20,60,198,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,34,60.25,130,78,120,119,15,,217,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Other,60,Male,32,72,168,84,126,104,5,64,186,Desirable,Normal,Normal,Light (1-5)
Alive,,,Female,56,67,138,50,90,101,5,,283,High,Optimal,Normal,Light (1-5)
Dead,Cancer,,Female,60,62.75,154,90,140,133,5,90,205,Borderline,High,Overweight,Light (1-5)
Alive,,,Male,35,68.5,171,100,158,119,30,,227,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Other,,Male,42,63,126,84,138,101,40,70,207,Borderline,Normal,Normal,Very Heavy (> 25)
Dead,Cancer,,Female,48,69.75,198,90,135,138,0,74,150,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,58,Male,50,71.5,184,95,148,117,30,60,273,High,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,78,Female,52,65,140,120,210,109,5,80,250,High,High,Normal,Light (1-5)
Alive,,66,Male,36,70.75,194,84,116,128,25,,266,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,45,59.5,159,90,148,150,0,,244,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,70,Male,56,63.25,193,90,150,154,0,74,183,Desirable,High,Overweight,Non-smoker
Alive,,,Female,34,63,118,80,132,98,10,,206,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Male,30,66,149,80,146,110,5,,192,Desirable,High,Overweight,Light (1-5)
Alive,,,Female,50,59.5,154,82,156,145,0,,170,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,48,63.25,134,75,105,112,0,70,158,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,51,64.5,150,70,110,117,5,,249,High,Optimal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,68,Female,54,64,217,130,240,175,0,72,333,High,High,Overweight,Non-smoker
Alive,,,Male,31,66.5,138,70,135,102,20,,230,Borderline,Normal,Normal,Heavy (16-25)
Dead,Other,,Female,39,62,136,90,140,117,10,55,197,Desirable,High,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,60,68,123,80,120,85,50,74,259,High,Normal,Underweight,Very Heavy (> 25)
Alive,,,Male,33,70.75,145,76,134,95,5,,251,High,Normal,Normal,Light (1-5)
Alive,,,Male,47,69,159,90,155,107,20,,249,High,High,Normal,Heavy (16-25)
Alive,,,Female,55,64,159,96,144,128,0,,232,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,56,68.25,136,90,130,94,20,88,217,Borderline,High,Normal,Heavy (16-25)
Alive,,,Male,32,70.25,199,80,136,131,20,,246,High,Normal,Overweight,Heavy (16-25)
Alive,,65,Female,41,64,135,84,130,109,0,,171,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,37,61.25,100,78,120,89,5,,189,Desirable,Normal,Underweight,Light (1-5)
Alive,,,Female,39,61,146,95,130,130,0,,200,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,40,69.5,164,90,136,111,40,58,285,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,33,63.75,132,80,120,110,20,,200,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,31,68,156,78,134,108,20,,177,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,34,62.25,136,85,135,117,20,,289,High,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,54,Male,50,70.5,190,90,130,125,20,60,192,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,50,63.5,134,90,160,112,5,,409,High,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,64,Male,52,63.25,157,105,175,126,15,74,233,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,33,56.5,95,68,90,98,0,,195,Desirable,Optimal,Normal,Non-smoker
Dead,Other,,Male,53,62.25,144,70,116,118,20,69,,,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,51,63.25,150,90,115,120,0,,270,High,High,Overweight,Non-smoker
Alive,,,Female,48,59,106,84,146,100,20,,295,High,High,Normal,Heavy (16-25)
Alive,,,Male,42,70,219,92,160,144,0,,184,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,53,Male,35,68.25,180,85,160,125,45,59,197,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Female,47,63.5,158,94,144,132,20,,211,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,47,67.5,179,90,150,128,0,75,259,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,52,67.25,152,94,144,109,20,66,300,High,High,Normal,Heavy (16-25)
Alive,,,Male,43,70.5,149,86,120,98,20,,230,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,56,63.75,128,110,210,107,10,,183,Desirable,High,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,74,Male,58,64.75,192,116,170,150,30,84,194,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,56,Male,40,72.5,195,88,140,121,15,58,219,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,55,Female,33,63.25,158,90,160,132,0,,224,Borderline,High,Overweight,Non-smoker
Alive,,,Female,51,59.25,163,75,145,154,0,,250,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,57,62,153,144,294,132,45,81,235,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,57,67,293,108,170,215,0,,242,High,High,Overweight,Non-smoker
Alive,,,Female,40,65,189,95,150,148,0,,220,Borderline,High,Overweight,Non-smoker
Alive,,58,Male,46,66.75,135,94,144,100,5,,243,High,High,Normal,Light (1-5)
Dead,Other,65,Female,51,59.5,182,124,190,172,40,83,260,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,36,69.25,187,85,118,126,0,,243,High,Normal,Overweight,Non-smoker
Alive,,,Male,34,66.25,167,100,146,124,0,,175,Desirable,High,Overweight,Non-smoker
Alive,,,Male,46,67.75,139,78,124,99,5,,207,Borderline,Normal,Normal,Light (1-5)
Alive,,,Female,32,65.25,163,80,132,127,0,,170,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,34,69,173,70,110,117,5,,212,Borderline,Optimal,Overweight,Light (1-5)
Alive,,,Female,33,63,129,80,120,108,0,,192,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,30,67.5,171,96,150,122,0,,160,Desirable,High,Overweight,Non-smoker
Alive,,,Female,33,67,148,100,150,109,0,,178,Desirable,High,Normal,Non-smoker
Alive,,,Male,42,67.25,196,74,110,140,0,,240,High,Optimal,Overweight,Non-smoker
Alive,,,Female,37,62,121,90,120,104,0,,244,High,High,Normal,Non-smoker
Alive,,,Female,39,61,114,100,160,102,15,,206,Borderline,High,Normal,Moderate (6-15)
Alive,,,Female,35,58,122,52,100,118,5,,178,Desirable,Optimal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,65,Female,59,59.5,119,106,216,112,20,77,212,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,33,70.5,147,82,120,97,20,,186,Desirable,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,53,Female,37,61.5,179,90,155,160,0,55,162,Desirable,High,Overweight,Non-smoker
Dead,Other,,Male,37,65.25,144,94,164,110,10,69,142,Desirable,High,Overweight,Moderate (6-15)
Dead,Cancer,,Female,33,61.5,114,86,130,102,10,59,220,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Male,37,71,158,74,124,101,20,,252,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,47,63.75,163,90,150,136,0,,200,Borderline,High,Overweight,Non-smoker
Alive,,70,Male,40,73.25,219,82,140,132,20,,318,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,60,68.25,171,90,150,119,30,,225,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Unknown,,Female,59,57.25,129,94,132,129,0,85,206,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,74,Male,56,65,138,75,125,105,0,82,263,High,Normal,Normal,Non-smoker
Alive,,,Female,47,67.5,131,70,136,96,5,,150,Desirable,Normal,Normal,Light (1-5)
Alive,,,Male,34,67.5,185,104,154,132,15,,237,Borderline,High,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,62,Male,42,68.25,203,94,136,141,30,64,239,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,38,62.25,122,76,110,105,0,,235,Borderline,Optimal,Normal,Non-smoker
Alive,,,Male,41,71.25,147,85,130,94,15,,185,Desirable,Normal,Normal,Moderate (6-15)
Dead,Other,,Female,52,59,111,80,130,105,10,84,240,High,Normal,Normal,Moderate (6-15)
Alive,,,Female,53,58.25,144,86,152,140,0,,284,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,71,Male,57,70,175,90,150,115,5,73,174,Desirable,High,Overweight,Light (1-5)
Alive,,,Male,38,67,156,84,136,111,20,,295,High,Normal,Overweight,Heavy (16-25)
Alive,,62,Female,36,59.5,122,85,130,115,15,,198,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Male,31,65.25,159,86,126,121,20,,220,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Other,,Female,49,63.25,118,80,105,98,30,75,170,Desirable,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,42,63,112,86,134,93,0,,227,Borderline,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,40,62.5,152,90,122,131,5,72,221,Borderline,High,Overweight,Light (1-5)
Dead,Other,,Male,39,65.25,130,80,110,99,20,45,175,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,33,67.5,151,110,180,111,5,,245,High,High,Overweight,Light (1-5)
Alive,,,Male,44,68,186,90,150,129,0,,287,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,45,63.25,118,76,122,98,10,67,230,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Male,31,72.75,156,70,110,97,0,,183,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,39,66.25,165,85,125,125,0,,215,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Female,42,58.5,147,100,160,143,0,64,260,High,High,Overweight,Non-smoker
Dead,Other,,Male,57,68.5,171,84,140,119,0,77,300,High,Normal,Overweight,Non-smoker
Alive,,,Female,44,64.5,116,74,130,94,15,,162,Desirable,Normal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,60,Male,50,65,177,110,175,135,0,62,220,Borderline,High,Overweight,Non-smoker
Alive,,59,Female,37,62.5,141,80,130,122,20,,213,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,50,Male,44,63.5,141,70,110,113,30,62,239,Borderline,Optimal,Overweight,Very Heavy (> 25)
Alive,,50,Male,40,67.5,182,88,140,130,35,,207,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Other,,Female,52,63.5,137,100,140,114,1,78,296,High,High,Overweight,Light (1-5)
Alive,,,Female,50,60,126,90,148,116,0,,172,Desirable,High,Overweight,Non-smoker
Alive,,,Female,40,64.75,137,90,135,110,0,,233,Borderline,High,Overweight,Non-smoker
Dead,Unknown,,Male,44,70.25,207,88,130,136,20,70,275,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,32,67.25,198,105,135,141,20,,313,High,High,Overweight,Heavy (16-25)
Alive,,,Male,33,69.5,188,80,118,127,20,,215,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,36,65.5,131,95,140,102,20,,148,Desirable,High,Normal,Heavy (16-25)
Alive,,,Male,37,70.75,180,80,120,118,0,,435,High,Normal,Overweight,Non-smoker
Dead,Other,,Male,55,68.25,228,110,160,158,0,81,217,Borderline,High,Overweight,Non-smoker
Alive,,,Male,36,70.5,244,95,135,161,0,,204,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,42,63,107,70,116,89,10,56,200,Borderline,Optimal,Underweight,Moderate (6-15)
Dead,Coronary Heart Disease,79,Male,55,68.25,171,96,136,119,0,83,240,High,High,Overweight,Non-smoker
Alive,,,Male,43,70,197,85,120,130,0,,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,31,65.5,147,60,110,115,0,,227,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,32,71.5,166,80,120,106,0,,200,Borderline,Normal,Normal,Non-smoker
Dead,Cancer,53,Male,33,70,175,70,170,115,40,57,265,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,43,69.5,186,90,154,126,20,,238,Borderline,High,Overweight,Heavy (16-25)
Alive,,63,Male,35,64.75,180,110,162,141,1,,250,High,High,Overweight,Light (1-5)
Alive,,,Female,37,62.75,117,80,118,101,20,,191,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,43,73,208,90,135,125,20,,209,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,35,66.5,148,70,110,112,5,,173,Desirable,Optimal,Overweight,Light (1-5)
Alive,,66,Male,42,72.25,210,95,135,130,20,,214,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,40,62,129,82,126,111,5,,205,Borderline,Normal,Overweight,Light (1-5)
Dead,Cancer,,Male,47,62.5,171,92,140,140,5,55,290,High,High,Overweight,Light (1-5)
Alive,,,Female,57,62.25,135,115,150,116,0,,280,High,High,Overweight,Non-smoker
Alive,,,Male,43,67.75,153,94,132,109,20,,249,High,High,Normal,Heavy (16-25)
Alive,,54,Male,46,64.25,190,112,160,148,5,,260,High,High,Overweight,Light (1-5)
Alive,,,Female,54,58.25,149,80,124,145,0,,242,High,Normal,Overweight,Non-smoker
Dead,Cancer,67,Female,49,63,159,90,135,133,10,71,295,High,High,Overweight,Moderate (6-15)
Dead,Cancer,,Male,53,67.25,156,82,118,111,20,69,215,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Other,75,Male,49,67.75,193,82,128,138,0,77,162,Desirable,Normal,Overweight,Non-smoker
Alive,,54,Male,32,70.75,160,80,130,105,20,,230,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,32,67.25,173,90,140,124,20,,228,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,31,72,175,100,160,109,0,,210,Borderline,High,Normal,Non-smoker
Dead,Other,,Female,59,61,133,86,126,119,0,85,240,High,Normal,Overweight,Non-smoker
Alive,,,Male,37,70.75,163,74,130,107,20,,215,Borderline,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,71,Female,43,68.25,145,80,135,104,10,73,206,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Male,43,73,182,80,130,110,0,,259,High,Normal,Overweight,Non-smoker
Alive,,,Male,32,69.5,140,70,125,95,0,,210,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,47,69.25,194,120,174,131,20,,262,High,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,70,Female,58,60.75,141,110,190,129,0,76,235,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,54,Male,54,69.25,176,75,128,119,0,68,276,High,Normal,Overweight,Non-smoker
Dead,Other,,Male,34,64,182,120,158,142,0,48,235,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,33,Male,31,62,176,94,136,144,15,37,223,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,47,67.5,181,95,155,133,0,,236,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,49,69.5,182,80,140,123,0,79,230,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,45,60.75,137,94,156,126,0,,190,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,72,Female,54,65.5,126,76,142,98,20,74,324,High,High,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,56,70,162,80,125,107,20,84,220,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,51,58.5,92,98,160,89,15,,343,High,High,Underweight,Moderate (6-15)
Alive,,,Male,44,76,169,70,102,93,5,,205,Borderline,Optimal,Normal,Light (1-5)
Alive,,,Female,36,60,118,80,110,108,5,,245,High,Normal,Normal,Light (1-5)
Alive,,,Male,39,68,200,102,150,139,0,,187,Desirable,High,Overweight,Non-smoker
Alive,,72,Female,58,60.25,189,105,165,173,0,,233,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,36,63.75,300,108,182,250,20,54,215,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,34,72.25,159,84,124,99,0,,199,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,33,66,135,75,125,102,0,,167,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,45,65,143,86,136,112,20,,210,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,55,64,183,85,140,148,0,,202,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,67,Male,49,70.5,171,96,134,113,0,69,225,Borderline,High,Overweight,Non-smoker
Alive,,,Female,35,62.25,127,88,120,109,10,,233,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,48,62.5,175,115,150,151,0,,237,Borderline,High,Overweight,Non-smoker
Alive,,,Male,33,67,162,92,126,116,30,,227,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,51,58,131,82,144,127,0,,276,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,53,65.5,147,88,155,112,30,77,153,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Male,38,71.5,171,80,116,109,20,,177,Desirable,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,56,62.75,125,90,160,108,0,76,246,High,High,Normal,Non-smoker
Alive,,,Female,46,64,137,80,120,110,20,,232,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,34,66.5,149,85,130,113,0,,160,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,70,Female,54,68.25,203,116,220,145,0,78,382,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,60,68.25,168,90,154,117,0,72,190,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Female,53,58,137,125,225,133,0,75,250,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,57,61.5,143,66,120,120,0,83,206,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,87,Male,57,64.5,147,78,120,115,0,89,254,High,Normal,Overweight,Non-smoker
Alive,,,Male,32,67,177,80,130,126,30,,207,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,55,60.25,135,86,130,124,0,79,324,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,57,65.25,157,75,130,120,20,65,96,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,54,Male,44,67,136,78,126,97,20,58,195,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,35,66.5,128,92,130,97,0,,206,Borderline,High,Normal,Non-smoker
Dead,Other,,Female,42,60.75,130,90,136,119,20,64,143,Desirable,High,Overweight,Heavy (16-25)
Dead,Other,,Male,51,69.5,155,84,134,105,20,79,198,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,45,63.25,130,70,130,108,5,,182,Desirable,Normal,Normal,Light (1-5)
Alive,,61,Female,43,56.5,122,76,112,126,0,,245,High,Optimal,Overweight,Non-smoker
Alive,,,Male,34,71.25,167,100,130,106,0,,217,Borderline,High,Normal,Non-smoker
Alive,,,Male,42,68.25,113,80,110,78,20,,203,Borderline,Normal,Underweight,Heavy (16-25)
Dead,Unknown,,Female,34,64.25,140,90,132,113,15,58,220,Borderline,High,Overweight,Moderate (6-15)
Dead,Other,,Male,38,68.75,135,88,124,94,20,56,220,Borderline,Normal,Normal,Heavy (16-25)
Alive,,61,Female,43,62.25,153,100,144,132,0,,185,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,74,Male,46,67.75,149,90,144,106,30,76,183,Desirable,High,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,65,Male,37,71,138,80,120,88,15,67,218,Borderline,Normal,Underweight,Moderate (6-15)
Alive,,,Female,52,59,103,86,148,97,0,,225,Borderline,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Male,62,63.5,148,70,110,118,15,76,175,Desirable,Optimal,Overweight,Moderate (6-15)
Dead,Cancer,,Male,57,68,144,75,110,100,0,89,300,High,Optimal,Normal,Non-smoker
Dead,Cancer,,Male,37,69.5,142,84,132,96,25,43,155,Desirable,Normal,Normal,Heavy (16-25)
Dead,Other,,Male,52,64.5,134,80,130,105,20,76,172,Desirable,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,63,Male,39,69.75,193,88,140,130,0,65,212,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,38,67.75,175,80,120,125,20,68,244,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,34,69,160,76,126,108,10,,143,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,54,61.25,135,90,146,121,0,,220,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,52,66.5,195,80,155,144,20,58,283,High,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,49,Male,31,69.25,179,94,166,121,40,51,270,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,40,59,123,80,136,116,0,,250,High,Normal,Overweight,Non-smoker
Alive,,,Male,43,64.25,149,85,140,116,20,,224,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Other,,Female,54,63.75,104,68,110,87,35,66,235,Borderline,Optimal,Underweight,Very Heavy (> 25)
Dead,Other,49,Male,47,69.5,183,108,170,124,20,69,224,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,33,60.25,136,105,145,125,0,,186,Desirable,High,Overweight,Non-smoker
Alive,,,Male,34,72.5,215,102,144,134,20,,253,High,High,Overweight,Heavy (16-25)
Alive,,,Female,35,62.5,111,70,126,96,25,,200,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,34,67.25,144,70,124,103,0,,210,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,49,65,154,95,138,120,30,,265,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,52,63.75,188,96,164,157,0,,270,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,53,72,212,102,158,132,0,75,275,High,High,Overweight,Non-smoker
Alive,,,Female,36,58.5,114,90,130,111,5,,203,Borderline,High,Overweight,Light (1-5)
Alive,,,Male,36,64.25,139,80,126,109,10,,193,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,45,62.25,123,70,122,106,0,,170,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,46,66.5,165,90,140,122,0,,185,Desirable,High,Overweight,Non-smoker
Alive,,,Male,31,69,173,72,118,117,20,,220,Borderline,Optimal,Overweight,Heavy (16-25)
Dead,Other,,Female,37,62.25,123,85,132,106,10,67,205,Borderline,Normal,Normal,Moderate (6-15)
Alive,,55,Female,45,61.25,128,72,114,114,10,,250,High,Optimal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,45,Male,41,64,148,100,138,116,10,55,185,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Male,35,72,215,90,138,134,35,,259,High,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,33,63.5,128,70,112,107,5,59,195,Desirable,Optimal,Normal,Light (1-5)
Alive,,49,Male,39,71.25,161,85,145,103,20,,214,Borderline,High,Normal,Heavy (16-25)
Dead,Cancer,,Female,50,63.75,197,106,174,164,0,60,300,High,High,Overweight,Non-smoker
Alive,,,Female,43,63.25,141,80,124,118,0,,230,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,45,67.25,142,95,155,101,20,,230,Borderline,High,Normal,Heavy (16-25)
Dead,Other,,Female,41,64.25,182,84,134,147,1,67,191,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Male,35,67.75,149,78,140,106,20,,130,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,40,61.25,136,90,135,121,0,,206,Borderline,High,Overweight,Non-smoker
Alive,,,Male,38,68.25,173,80,128,120,0,,226,Borderline,Normal,Overweight,Non-smoker
Dead,Other,63,Female,59,59.5,194,100,170,183,0,79,223,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,70,Female,50,64,129,140,236,104,5,72,264,High,High,Normal,Light (1-5)
Alive,,42,Male,42,69.5,178,80,124,120,40,,241,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,34,71.5,169,85,150,108,20,,210,Borderline,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,63,Male,51,67.75,151,82,140,108,30,65,178,Desirable,Normal,Normal,Very Heavy (> 25)
Alive,,72,Female,58,58,127,120,180,123,0,,346,High,High,Overweight,Non-smoker
Alive,,,Female,35,63,111,80,124,93,0,,191,Desirable,Normal,Normal,Non-smoker
Dead,Unknown,,Female,60,64.75,132,80,130,106,20,92,260,High,Normal,Normal,Heavy (16-25)
Dead,Unknown,63,Female,47,62.5,125,88,146,108,15,79,291,High,High,Normal,Moderate (6-15)
Alive,,,Male,37,67.75,180,120,160,129,20,,175,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Male,40,64.5,112,84,140,88,20,,228,Borderline,Normal,Underweight,Heavy (16-25)
Dead,Coronary Heart Disease,81,Female,51,60,112,76,120,103,5,83,228,Borderline,Normal,Normal,Light (1-5)
Alive,,,Female,33,61,107,84,130,96,0,,217,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,34,63,111,70,110,93,0,,183,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,40,66.5,171,90,136,127,0,,186,Desirable,High,Overweight,Non-smoker
Alive,,,Female,35,64.5,232,100,170,187,0,,200,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,52,70.5,181,120,175,119,0,82,268,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,40,70,191,106,140,126,0,68,261,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,39,65.5,137,80,120,105,25,51,210,Borderline,Normal,Normal,Heavy (16-25)
Dead,Other,,Male,32,65.5,127,90,120,97,20,42,206,Borderline,High,Normal,Heavy (16-25)
Dead,Unknown,,Male,59,65,144,80,125,110,5,87,199,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Male,31,68.25,141,84,132,98,20,,175,Desirable,Normal,Normal,Heavy (16-25)
Dead,Cancer,56,Male,48,66,181,92,146,134,20,74,218,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,34,62.75,122,70,110,105,15,54,177,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Male,34,66,180,98,140,133,10,,420,High,High,Overweight,Moderate (6-15)
Alive,,,Female,31,61.5,130,74,126,116,0,,172,Desirable,Normal,Overweight,Non-smoker
Alive,,46,Male,32,65.25,158,105,160,121,20,,230,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,40,70.5,142,80,112,96,10,,200,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Male,43,72,179,80,130,111,20,,219,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,56,Male,38,68,182,100,150,126,0,,184,Desirable,High,Overweight,Non-smoker
Alive,,,Female,43,62.75,129,70,110,111,20,,295,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,43,65.25,134,88,156,102,0,,210,Borderline,High,Normal,Non-smoker
Alive,,,Female,34,61,111,90,130,99,20,,225,Borderline,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,40,Male,36,70.5,190,100,140,125,60,54,362,High,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,42,69.25,197,120,210,133,20,64,228,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,36,68.25,141,95,130,98,15,,200,Borderline,High,Normal,Moderate (6-15)
Alive,,,Male,32,72,175,80,130,109,0,,151,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,32,61,,70,116,,40,,198,Desirable,Optimal,,Very Heavy (> 25)
Alive,,,Female,32,67.25,143,85,140,105,5,,167,Desirable,Normal,Normal,Light (1-5)
Alive,,,Male,35,71.5,164,80,120,104,20,,220,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,34,64.75,176,90,150,142,10,62,217,Borderline,High,Overweight,Moderate (6-15)
Alive,,84,Female,56,60.25,136,82,126,125,0,,306,High,Normal,Overweight,Non-smoker
Alive,,,Male,51,65,158,90,144,121,1,,252,High,High,Overweight,Light (1-5)
Alive,,,Male,44,69.5,188,95,148,127,0,,243,High,High,Overweight,Non-smoker
Alive,,,Female,36,66.25,130,70,128,98,0,,206,Borderline,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,56,61,171,105,175,153,0,82,274,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,56,Female,36,62.5,145,104,154,125,0,58,240,High,High,Overweight,Non-smoker
Dead,Other,,Female,55,60.75,154,96,152,141,0,87,290,High,High,Overweight,Non-smoker
Alive,,,Female,36,61.5,152,88,138,136,1,,225,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Male,37,68.5,135,82,118,94,20,,167,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,42,59.75,126,80,128,119,0,,175,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,50,65.25,168,98,130,128,15,,295,High,High,Overweight,Moderate (6-15)
Alive,,,Male,36,68.75,146,86,128,101,0,,215,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,43,65,156,95,135,119,1,,192,Desirable,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,53,Male,53,64.5,143,78,122,112,25,77,295,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,36,68.5,137,68,138,95,25,,170,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,43,63.75,162,100,145,135,5,,215,Borderline,High,Overweight,Light (1-5)
Dead,Other,,Male,58,71.75,163,76,108,104,20,84,239,Borderline,Optimal,Normal,Heavy (16-25)
Dead,Cancer,,Female,56,59.5,123,100,190,116,5,78,280,High,High,Overweight,Light (1-5)
Dead,Cancer,,Male,60,64.5,179,86,150,140,0,78,217,Borderline,High,Overweight,Non-smoker
Alive,,,Female,34,62,115,80,134,99,25,,200,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,48,62,207,116,160,178,1,,270,High,High,Overweight,Light (1-5)
Dead,Cancer,,Male,56,67.75,155,100,138,111,20,68,179,Desirable,High,Overweight,Heavy (16-25)
Alive,,82,Female,52,59.75,112,68,96,106,0,,245,High,Optimal,Normal,Non-smoker
Alive,,,Female,43,65.5,108,75,120,84,15,,270,High,Normal,Underweight,Moderate (6-15)
Alive,,,Male,40,72.25,141,80,130,88,25,,260,High,Normal,Underweight,Heavy (16-25)
Alive,,,Male,44,70,178,100,170,117,0,,215,Borderline,High,Overweight,Non-smoker
Alive,,,Male,36,69,176,90,136,119,10,,262,High,High,Overweight,Moderate (6-15)
Alive,,,Female,40,66.75,118,80,101,89,20,,210,Borderline,Normal,Underweight,Heavy (16-25)
Alive,,,Male,41,68,138,76,108,96,50,,215,Borderline,Optimal,Normal,Very Heavy (> 25)
Alive,,,Female,36,64,122,80,130,98,0,,187,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,31,70.25,157,84,126,103,20,,225,Borderline,Normal,Normal,Heavy (16-25)
Dead,Unknown,,Male,58,66,165,80,136,122,0,84,190,Desirable,Normal,Overweight,Non-smoker
Dead,Other,,Female,60,53.75,119,100,190,135,0,76,250,High,High,Overweight,Non-smoker
Alive,,,Female,39,66,136,86,122,103,5,,271,High,Normal,Normal,Light (1-5)
Alive,,,Female,32,66.5,145,74,130,110,15,,180,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Male,34,70,186,82,148,122,0,,200,Borderline,High,Overweight,Non-smoker
Alive,,,Male,43,71,188,90,126,120,25,,236,Borderline,High,Overweight,Heavy (16-25)
Dead,Other,,Male,52,66,228,98,140,169,20,56,155,Desirable,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,46,63,135,106,180,113,25,76,271,High,High,Overweight,Heavy (16-25)
Alive,,63,Male,43,68.25,203,90,140,141,15,,248,High,High,Overweight,Moderate (6-15)
Alive,,53,Female,43,65,221,94,136,173,0,,290,High,High,Overweight,Non-smoker
Alive,,,Female,36,61.5,167,80,140,149,20,,170,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,42,63.5,113,80,120,94,5,,210,Borderline,Normal,Normal,Light (1-5)
Dead,Coronary Heart Disease,50,Female,36,66.5,158,98,135,120,20,52,268,High,High,Overweight,Heavy (16-25)
Dead,Other,,Female,40,64.25,144,76,110,116,20,54,245,High,Optimal,Overweight,Heavy (16-25)
Dead,Other,,Male,32,66,187,90,150,139,25,56,232,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,36,67.5,209,90,128,149,20,,230,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,48,68,190,102,154,132,0,,245,High,High,Overweight,Non-smoker
Alive,,,Female,33,60,215,88,140,197,20,,266,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,37,67.25,172,76,114,123,15,,273,High,Optimal,Overweight,Moderate (6-15)
Alive,,,Male,32,65.75,165,86,150,126,30,,283,High,High,Overweight,Very Heavy (> 25)
Dead,Other,,Male,59,63.75,172,90,150,138,0,85,226,Borderline,High,Overweight,Non-smoker
Alive,,,Female,39,62.75,155,98,144,134,20,,270,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,53,69.25,183,90,160,124,20,71,318,High,High,Overweight,Heavy (16-25)
Alive,,,Male,42,67.25,127,80,115,91,20,,271,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,31,67.75,140,68,120,103,5,,222,Borderline,Normal,Normal,Light (1-5)
Alive,,,Male,32,72.5,165,80,116,102,25,,170,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,43,62.25,139,68,112,120,30,,200,Borderline,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Female,51,66,166,94,140,126,0,,223,Borderline,High,Overweight,Non-smoker
Alive,,,Female,39,65.75,134,80,120,105,10,,213,Borderline,Normal,Normal,Moderate (6-15)
Alive,,65,Female,35,62.5,130,76,116,112,5,,200,Borderline,Optimal,Overweight,Light (1-5)
Alive,,,Female,40,58.75,141,84,126,137,0,,286,High,Normal,Overweight,Non-smoker
Alive,,,Male,42,64.75,158,80,125,123,20,,232,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,44,67.25,174,74,112,124,0,,249,High,Optimal,Overweight,Non-smoker
Alive,,58,Male,48,66.5,148,85,155,110,20,,214,Borderline,High,Overweight,Heavy (16-25)
Alive,,73,Female,47,61.25,140,86,132,125,0,,280,High,Normal,Overweight,Non-smoker
Alive,,63,Female,45,61.25,136,90,150,121,0,,254,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,32,72,202,78,120,125,20,64,224,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,35,63.75,142,90,136,114,0,,151,Desirable,High,Overweight,Non-smoker
Alive,,,Female,31,61,110,80,130,98,0,,242,High,Normal,Normal,Non-smoker
Alive,,84,Female,54,65,148,86,126,116,5,,265,High,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,72,Male,56,68.75,188,100,158,131,0,84,285,High,High,Overweight,Non-smoker
Alive,,,Female,33,64.75,122,78,118,98,20,,182,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,55,Male,47,65.25,161,78,115,123,25,77,283,High,Optimal,Overweight,Heavy (16-25)
Dead,Cancer,48,Male,48,65.5,166,100,154,127,25,80,289,High,High,Overweight,Heavy (16-25)
Alive,,73,Female,43,65,179,98,150,140,0,,245,High,High,Overweight,Non-smoker
Alive,,59,Female,41,63.5,115,116,172,96,0,,165,Desirable,High,Normal,Non-smoker
Alive,,,Male,52,71,159,68,110,101,15,,170,Desirable,Optimal,Normal,Moderate (6-15)
Dead,Unknown,59,Male,43,67.75,180,112,180,129,15,67,245,High,High,Overweight,Moderate (6-15)
Alive,,,Female,42,61,117,90,148,104,0,,225,Borderline,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,61,Male,45,63.5,124,110,180,99,20,69,260,High,High,Normal,Heavy (16-25)
Alive,,,Male,37,66.75,212,92,126,157,20,,288,High,High,Overweight,Heavy (16-25)
Alive,,,Female,34,63.25,137,70,110,114,5,,150,Desirable,Optimal,Overweight,Light (1-5)
Dead,Other,,Male,51,70.75,157,80,140,103,40,67,180,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Cancer,,Female,41,64.5,141,72,114,114,5,69,210,Borderline,Optimal,Overweight,Light (1-5)
Alive,,,Female,56,61.75,165,86,140,147,0,,209,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,35,62.25,98,76,120,84,0,,195,Desirable,Normal,Underweight,Non-smoker
Alive,,,Female,42,64.75,124,75,118,100,20,,230,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Female,41,67,134,86,110,99,10,,240,High,Normal,Normal,Moderate (6-15)
Alive,,,Female,31,64.5,110,70,110,89,5,,155,Desirable,Optimal,Underweight,Light (1-5)
Alive,,46,Male,34,68.5,145,86,150,101,20,,231,Borderline,High,Normal,Heavy (16-25)
Alive,,,Female,43,63.5,156,110,150,130,10,,189,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Male,45,71,157,85,142,100,10,,255,High,High,Normal,Moderate (6-15)
Alive,,,Male,58,65.5,157,80,115,120,0,,189,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,35,61.5,168,94,136,150,0,,274,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,42,66,188,96,172,139,40,74,192,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,60,Male,56,70.5,229,126,216,151,15,66,309,High,High,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,32,65,155,140,250,118,40,36,221,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,42,62.25,183,106,160,158,0,,255,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,39,65,118,80,140,92,20,57,188,Desirable,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,56,Female,56,62.5,211,120,194,182,0,70,231,Borderline,High,Overweight,Non-smoker
Alive,,,Female,42,65.75,133,74,126,104,0,,175,Desirable,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,84,Male,60,64.25,222,105,190,173,0,86,200,Borderline,High,Overweight,Non-smoker
Alive,,,Male,36,63,186,80,126,149,0,,282,High,Normal,Overweight,Non-smoker
Alive,,,Female,31,62,125,88,136,108,20,,206,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,36,66.5,159,90,132,118,0,,215,Borderline,High,Overweight,Non-smoker
Dead,Unknown,,Female,45,63.25,137,105,185,114,20,65,368,High,High,Overweight,Heavy (16-25)
Alive,,,Male,47,65.75,137,84,136,105,0,,197,Desirable,Normal,Normal,Non-smoker
Dead,Cancer,,Male,44,66.25,154,88,136,114,15,56,225,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,33,60.5,123,70,115,113,0,,197,Desirable,Optimal,Overweight,Non-smoker
Dead,Other,,Female,56,61.5,132,95,130,118,1,76,329,High,High,Overweight,Light (1-5)
Alive,,,Male,31,72,208,100,146,129,0,,225,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,56,Male,34,68.75,130,82,140,90,5,62,270,High,Normal,Underweight,Light (1-5)
Dead,Cancer,,Male,32,69.25,208,85,135,141,20,54,280,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,74,Female,54,60.5,160,102,186,147,10,76,279,High,High,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,74,Male,48,67,151,85,145,108,30,80,199,Desirable,High,Normal,Very Heavy (> 25)
Alive,,,Female,41,64,125,90,140,101,15,,190,Desirable,High,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,59,Male,49,65.75,199,102,226,152,0,61,272,High,High,Overweight,Non-smoker
Dead,Cancer,58,Male,50,67,179,98,135,128,20,80,268,High,High,Overweight,Heavy (16-25)
Alive,,,Male,48,63.25,136,100,160,109,1,,217,Borderline,High,Normal,Light (1-5)
Alive,,64,Male,40,67.25,148,84,140,106,20,,206,Borderline,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,69,Male,61,66.5,186,112,276,138,0,71,245,High,High,Overweight,Non-smoker
Alive,,66,Male,40,64.5,161,94,136,126,25,,250,High,High,Overweight,Heavy (16-25)
Alive,,,Female,39,63,145,80,110,121,1,,254,High,Normal,Overweight,Light (1-5)
Alive,,,Female,41,63,138,95,140,115,0,,205,Borderline,High,Overweight,Non-smoker
Alive,,,Male,48,66,170,84,146,126,20,,220,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,49,58,131,100,160,127,0,,282,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,36,61.5,127,68,106,113,10,52,240,High,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,42,65,153,90,154,120,20,,223,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,45,64,172,104,140,139,0,,189,Desirable,High,Overweight,Non-smoker
Alive,,,Male,37,64.75,152,90,140,119,5,,244,High,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,55,66.75,174,110,246,129,25,61,242,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,58,60.25,115,90,140,106,0,86,246,High,High,Normal,Non-smoker
Alive,,,Female,38,62,172,90,120,148,15,,220,Borderline,High,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,61,Male,39,67.5,165,90,130,118,15,71,300,High,High,Overweight,Moderate (6-15)
Alive,,,Female,38,66.5,132,80,120,100,15,,180,Desirable,Normal,Normal,Moderate (6-15)
Alive,,60,Female,36,62.5,125,90,140,108,0,,243,High,High,Normal,Non-smoker
Alive,,,Female,33,64.25,98,80,130,79,0,,203,Borderline,Normal,Underweight,Non-smoker
Alive,,,Female,32,62,121,80,124,104,15,,198,Desirable,Normal,Normal,Moderate (6-15)
Dead,Other,,Female,47,60,238,100,180,218,0,53,,,High,Overweight,Non-smoker
Alive,,,Male,50,65.5,173,108,160,132,15,,300,High,High,Overweight,Moderate (6-15)
Dead,Cancer,,Female,58,60.75,149,90,146,137,0,78,221,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,34,62.25,113,80,120,97,5,66,220,Borderline,Normal,Normal,Light (1-5)
Alive,,,Female,51,59.5,122,88,140,115,0,,188,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,69,Male,53,69.5,178,80,130,120,30,79,205,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,48,61.75,138,100,162,123,0,76,334,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,58,64,139,86,170,112,0,76,250,High,High,Overweight,Non-smoker
Alive,,78,Female,54,63.5,184,100,182,153,0,,240,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,57,65,186,84,134,142,0,83,252,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,60,Male,60,67,178,90,160,127,20,66,280,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,60,61.5,185,110,196,165,0,70,236,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,35,62.5,140,85,140,121,1,67,224,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Male,37,65.5,179,88,138,137,0,,312,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,38,61.5,125,82,120,112,15,52,205,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Male,48,64.5,153,80,126,120,20,,230,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,54,Male,40,69,175,90,140,118,15,,236,Borderline,High,Overweight,Moderate (6-15)
Dead,Other,,Male,44,69.5,158,80,136,107,20,58,208,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,42,73,204,100,160,123,15,,224,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Male,36,68,168,85,140,117,0,,159,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,41,61,110,76,114,98,0,,217,Borderline,Optimal,Normal,Non-smoker
Alive,,65,Male,41,68.5,187,90,128,130,0,,243,High,High,Overweight,Non-smoker
Alive,,,Female,48,62,150,90,135,129,10,,265,High,High,Overweight,Moderate (6-15)
Alive,,,Male,53,67.75,156,96,160,111,0,,164,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Female,39,62.5,133,90,150,115,20,71,202,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,62,Male,36,71,195,100,160,124,0,68,256,High,High,Overweight,Non-smoker
Alive,,,Male,34,72,181,85,145,112,0,,260,High,High,Overweight,Non-smoker
Alive,,,Female,32,61,124,70,114,111,0,,186,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,31,66,147,70,136,109,15,,200,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Female,36,66.25,123,85,145,93,0,,157,Desirable,High,Normal,Non-smoker
Alive,,76,Male,46,64.75,122,74,136,95,20,,240,High,Normal,Normal,Heavy (16-25)
Alive,,,Male,36,71,180,85,145,115,30,,222,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,37,60.5,118,64,110,108,15,,217,Borderline,Optimal,Normal,Moderate (6-15)
Dead,Cancer,,Male,35,68.5,226,100,170,157,40,65,253,High,High,Overweight,Very Heavy (> 25)
Dead,Other,,Female,56,59,129,140,205,122,0,88,230,Borderline,High,Overweight,Non-smoker
Alive,,,Female,35,63,140,76,116,117,0,,173,Desirable,Optimal,Overweight,Non-smoker
Alive,,85,Female,55,61.5,150,100,156,134,0,,231,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,41,68.5,189,90,145,131,30,69,260,High,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,58,62.5,145,114,236,125,0,90,238,Borderline,High,Overweight,Non-smoker
Alive,,,Male,44,71.25,189,115,170,120,0,,216,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,59,63.75,126,104,180,101,20,73,205,Borderline,High,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,65,Male,41,68.5,168,80,136,117,20,73,271,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,45,62.5,148,86,136,128,0,,236,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,32,64.5,150,84,118,121,20,,190,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,35,62.5,159,80,140,137,5,,276,High,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,51,Male,51,69,239,122,228,161,40,61,226,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,71,Female,43,62.5,151,80,130,130,0,,194,Desirable,Normal,Overweight,Non-smoker
Alive,,64,Female,38,62.75,192,84,140,166,5,,216,Borderline,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,64,Male,50,67,159,115,174,114,0,70,180,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,72,Female,60,63,170,90,160,142,0,84,262,High,High,Overweight,Non-smoker
Alive,,,Female,49,62.5,133,90,150,115,0,,232,Borderline,High,Overweight,Non-smoker
Dead,Unknown,,Male,54,67.75,167,76,110,119,20,80,258,High,Optimal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,54,Male,40,68,200,75,115,139,10,66,284,High,Optimal,Overweight,Moderate (6-15)
Dead,Cancer,,Female,56,61.75,162,80,130,145,0,68,230,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,36,64.75,112,90,140,90,0,,140,Desirable,High,Underweight,Non-smoker
Alive,,,Female,44,63.25,229,95,155,191,0,,167,Desirable,High,Overweight,Non-smoker
Alive,,,Male,49,67.25,117,94,160,84,20,,223,Borderline,High,Underweight,Heavy (16-25)
Alive,,60,Male,34,71,142,56,122,90,15,,228,Borderline,Normal,Underweight,Moderate (6-15)
Alive,,,Female,38,64.5,163,94,150,131,5,,246,High,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,58,Male,40,64,151,80,135,118,20,60,240,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,73,Female,51,60.5,127,98,142,117,0,75,291,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,51,64.5,161,105,160,126,20,81,266,High,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,51,Female,51,63.75,154,130,250,128,0,81,305,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,50,Female,44,60.5,120,76,118,110,10,76,,,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,50,61,111,78,130,99,0,,190,Desirable,Normal,Normal,Non-smoker
Dead,Cancer,,Male,58,64.25,144,80,126,113,40,68,215,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,32,59,98,76,120,92,0,,150,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,38,59.5,154,96,156,145,0,,198,Desirable,High,Overweight,Non-smoker
Alive,,69,Female,41,61,118,90,138,105,0,,238,Borderline,High,Normal,Non-smoker
Alive,,57,Male,47,65.75,170,96,156,130,30,,245,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,34,65.5,170,90,140,130,20,,230,Borderline,High,Overweight,Heavy (16-25)
Alive,,67,Female,49,65,157,85,145,123,20,,210,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,64,Male,50,67.5,184,88,134,131,0,72,183,Desirable,Normal,Overweight,Non-smoker
Dead,Unknown,,Female,52,62.25,134,70,130,116,0,74,284,High,Normal,Overweight,Non-smoker
Dead,Other,,Female,54,64.5,134,70,130,108,15,78,274,High,Normal,Normal,Moderate (6-15)
Alive,,,Male,34,69.5,194,95,128,131,20,,115,Desirable,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,47,Male,35,69.25,155,100,170,105,30,65,243,High,High,Normal,Very Heavy (> 25)
Alive,,,Female,45,58,132,75,125,128,0,,204,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,78,Male,58,62.5,118,80,130,97,20,80,190,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,36,64.5,147,84,132,119,35,,214,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,40,71,196,80,140,125,20,,195,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,37,65.5,137,80,130,107,5,,203,Borderline,Normal,Normal,Light (1-5)
Alive,,,Male,37,70,152,100,145,100,30,,217,Borderline,High,Normal,Very Heavy (> 25)
Alive,,,Female,31,59,126,80,128,119,0,,295,High,Normal,Overweight,Non-smoker
Alive,,,Male,32,66,137,90,150,101,0,,167,Desirable,High,Normal,Non-smoker
Alive,,58,Male,32,70.25,169,75,110,111,30,,215,Borderline,Optimal,Overweight,Very Heavy (> 25)
Alive,,76,Male,48,70,204,90,118,134,0,,225,Borderline,High,Overweight,Non-smoker
Alive,,64,Female,56,60.25,124,86,130,114,0,,258,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,59,Male,55,70,160,85,140,105,30,61,300,High,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,41,58,165,80,125,160,0,,261,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,62,Male,60,67.5,213,90,150,152,0,84,145,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,78,Female,58,59.25,175,90,140,165,0,80,197,Desirable,High,Overweight,Non-smoker
Alive,,,Female,51,62,136,80,110,117,0,,242,High,Normal,Overweight,Non-smoker
Alive,,,Female,34,64,152,85,135,123,20,,268,High,Normal,Overweight,Heavy (16-25)
Dead,Unknown,,Male,57,64.75,132,78,156,103,5,87,285,High,High,Normal,Light (1-5)
Alive,,,Male,31,67.25,166,85,135,119,20,,230,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,52,59,111,85,125,105,30,64,306,High,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,37,57,92,70,110,92,0,,220,Borderline,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,55,Male,45,61.5,148,85,140,124,20,73,256,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,72,Male,46,68.5,206,102,150,143,50,74,267,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,40,70.25,188,90,132,124,25,,210,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,45,64,218,100,160,176,0,,179,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,69,Male,59,67.25,179,130,200,128,0,77,228,Borderline,High,Overweight,Non-smoker
Dead,Unknown,,Male,33,67.5,189,105,138,135,30,53,295,High,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,38,57,113,110,180,113,5,52,170,Desirable,High,Overweight,Light (1-5)
Alive,,59,Female,45,62.25,142,86,134,122,20,,255,High,Normal,Overweight,Heavy (16-25)
Alive,,78,Female,58,63.5,199,120,180,166,0,,208,Borderline,High,Overweight,Non-smoker
Alive,,,Female,47,63.75,133,100,154,111,0,,265,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,68,Male,52,72,182,95,150,113,30,70,209,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,41,67,176,80,144,126,20,53,234,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,38,62,107,74,126,92,5,,163,Desirable,Normal,Normal,Light (1-5)
Alive,,,Male,40,68,177,100,144,123,0,,233,Borderline,High,Overweight,Non-smoker
Alive,,,Female,45,59.5,113,115,250,107,0,,210,Borderline,High,Normal,Non-smoker
Dead,Other,,Female,48,67.5,197,84,165,145,20,66,215,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,44,66,162,85,140,120,0,,163,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,33,72.5,169,96,145,105,0,,241,High,High,Normal,Non-smoker
Alive,,,Female,37,64,117,90,114,94,20,,173,Desirable,High,Normal,Heavy (16-25)
Alive,,,Female,34,59.5,90,70,130,85,20,,167,Desirable,Normal,Underweight,Heavy (16-25)
Dead,Other,,Male,33,69,142,85,125,96,30,45,145,Desirable,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,41,64.5,144,70,120,116,0,,205,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,45,62,182,80,112,157,0,,346,High,Normal,Overweight,Non-smoker
Dead,Other,,Female,47,60.5,158,110,190,145,0,57,225,Borderline,High,Overweight,Non-smoker
Alive,,,Female,31,63.5,127,74,122,106,10,,240,High,Normal,Normal,Moderate (6-15)
Alive,,,Male,35,63.5,159,80,120,127,20,,215,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,35,64,130,72,114,105,40,,192,Desirable,Optimal,Normal,Very Heavy (> 25)
Alive,,,Female,44,63.5,146,120,170,122,0,,185,Desirable,High,Overweight,Non-smoker
Alive,,,Male,51,66.25,164,90,140,121,20,,180,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Male,51,63.5,168,106,158,134,20,,260,High,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,78,Female,50,58.5,134,85,144,130,0,80,210,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,52,65.5,164,80,110,125,20,78,205,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,69,Female,41,62.5,194,94,124,167,5,71,231,Borderline,High,Overweight,Light (1-5)
Alive,,53,Male,35,67.5,166,80,130,119,30,,241,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,34,65.75,214,70,140,163,20,,224,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,42,59.5,99,80,122,93,20,,230,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,34,68,174,80,140,121,30,,210,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,63,Female,57,58.75,151,90,170,147,0,73,306,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,52,Female,34,62.25,128,96,150,110,0,54,190,Desirable,High,Overweight,Non-smoker
Alive,,,Female,34,64,123,115,195,99,0,,180,Desirable,High,Normal,Non-smoker
Alive,,,Male,36,73.5,199,60,116,120,20,,147,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Other,,Female,54,62.75,136,90,170,117,0,84,260,High,High,Overweight,Non-smoker
Dead,Other,69,Male,57,61.25,99,85,138,83,5,83,200,Borderline,Normal,Underweight,Light (1-5)
Dead,Other,,Female,59,62,144,115,195,124,5,85,257,High,High,Overweight,Light (1-5)
Dead,Unknown,,Male,56,69,145,75,130,98,0,74,261,High,Normal,Normal,Non-smoker
Alive,,,Female,34,62,108,75,115,93,30,,221,Borderline,Optimal,Normal,Very Heavy (> 25)
Alive,,,Female,50,63,167,84,140,139,0,,246,High,Normal,Overweight,Non-smoker
Alive,,,Male,38,68,152,80,140,106,20,,232,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,54,69.75,175,120,180,118,20,72,246,High,High,Overweight,Heavy (16-25)
Dead,Other,,Female,44,60.75,125,64,120,115,0,68,200,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,43,59.75,157,90,160,148,0,,197,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Female,53,62.75,101,85,125,87,0,73,252,High,Normal,Underweight,Non-smoker
Alive,,,Male,31,72.75,198,95,148,123,1,,177,Desirable,High,Overweight,Light (1-5)
Alive,,78,Female,48,64,185,84,136,149,0,,202,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,49,68.5,135,85,120,94,15,79,175,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,43,66,146,70,118,108,20,,235,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Female,44,64.5,145,66,106,117,10,,230,Borderline,Optimal,Overweight,Moderate (6-15)
Dead,Cancer,,Female,34,60.75,119,70,118,109,1,60,175,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Male,35,65,144,85,135,110,0,,230,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,44,63,147,85,130,123,10,,215,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Male,32,67.5,195,76,118,139,30,,230,Borderline,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Female,44,63,115,80,120,96,20,,185,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,51,73.25,183,80,120,110,5,,235,Borderline,Normal,Overweight,Light (1-5)
Dead,Other,,Female,59,62,118,100,165,102,0,73,225,Borderline,High,Normal,Non-smoker
Alive,,,Female,44,64.5,162,82,116,131,0,,208,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,42,66.5,150,100,140,114,20,,230,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,58,Female,44,64.5,156,90,145,126,20,64,238,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,56,Male,46,64.25,160,94,142,125,30,68,233,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,38,65.5,132,90,145,103,20,,180,Desirable,High,Normal,Heavy (16-25)
Alive,,64,Female,40,62.5,101,70,130,87,10,,208,Borderline,Normal,Underweight,Moderate (6-15)
Dead,Cancer,81,Male,59,69.75,173,82,130,117,0,91,250,High,Normal,Overweight,Non-smoker
Alive,,67,Female,39,61.5,121,66,114,108,20,,209,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Female,42,60.75,124,78,140,114,20,,181,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,37,70,196,96,140,129,0,,271,High,High,Overweight,Non-smoker
Alive,,64,Male,34,68.25,145,80,130,101,15,,256,High,Normal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,64,Male,48,65.25,149,120,215,114,0,68,205,Borderline,High,Overweight,Non-smoker
Alive,,,Female,46,60.25,162,80,135,149,0,,191,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,40,62.25,119,70,118,103,30,,235,Borderline,Optimal,Normal,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Male,45,71.75,148,70,120,94,30,75,173,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,63,Male,57,65.5,180,100,180,137,15,81,308,High,High,Overweight,Moderate (6-15)
Dead,Unknown,,Female,55,66.25,154,95,150,117,30,83,275,High,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,62,Male,44,65,175,95,145,134,50,66,203,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Cancer,60,Male,52,69,168,82,130,114,40,78,280,High,Normal,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,58,Female,54,60.5,183,78,192,168,0,80,246,High,High,Overweight,Non-smoker
Dead,Unknown,,Female,60,56.5,132,110,185,136,0,86,290,High,High,Overweight,Non-smoker
Dead,Other,,Male,60,67,161,85,130,115,20,86,248,High,Normal,Overweight,Heavy (16-25)
Dead,Cancer,73,Female,57,63.25,159,86,156,133,0,85,246,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,45,61.75,99,85,130,88,0,73,209,Borderline,Normal,Underweight,Non-smoker
Alive,,,Male,45,70,181,105,185,119,0,,287,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,57,60.5,153,84,142,140,0,81,296,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,59,Male,57,65.75,147,74,120,112,15,61,219,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Cancer,57,Male,37,67.25,158,90,140,113,20,67,252,High,High,Overweight,Heavy (16-25)
Alive,,,Male,46,63.75,155,84,134,124,0,,247,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,38,63,137,85,150,114,1,70,216,Borderline,High,Overweight,Light (1-5)
Alive,,51,Male,45,69,184,82,130,124,0,,191,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,59,62.25,160,78,124,138,0,,216,Borderline,Normal,Overweight,Non-smoker
Alive,,66,Female,38,62.75,142,70,115,122,0,,210,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,45,66,147,86,130,111,0,,232,Borderline,Normal,Overweight,Non-smoker
Alive,,72,Female,44,65,183,112,176,143,0,,224,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,54,65,174,110,160,133,0,64,180,Desirable,High,Overweight,Non-smoker
Alive,,,Female,35,58.75,134,86,116,130,5,,203,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Male,36,63.5,171,80,130,137,40,,215,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,79,Male,59,62,137,80,140,112,0,87,165,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,37,59.75,87,75,120,82,5,,310,High,Normal,Underweight,Light (1-5)
Dead,Cancer,,Male,37,65.75,204,84,130,156,40,65,203,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,36,73,228,100,140,137,0,,260,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,51,67,159,86,146,117,15,83,265,High,High,Overweight,Moderate (6-15)
Alive,,,Female,53,55.75,104,80,110,111,0,,183,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,53,66.25,167,100,150,127,1,77,231,Borderline,High,Overweight,Light (1-5)
Alive,,85,Female,59,61.75,138,95,145,123,0,,258,High,High,Overweight,Non-smoker
Alive,,,Female,47,62.25,135,88,144,116,0,,236,Borderline,High,Overweight,Non-smoker
Alive,,,Female,36,60,127,88,124,117,0,,215,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,32,63.75,128,86,140,107,0,,221,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,50,63.5,164,100,160,137,20,,334,High,High,Overweight,Heavy (16-25)
Alive,,67,Female,41,62,140,98,160,121,1,,240,High,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,62,Male,44,65,141,98,156,108,30,64,209,Borderline,High,Normal,Very Heavy (> 25)
Alive,,,Female,41,63.5,131,90,175,109,0,,181,Desirable,High,Normal,Non-smoker
Alive,,75,Female,45,62.25,128,95,140,110,0,,180,Desirable,High,Overweight,Non-smoker
Dead,Other,,Female,39,61.25,114,80,120,102,15,55,246,High,Normal,Normal,Moderate (6-15)
Alive,,,Female,34,64.75,118,70,110,95,20,,175,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Male,37,69.25,196,90,135,132,40,,386,High,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,60,Male,60,67.75,168,100,190,120,15,64,246,High,High,Overweight,Moderate (6-15)
Dead,Other,,Male,40,65.75,200,118,164,153,25,58,245,High,High,Overweight,Heavy (16-25)
Alive,,73,Female,53,57.25,126,95,180,126,0,,209,Borderline,High,Overweight,Non-smoker
Alive,,,Male,40,68.5,134,75,115,93,20,,183,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Female,33,64,114,74,120,92,0,,246,High,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Male,47,65.5,159,100,170,121,50,63,232,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,40,62,119,100,140,103,1,,205,Borderline,High,Normal,Light (1-5)
Alive,,55,Male,31,68.75,178,96,134,124,20,,189,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Male,32,69.5,158,80,128,107,20,,240,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,42,65.5,135,112,170,105,10,,295,High,High,Normal,Moderate (6-15)
Alive,,,Female,39,65.5,250,105,135,195,0,,242,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,67,Female,39,58,145,95,170,141,0,69,350,High,High,Overweight,Non-smoker
Alive,,,Female,41,61.75,129,80,120,115,0,,185,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,56,Male,44,67,157,100,180,112,15,58,215,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Male,31,70.5,148,75,135,97,20,,210,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,61,Female,61,66.25,136,104,182,103,0,79,280,High,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,58,63,106,105,195,88,0,76,330,High,High,Underweight,Non-smoker
Alive,,,Male,44,69.75,190,90,140,128,0,,214,Borderline,High,Overweight,Non-smoker
Dead,Cancer,69,Female,41,63.25,121,70,110,101,10,73,290,High,Optimal,Normal,Moderate (6-15)
Dead,Other,,Female,61,61,178,95,170,159,0,81,213,Borderline,High,Overweight,Non-smoker
Alive,,,Female,35,63.75,210,95,160,175,1,,192,Desirable,High,Overweight,Light (1-5)
Alive,,,Female,33,60.75,100,70,100,92,15,,202,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Female,41,61.25,112,80,115,100,0,,243,High,Normal,Normal,Non-smoker
Alive,,,Female,58,62.5,160,80,120,138,5,,204,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,54,60.25,185,116,200,170,,,265,High,High,Overweight,
Dead,Cancer,,Female,58,60,100,94,112,92,0,72,290,High,High,Normal,Non-smoker
Alive,,,Female,34,62,127,56,94,109,10,,148,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Female,35,69.5,156,68,110,108,0,,200,Borderline,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,79,Female,51,58.5,146,90,140,142,0,81,226,Borderline,High,Overweight,Non-smoker
Alive,,,Female,61,62,183,84,132,158,0,,260,High,Normal,Overweight,Non-smoker
Alive,,,Female,46,63,132,68,120,110,0,,215,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,46,68.75,185,85,125,128,10,78,282,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,43,62.75,132,80,124,114,0,,183,Desirable,Normal,Overweight,Non-smoker
Dead,Other,,Male,60,66.25,176,70,120,130,0,90,268,High,Normal,Overweight,Non-smoker
Alive,,66,Female,50,62.75,181,125,195,156,0,,257,High,High,Overweight,Non-smoker
Alive,,,Male,47,68.5,148,68,108,103,0,,176,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,56,63.5,134,84,144,112,0,,376,High,High,Overweight,Non-smoker
Alive,,,Male,33,73.75,245,90,150,148,0,,179,Desirable,High,Overweight,Non-smoker
Alive,,,Male,35,67.5,148,90,160,106,30,,280,High,High,Normal,Very Heavy (> 25)
Alive,,,Female,36,61.25,107,80,118,96,10,,170,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,55,67.75,177,90,150,126,0,,268,High,High,Overweight,Non-smoker
Dead,Other,61,Male,39,72.5,192,95,155,119,20,71,278,High,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,72,Male,60,64.5,154,85,200,120,0,84,180,Desirable,High,Overweight,Non-smoker
Alive,,82,Female,56,57.5,149,100,170,149,0,,345,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,60,65.75,190,100,150,145,0,80,165,Desirable,High,Overweight,Non-smoker
Dead,Unknown,57,Female,57,63,188,120,186,157,0,71,178,Desirable,High,Overweight,Non-smoker
Dead,Other,,Female,36,61.75,134,80,130,120,40,58,190,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,49,62.25,133,90,142,115,0,,167,Desirable,High,Overweight,Non-smoker
Alive,,,Male,33,76.5,221,100,155,122,20,,225,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,33,66.5,142,82,126,105,20,,210,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,47,60.5,112,80,130,103,0,,225,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,46,63.75,129,96,140,103,10,,180,Desirable,High,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,67,Male,61,62.5,140,95,150,115,0,69,239,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,58,63.5,164,65,120,131,0,84,295,High,Normal,Overweight,Non-smoker
Alive,,,Female,38,62.25,180,90,148,155,0,,187,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Male,52,64.25,145,85,135,113,20,80,276,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,50,62,158,90,142,136,0,,230,Borderline,High,Overweight,Non-smoker
Alive,,,Female,45,65.25,129,75,110,101,0,,217,Borderline,Optimal,Normal,Non-smoker
Alive,,,Female,50,59.75,126,95,135,119,0,,357,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,59,Male,53,61.25,152,94,124,128,0,77,317,High,High,Overweight,Non-smoker
Alive,,67,Female,59,62.25,143,95,160,123,0,,265,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,84,Female,54,65.5,175,82,128,137,20,86,201,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,53,Male,39,68.5,191,84,126,133,25,65,235,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Other,,Female,60,57.25,184,108,208,184,0,80,217,Borderline,High,Overweight,Non-smoker
Alive,,,Female,34,66.75,138,70,108,105,0,,158,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,44,67.75,159,90,140,114,0,,252,High,High,Overweight,Non-smoker
Alive,,,Female,42,63.25,120,80,112,100,5,,242,High,Normal,Normal,Light (1-5)
Alive,,,Male,34,68.25,181,100,150,126,0,,212,Borderline,High,Overweight,Non-smoker
Alive,,,Male,36,72.75,193,78,112,120,20,,175,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,74,Female,56,60.75,217,100,200,199,0,82,264,High,High,Overweight,Non-smoker
Alive,,,Male,36,65.5,140,95,130,107,30,,205,Borderline,High,Normal,Very Heavy (> 25)
Alive,,69,Female,51,60,121,100,168,111,0,,177,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,65,Male,49,67.75,156,80,125,111,20,81,241,High,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,49,63.5,137,80,180,114,0,61,236,Borderline,High,Overweight,Non-smoker
Alive,,,Female,33,61.75,124,90,134,111,15,,188,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Female,46,61.5,139,110,160,124,0,,225,Borderline,High,Overweight,Non-smoker
Alive,,84,Female,60,61.75,138,100,180,123,10,,234,Borderline,High,Overweight,Moderate (6-15)
Dead,Other,,Female,50,64,132,75,110,106,20,82,274,High,Optimal,Normal,Heavy (16-25)
Dead,Cancer,57,Male,53,67.25,176,84,130,126,20,71,322,High,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,46,62.5,162,90,130,140,0,78,183,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,49,66,229,110,170,170,10,69,292,High,High,Overweight,Moderate (6-15)
Alive,,,Male,39,69.25,207,110,166,140,20,,271,High,High,Overweight,Heavy (16-25)
Alive,,,Male,38,68.5,164,75,110,114,20,,200,Borderline,Optimal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,36,62.5,103,70,125,89,10,58,243,High,Normal,Underweight,Moderate (6-15)
Dead,Coronary Heart Disease,73,Male,53,72.5,213,110,165,132,0,75,180,Desirable,High,Overweight,Non-smoker
Alive,,,Male,34,67.75,136,82,136,97,25,,199,Desirable,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,62,Male,48,67.75,179,100,194,128,5,74,231,Borderline,High,Overweight,Light (1-5)
Dead,Cancer,,Male,49,65.5,145,80,136,111,0,71,270,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,36,62.75,106,70,130,91,15,52,190,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,35,70.5,214,90,156,141,40,,247,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,34,62,114,76,120,98,30,,154,Desirable,Normal,Normal,Very Heavy (> 25)
Alive,,,Male,37,67.25,193,85,135,138,0,,235,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,58,65,184,104,176,140,15,70,270,High,High,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,63,Female,57,58.75,133,95,165,129,0,65,305,High,High,Overweight,Non-smoker
Dead,Unknown,,Male,58,63.25,143,84,148,114,20,88,217,Borderline,High,Overweight,Heavy (16-25)
Alive,,56,Female,34,64.5,119,84,140,96,0,,204,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,33,68.25,150,70,130,104,0,,204,Borderline,Normal,Normal,Non-smoker
Alive,,70,Female,58,58,129,82,126,125,0,,334,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,69,Female,43,59,140,75,135,132,20,71,234,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,40,65,152,76,116,116,40,,161,Desirable,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Male,31,71.75,196,78,124,125,20,,202,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,45,60.75,138,80,125,127,1,,221,Borderline,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,74,Male,54,66.5,181,130,220,134,0,80,210,Borderline,High,Overweight,Non-smoker
Alive,,,Male,38,68.5,179,78,126,124,5,,285,High,Normal,Overweight,Light (1-5)
Alive,,,Female,32,65.5,129,90,150,101,15,,195,Desirable,High,Normal,Moderate (6-15)
Alive,,,Female,47,61.25,134,86,148,120,0,,292,High,High,Overweight,Non-smoker
Alive,,,Female,38,59.25,119,90,145,112,,,301,High,High,Overweight,
Dead,Other,,Male,39,63.5,107,94,160,86,25,47,192,Desirable,High,Underweight,Heavy (16-25)
Alive,,,Female,52,65.75,139,85,140,109,5,,176,Desirable,Normal,Normal,Light (1-5)
Alive,,,Male,48,68.75,175,80,120,122,20,,180,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,73,Female,43,61.5,101,100,155,90,30,75,267,High,High,Underweight,Very Heavy (> 25)
Alive,,,Female,31,61.25,128,85,130,114,5,,155,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,36,66,136,76,124,103,20,,184,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,36,71.25,173,95,135,110,0,,196,Desirable,High,Overweight,Non-smoker
Alive,,,Female,43,60.75,146,90,130,134,0,,215,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,70,Male,60,68.25,203,92,144,141,20,82,197,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,32,61,127,65,125,113,0,,160,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,58,61.5,127,100,176,113,5,66,305,High,High,Overweight,Light (1-5)
Dead,Other,61,Male,59,64,168,130,260,131,20,75,254,High,High,Overweight,Heavy (16-25)
Alive,,,Female,39,64.5,132,75,116,106,25,,230,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Female,32,63.5,141,65,105,118,0,,315,High,Optimal,Overweight,Non-smoker
Alive,,61,Male,31,67.5,159,90,130,114,10,,154,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Male,38,68,190,86,136,132,50,,223,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,35,67.5,180,70,120,129,30,,199,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,32,65.5,138,70,130,108,15,,225,Borderline,Normal,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,59,62.25,190,80,140,164,0,83,145,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,38,61.75,120,75,120,107,0,,235,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,67,Male,53,65.75,154,90,155,118,0,69,263,High,High,Overweight,Non-smoker
Dead,Unknown,,Female,54,62.5,158,90,140,136,5,70,195,Desirable,High,Overweight,Light (1-5)
Alive,,,Female,32,65.5,111,80,125,87,20,,175,Desirable,Normal,Underweight,Heavy (16-25)
Alive,,,Female,37,61.25,124,75,115,111,0,,210,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,35,64,128,92,128,100,20,,181,Desirable,High,Normal,Heavy (16-25)
Alive,,,Female,34,65.5,145,64,100,113,0,,170,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,37,72,191,72,126,119,20,,185,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,55,65.25,157,95,155,123,0,,311,High,High,Overweight,Non-smoker
Alive,,,Female,42,63.5,119,80,120,99,0,,225,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,31,72.5,164,74,114,102,20,,265,High,Optimal,Normal,Heavy (16-25)
Alive,,59,Female,31,60.25,120,80,110,110,5,,239,Borderline,Normal,Overweight,Light (1-5)
Dead,Other,,Female,36,59.75,91,75,120,86,10,54,180,Desirable,Normal,Underweight,Moderate (6-15)
Alive,,67,Female,47,62.5,171,90,120,147,0,,316,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,60,Male,58,65.5,195,130,200,149,5,74,212,Borderline,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,67,Female,51,60.5,133,82,138,122,0,83,275,High,Normal,Overweight,Non-smoker
Alive,,,Male,50,64.5,169,86,136,132,0,,249,High,Normal,Overweight,Non-smoker
Alive,,,Female,46,64.5,122,75,115,98,10,,245,High,Optimal,Normal,Moderate (6-15)
Alive,,,Female,34,60,114,65,110,105,15,,225,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Male,39,65.5,178,100,140,136,0,,255,High,High,Overweight,Non-smoker
Alive,,,Male,54,62.25,133,85,125,109,5,,213,Borderline,Normal,Normal,Light (1-5)
Alive,,,Female,55,63.75,182,100,176,152,0,,265,High,High,Overweight,Non-smoker
Alive,,,Male,34,65.75,190,85,145,145,20,,268,High,High,Overweight,Heavy (16-25)
Alive,,,Male,32,70.25,133,55,170,88,0,,175,Desirable,High,Underweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,34,68.5,211,100,156,147,5,62,217,Borderline,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,68,Female,60,62,152,90,155,131,0,70,342,High,High,Overweight,Non-smoker
Alive,,,Male,38,69,189,92,136,128,40,,160,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Cancer,66,Male,54,64,162,100,170,127,20,84,222,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,56,64.5,149,120,214,120,0,,256,High,High,Overweight,Non-smoker
Alive,,,Female,33,66,117,65,110,89,5,,144,Desirable,Optimal,Underweight,Light (1-5)
Alive,,,Male,44,64.5,167,82,140,130,0,,242,High,Normal,Overweight,Non-smoker
Alive,,,Female,49,61,114,90,150,102,0,,306,High,High,Normal,Non-smoker
Alive,,63,Male,33,64,175,85,120,137,40,,228,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,36,63.25,133,78,130,111,20,,207,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,38,67.75,160,90,136,114,15,,237,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Male,42,69.25,171,90,135,116,20,,237,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,36,67,146,85,115,104,0,54,185,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,40,62,124,70,110,107,0,,151,Desirable,Optimal,Normal,Non-smoker
Alive,,,Female,32,63,152,70,126,127,5,,160,Desirable,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,53,63,126,90,130,105,20,81,222,Borderline,High,Normal,Heavy (16-25)
Alive,,,Female,34,63.5,137,80,120,114,40,,186,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,35,68.5,175,86,126,122,15,,230,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,33,62,122,70,130,105,20,,209,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,38,65.25,171,90,150,131,30,,224,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,80,Male,60,67,177,80,140,126,20,86,175,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,43,65.75,172,85,132,131,20,65,125,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,32,62,120,85,140,103,20,,275,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,34,66.25,146,80,124,111,5,,162,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,33,58.25,136,115,150,132,20,,195,Desirable,High,Overweight,Heavy (16-25)
Alive,,55,Female,55,62.5,175,95,170,151,0,,275,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,48,Male,42,67,150,84,120,107,50,50,266,High,Normal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,80,Female,60,68,229,120,225,164,0,84,248,High,High,Overweight,Non-smoker
Alive,,,Male,34,67.25,146,70,110,104,0,,252,High,Optimal,Normal,Non-smoker
Alive,,,Female,38,62.5,148,90,140,128,20,,165,Desirable,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,43,70.25,202,84,140,133,20,75,200,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,43,65.75,121,70,110,95,15,,238,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Female,37,63.5,139,84,130,116,0,,285,High,Normal,Overweight,Non-smoker
Alive,,,Male,33,68.75,184,90,150,128,10,,240,High,High,Overweight,Moderate (6-15)
Alive,,,Male,41,65.5,165,86,136,126,1,,244,High,Normal,Overweight,Light (1-5)
Dead,Cancer,51,Male,35,70,179,105,150,118,20,65,265,High,High,Overweight,Heavy (16-25)
Alive,,,Male,33,75.25,168,72,136,95,20,,241,High,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,37,67.5,178,76,116,131,20,67,198,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,44,61.5,114,80,125,102,0,,210,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,31,68.75,181,86,136,126,0,,232,Borderline,Normal,Overweight,Non-smoker
Dead,Other,,Female,61,59.5,96,120,180,91,0,89,200,Borderline,High,Normal,Non-smoker
Dead,Cancer,,Female,36,58.75,108,70,110,105,15,66,224,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Female,31,62.25,131,78,114,113,5,,183,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Female,36,62.25,115,80,130,99,0,,212,Borderline,Normal,Normal,Non-smoker
Alive,,47,Male,33,70.5,160,80,136,105,30,,223,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,46,59,132,86,136,125,0,,274,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,43,63.75,155,90,125,124,40,69,248,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,42,62,120,70,108,103,0,,165,Desirable,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,65,Male,41,69.75,192,98,154,130,20,67,162,Desirable,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,74,Male,52,64,155,84,140,121,20,76,182,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,36,58.75,115,88,142,112,15,,280,High,High,Overweight,Moderate (6-15)
Alive,,,Male,40,63.25,149,85,135,119,40,,260,High,Normal,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,78,Female,58,67.25,174,92,142,128,0,84,205,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,51,67,172,86,134,126,1,63,285,High,Normal,Overweight,Light (1-5)
Alive,,,Female,45,61.5,126,95,165,113,0,,183,Desirable,High,Overweight,Non-smoker
Alive,,,Male,45,66.25,171,90,126,127,0,,218,Borderline,High,Overweight,Non-smoker
Alive,,58,Female,42,62.25,154,75,110,133,0,,180,Desirable,Optimal,Overweight,Non-smoker
Dead,Unknown,,Female,52,61,138,104,170,123,15,66,285,High,High,Overweight,Moderate (6-15)
Alive,,,Female,48,62,132,84,114,114,15,,243,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,35,67.25,179,80,114,132,1,,214,Borderline,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,57,Female,57,60.5,178,110,230,163,0,85,255,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,60,65,115,74,126,88,5,78,170,Desirable,Normal,Underweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,54,61.75,138,110,210,123,0,58,221,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,44,Male,36,69.5,226,114,152,153,40,68,250,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,42,61.5,109,145,210,97,0,,195,Desirable,High,Normal,Non-smoker
Dead,Cancer,,Male,41,65.75,130,80,124,99,20,67,209,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,51,58.25,116,96,156,113,30,55,305,High,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,57,66.75,156,80,160,116,40,71,245,High,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,70,Male,52,65.25,141,100,176,108,0,72,197,Desirable,High,Normal,Non-smoker
Alive,,52,Female,34,65.75,174,80,155,136,0,,145,Desirable,High,Overweight,Non-smoker
Alive,,,Male,40,72,227,110,200,141,0,,188,Desirable,High,Overweight,Non-smoker
Alive,,,Male,37,70,213,78,126,140,0,,265,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,63,Female,55,61.25,106,104,158,95,15,65,178,Desirable,High,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,67,Male,37,63.25,160,104,134,128,0,69,375,High,High,Overweight,Non-smoker
Alive,,,Male,52,65,155,100,145,118,20,,220,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,35,63.25,142,74,110,118,10,,217,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,39,59.5,106,80,130,100,1,,267,High,Normal,Normal,Light (1-5)
Dead,Other,,Female,55,60.5,127,75,130,117,0,85,239,Borderline,Normal,Overweight,Non-smoker
Dead,Other,,Female,34,63.5,121,88,125,101,0,66,185,Desirable,Normal,Normal,Non-smoker
Dead,Cancer,,Female,58,59.75,174,84,162,164,0,62,211,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,63,Male,59,67,154,90,155,110,50,81,207,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Male,44,66.25,160,120,160,119,0,,175,Desirable,High,Overweight,Non-smoker
Alive,,,Male,41,63.75,147,80,125,118,25,,247,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,49,65,136,96,144,106,0,,275,High,High,Normal,Non-smoker
Dead,Coronary Heart Disease,60,Male,46,68.5,185,110,180,128,0,72,215,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,66,Male,56,64.25,132,110,190,103,20,72,275,High,High,Normal,Heavy (16-25)
Alive,,,Female,40,62.5,127,80,150,109,0,,215,Borderline,High,Normal,Non-smoker
Alive,,70,Male,42,67.5,199,116,166,142,0,,188,Desirable,High,Overweight,Non-smoker
Alive,,,Female,48,56.75,96,90,150,99,10,,262,High,High,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,42,63.75,117,98,170,94,20,58,213,Borderline,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,62,Female,58,59.25,118,80,148,111,0,88,241,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,55,Female,53,60.75,202,135,270,185,20,61,295,High,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,58,Male,56,67.75,177,94,160,126,20,64,267,High,High,Overweight,Heavy (16-25)
Alive,,,Female,60,62,160,90,140,138,0,,225,Borderline,High,Overweight,Non-smoker
Alive,,,Female,44,61.5,113,90,155,101,0,,245,High,High,Normal,Non-smoker
Dead,Coronary Heart Disease,66,Female,50,63,157,110,166,131,5,68,340,High,High,Overweight,Light (1-5)
Dead,Other,,Male,41,69.5,186,95,175,126,5,63,197,Desirable,High,Overweight,Light (1-5)
Alive,,57,Male,41,62.75,143,90,140,117,40,,196,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Male,37,65,119,100,130,91,10,,172,Desirable,High,Normal,Moderate (6-15)
Alive,,,Male,42,69.75,191,92,146,129,0,,230,Borderline,High,Overweight,Non-smoker
Alive,,,Female,53,55.5,114,70,116,121,0,,225,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,53,67,179,80,135,128,0,,210,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,49,62.5,179,96,164,154,0,79,230,Borderline,High,Overweight,Non-smoker
Alive,,,Male,56,64.25,152,80,120,119,15,,235,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Other,,Male,51,64.25,150,105,145,117,20,65,250,High,High,Overweight,Heavy (16-25)
Alive,,,Female,36,59,137,90,140,129,0,,147,Desirable,High,Overweight,Non-smoker
Alive,,,Female,38,64.25,133,85,135,107,15,,165,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,48,61.5,131,90,140,117,0,,234,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,61,Male,51,65,167,86,132,127,15,77,285,High,Normal,Overweight,Moderate (6-15)
Alive,,,Male,38,64.25,170,80,136,133,40,,220,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,69,Female,61,64.25,170,95,195,137,0,87,230,Borderline,High,Overweight,Non-smoker
Alive,,,Male,61,62,148,75,155,121,5,,260,High,High,Overweight,Light (1-5)
Alive,,,Female,33,68.75,178,68,120,127,20,,168,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,51,62.5,101,110,208,87,15,65,218,Borderline,High,Underweight,Moderate (6-15)
Dead,Coronary Heart Disease,60,Male,52,67.5,182,103,145,130,20,82,240,High,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,51,67.5,166,98,140,119,35,75,299,High,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Male,54,61.5,141,96,180,118,0,64,268,High,High,Overweight,Non-smoker
Alive,,54,Female,34,56.5,194,100,160,200,0,,210,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,47,63.5,135,80,126,113,5,71,320,High,Normal,Overweight,Light (1-5)
Dead,Cancer,,Male,54,69.75,178,110,156,120,20,76,219,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,53,Male,31,69.25,189,85,180,128,25,57,271,High,High,Overweight,Heavy (16-25)
Alive,,,Female,56,64,135,110,150,109,0,,295,High,High,Normal,Non-smoker
Dead,Cancer,,Female,35,64,120,80,112,97,0,61,143,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,42,61,129,80,120,115,0,,252,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,87,Female,59,62.75,139,95,155,120,0,89,226,Borderline,High,Overweight,Non-smoker
Alive,,,Female,33,64.5,113,95,140,91,20,,175,Desirable,High,Normal,Heavy (16-25)
Dead,Unknown,42,Male,32,67.25,222,105,150,159,55,52,220,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,38,58.75,137,80,126,133,0,,221,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,37,59.5,118,84,128,111,0,,197,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,44,63.75,161,100,130,134,0,,261,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,38,69.75,141,80,110,95,15,58,167,Desirable,Normal,Normal,Moderate (6-15)
Dead,Cancer,,Male,35,65.5,178,98,138,136,25,63,226,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,41,Female,41,61,171,110,185,153,0,73,210,Borderline,High,Overweight,Non-smoker
Alive,,,Female,40,63,115,70,130,96,0,,192,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,38,69.25,179,110,160,121,0,,195,Desirable,High,Overweight,Non-smoker
Alive,,,Female,37,62.5,124,80,120,107,20,,240,High,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,74,Male,48,68.25,159,90,126,110,40,76,250,High,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,47,Female,33,61,126,85,125,113,20,63,,,Normal,Overweight,Heavy (16-25)
Dead,Unknown,,Female,33,61.5,141,86,138,126,0,61,342,High,Normal,Overweight,Non-smoker
Alive,,,Female,33,61,116,76,126,104,0,,190,Desirable,Normal,Normal,Non-smoker
Alive,,58,Male,44,68.75,189,90,146,131,0,,287,High,High,Overweight,Non-smoker
Alive,,,Male,50,64.5,162,86,132,127,0,,307,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,48,63.25,154,88,126,128,0,66,217,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,36,68.25,152,70,124,106,55,,163,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,62,Female,32,62,180,84,116,155,15,64,225,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,42,63.75,153,70,110,128,0,,193,Desirable,Optimal,Overweight,Non-smoker
Alive,,72,Female,50,61.75,120,82,120,107,5,,235,Borderline,Normal,Normal,Light (1-5)
Alive,,,Female,44,62.25,152,94,140,131,0,,220,Borderline,High,Overweight,Non-smoker
Alive,,,Female,45,65.5,134,95,165,105,0,,240,High,High,Normal,Non-smoker
Dead,Cancer,,Male,46,68.5,172,115,170,119,35,68,317,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,34,67.75,162,90,140,116,20,,166,Desirable,High,Overweight,Heavy (16-25)
Alive,,46,Male,34,67.75,157,92,136,112,35,,320,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,56,63.5,116,95,145,97,0,,287,High,High,Normal,Non-smoker
Dead,Cancer,,Male,57,66,154,80,120,114,20,63,240,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,50,63.5,143,80,130,114,30,,206,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,57,67.75,160,104,168,118,0,75,259,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,87,Female,61,61.75,104,85,160,93,0,89,245,High,High,Normal,Non-smoker
Alive,,,Female,38,62.25,173,102,140,149,0,,196,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,52,Male,40,65.75,189,100,150,144,20,58,173,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,33,59.75,121,80,135,114,0,,220,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,33,61.75,114,80,125,102,10,,211,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Male,36,66.5,137,70,120,101,30,,215,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,38,59.75,146,86,140,138,20,,190,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Other,,Male,35,64.25,135,82,126,105,30,47,195,Desirable,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,53,62,133,80,130,115,20,,227,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,53,66.5,131,80,130,97,20,69,207,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,41,67,173,120,170,124,40,,246,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,45,63.25,139,95,165,116,1,,284,High,High,Overweight,Light (1-5)
Alive,,,Female,36,65.25,131,82,128,102,30,,232,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Male,42,63.5,144,85,125,115,30,,238,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,41,62.5,159,105,140,137,5,,234,Borderline,High,Overweight,Light (1-5)
Dead,Cancer,,Male,47,66.25,159,90,120,118,50,73,287,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,54,57.75,119,70,130,119,0,,221,Borderline,Normal,Overweight,Non-smoker
Alive,,54,Female,40,62.25,138,84,130,119,5,,207,Borderline,Normal,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,67,Female,49,61.75,149,74,134,133,0,75,165,Desirable,Normal,Overweight,Non-smoker
Alive,,66,Female,56,61.25,152,80,165,136,1,,319,High,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,59,Male,43,69.25,182,96,146,123,20,61,248,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,54,66,203,96,168,154,20,84,305,High,High,Overweight,Heavy (16-25)
Alive,,,Female,37,62,125,82,140,108,0,,189,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,39,62.75,145,80,112,119,15,,235,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,39,60.25,134,72,136,123,0,,167,Desirable,Normal,Overweight,Non-smoker
Alive,,60,Female,42,63.75,134,84,135,112,5,,271,High,Normal,Overweight,Light (1-5)
Dead,Unknown,,Male,39,68.75,156,76,118,108,20,65,198,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Other,50,Male,44,70.5,180,120,172,118,20,68,280,High,High,Overweight,Heavy (16-25)
Dead,Other,,Female,39,62.5,116,100,140,100,0,57,210,Borderline,High,Normal,Non-smoker
Alive,,,Female,62,60.5,138,94,146,127,0,,221,Borderline,High,Overweight,Non-smoker
Alive,,,Male,34,68.25,176,82,126,122,5,,217,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,47,56.75,127,85,145,131,0,,238,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,52,60,204,104,286,187,0,78,263,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,56,69,194,84,140,131,0,76,200,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,69,Male,53,61.25,156,90,125,131,0,73,329,High,High,Overweight,Non-smoker
Dead,Cancer,51,Male,31,71.75,144,74,126,92,30,61,172,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,67,Female,61,59.75,113,100,170,107,15,69,287,High,High,Normal,Moderate (6-15)
Alive,,57,Female,35,62.25,128,80,125,110,15,,278,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,42,61.75,132,90,150,118,15,,207,Borderline,High,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,64,Female,58,58.5,114,90,185,111,0,66,351,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,36,58.5,183,96,150,178,5,50,188,Desirable,High,Overweight,Light (1-5)
Alive,,,Male,48,67,179,94,138,128,0,,269,High,High,Overweight,Non-smoker
Alive,,,Female,35,61.75,118,94,138,105,0,,150,Desirable,High,Normal,Non-smoker
Alive,,,Male,34,65,122,70,124,93,15,,180,Desirable,Normal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,59,Female,49,59.5,136,100,175,128,0,61,435,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,54,64.5,150,82,140,117,5,70,272,High,Normal,Overweight,Light (1-5)
Alive,,,Female,41,63.75,106,50,100,88,5,,247,High,Optimal,Underweight,Light (1-5)
Alive,,,Male,41,67.25,127,72,110,91,10,,151,Desirable,Optimal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,58,Male,44,70.75,176,95,140,116,20,60,226,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,49,65.75,142,94,138,111,0,,226,Borderline,High,Overweight,Non-smoker
Alive,,56,Female,38,62,127,68,104,109,15,,235,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Male,44,72.25,145,90,136,90,0,,225,Borderline,High,Underweight,Non-smoker
Alive,,,Male,48,67.25,153,80,115,109,20,,232,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,62,Female,44,62.25,136,96,156,117,0,74,209,Borderline,High,Overweight,Non-smoker
Dead,Cancer,61,Male,45,66,159,74,118,118,20,71,209,Borderline,Optimal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,48,61,135,90,155,121,0,70,199,Desirable,High,Overweight,Non-smoker
Alive,,,Male,32,68.5,163,72,110,113,15,,260,High,Optimal,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,32,70.5,138,66,124,91,40,50,230,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,35,60,173,82,158,159,40,,217,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Male,46,67.25,157,118,185,112,20,64,218,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,38,60,173,94,150,159,15,54,196,Desirable,High,Overweight,Moderate (6-15)
Dead,Unknown,,Male,43,68.75,138,82,128,96,20,71,194,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,40,61.75,150,82,128,134,0,,173,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,72,Female,46,62.5,159,90,130,137,0,74,279,High,High,Overweight,Non-smoker
Alive,,,Male,32,69.75,179,95,130,121,30,,239,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,32,61.75,132,68,110,118,0,,175,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,47,62.5,136,82,156,117,0,,125,Desirable,High,Overweight,Non-smoker
Alive,,,Male,52,68.25,190,95,135,132,0,,230,Borderline,High,Overweight,Non-smoker
Dead,Other,82,Male,56,66.75,144,70,112,107,40,86,165,Desirable,Optimal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,59,Female,43,65,154,88,128,120,0,61,226,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,44,72.25,212,75,110,132,0,,206,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,51,59.5,133,78,110,125,0,,213,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,38,59.75,118,80,132,111,20,,225,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,54,Male,38,65,165,95,135,126,0,,254,High,High,Overweight,Non-smoker
Alive,,,Male,46,70.5,158,76,114,104,20,,264,High,Optimal,Normal,Heavy (16-25)
Dead,Other,67,Male,37,68.25,148,82,122,103,15,69,246,High,Normal,Normal,Moderate (6-15)
Alive,,,Female,39,60.25,129,70,120,118,0,,185,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,51,Male,35,65.5,173,100,180,132,30,61,202,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,41,60.75,117,84,142,107,40,73,209,Borderline,High,Normal,Very Heavy (> 25)
Dead,Cancer,,Female,40,60,153,84,125,140,0,58,240,High,Normal,Overweight,Non-smoker
Alive,,,Female,45,63.5,124,82,124,103,0,,265,High,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,56,Male,54,58.75,148,88,140,135,40,58,267,High,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,51,65.5,185,64,108,141,0,79,157,Desirable,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,44,70,124,80,128,82,20,66,210,Borderline,Normal,Underweight,Heavy (16-25)
Dead,Other,,Male,56,67.75,182,86,170,130,1,88,192,Desirable,High,Overweight,Light (1-5)
Alive,,64,Female,36,63.5,166,88,116,138,0,,173,Desirable,Normal,Overweight,Non-smoker
Dead,Other,,Male,53,68.75,205,125,200,142,0,81,313,High,High,Overweight,Non-smoker
Alive,,,Male,42,65,127,90,134,97,0,,201,Borderline,High,Normal,Non-smoker
Dead,Coronary Heart Disease,67,Female,43,61,105,110,155,94,20,73,248,High,High,Normal,Heavy (16-25)
Alive,,,Female,40,57.5,160,84,120,160,5,,188,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Male,51,65.5,164,88,130,125,0,,206,Borderline,Normal,Overweight,Non-smoker
Alive,,68,Female,50,63.5,141,84,132,118,0,,289,High,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,45,64.5,140,74,122,109,30,59,228,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,34,67.75,120,62,102,88,0,,178,Desirable,Optimal,Underweight,Non-smoker
Alive,,,Male,38,69.25,174,92,132,118,0,,210,Borderline,High,Overweight,Non-smoker
Alive,,,Female,40,64,174,90,130,140,0,,,,High,Overweight,Non-smoker
Alive,,76,Male,46,67,174,90,145,124,0,,250,High,High,Overweight,Non-smoker
Alive,,49,Male,49,67.75,150,84,124,107,5,,295,High,Normal,Normal,Light (1-5)
Alive,,,Male,34,68.25,162,64,114,113,25,,223,Borderline,Optimal,Overweight,Heavy (16-25)
Dead,Unknown,,Female,56,60.5,269,120,210,247,20,82,150,Desirable,High,Overweight,Heavy (16-25)
Dead,Other,,Male,60,66.5,125,82,126,93,20,90,202,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,48,63.5,135,90,150,113,5,64,228,Borderline,High,Overweight,Light (1-5)
Alive,,,Female,35,64,116,68,132,94,0,,183,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,36,67.5,176,74,114,126,20,,234,Borderline,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,39,61.5,133,85,130,119,20,,194,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,51,61.75,140,84,120,125,0,,255,High,Normal,Overweight,Non-smoker
Alive,,,Female,48,61.5,148,92,132,132,0,,216,Borderline,High,Overweight,Non-smoker
Alive,,,Male,53,65,165,75,125,126,20,,211,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Male,60,64.75,152,80,136,119,20,,234,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,44,64.25,146,98,150,118,30,60,175,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Male,42,65.75,170,85,120,130,0,,155,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,34,60.75,128,85,132,117,0,,188,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,50,63.25,188,105,180,157,0,70,262,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,56,Male,34,66,160,110,192,119,25,58,230,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,34,63.5,144,76,118,115,0,,174,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,33,69.25,190,76,138,128,30,,235,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,66,Male,48,67.5,145,84,156,104,40,78,195,Desirable,High,Normal,Very Heavy (> 25)
Dead,Cancer,,Female,44,61.25,131,92,148,117,0,64,222,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,72,Male,46,67.25,190,115,175,136,0,74,190,Desirable,High,Overweight,Non-smoker
Alive,,,Male,31,71.75,184,60,118,117,0,,220,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,32,64.5,136,72,108,106,0,,187,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,35,71.5,206,95,135,131,0,,205,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,36,62.75,129,80,110,111,5,64,171,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,33,62.75,134,85,125,116,0,,230,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,77,Female,47,59,141,86,120,133,0,79,,,Normal,Overweight,Non-smoker
Alive,,,Male,39,65.25,173,85,140,132,0,,218,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,37,65.75,146,72,108,111,25,,165,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,51,62,139,76,146,120,0,,282,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,54,69.5,152,84,140,103,5,66,217,Borderline,Normal,Normal,Light (1-5)
Dead,Cancer,,Male,60,65.25,166,100,172,127,0,72,275,High,High,Overweight,Non-smoker
Dead,Cancer,70,Male,58,67.5,138,75,105,99,20,86,228,Borderline,Optimal,Normal,Heavy (16-25)
Dead,Other,,Female,58,62,130,85,155,112,0,78,280,High,High,Overweight,Non-smoker
Alive,,,Female,36,60.5,140,84,118,128,0,,216,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,36,68.75,193,90,132,134,0,,196,Desirable,High,Overweight,Non-smoker
Alive,,,Male,36,66.5,167,80,140,124,20,,230,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,55,Male,49,64.5,131,84,138,102,40,57,211,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,36,63,135,94,150,113,20,,250,High,High,Overweight,Heavy (16-25)
Alive,,,Female,53,68.25,168,104,190,120,0,,255,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,50,65.25,148,106,174,113,5,66,220,Borderline,High,Overweight,Light (1-5)
Dead,Other,,Female,46,61,131,76,114,117,20,72,165,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,63,Female,57,55,135,100,210,144,20,85,275,High,High,Overweight,Heavy (16-25)
Alive,,,Female,37,62.25,142,88,130,122,5,,213,Borderline,Normal,Overweight,Light (1-5)
Dead,Cancer,,Female,57,64,190,88,156,153,0,75,,,High,Overweight,Non-smoker
Alive,,,Female,32,63,136,70,128,113,5,,179,Desirable,Normal,Overweight,Light (1-5)
Alive,,53,Male,33,63.25,167,92,146,134,10,,210,Borderline,High,Overweight,Moderate (6-15)
Dead,Cancer,,Male,38,66.25,197,96,138,146,20,62,232,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,36,72,192,76,124,119,40,,168,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,39,64.25,208,78,136,168,25,,164,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,42,61,162,94,158,136,40,,184,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,55,68.5,164,88,132,114,10,81,240,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,36,64.5,131,82,150,106,10,,148,Desirable,High,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,72,Male,46,65.75,170,86,124,130,20,76,192,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,44,65.75,188,90,155,144,0,,185,Desirable,High,Overweight,Non-smoker
Alive,,,Female,53,60.5,180,92,148,165,0,,250,High,High,Overweight,Non-smoker
Alive,,,Male,56,67.75,182,88,154,130,10,,275,High,High,Overweight,Moderate (6-15)
Alive,,,Female,42,66,145,74,116,110,0,,205,Borderline,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Male,46,67,141,70,118,101,60,68,246,High,Optimal,Normal,Very Heavy (> 25)
Alive,,88,Male,58,65.75,163,84,134,124,0,,226,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,42,65.75,135,68,114,105,5,,230,Borderline,Optimal,Normal,Light (1-5)
Dead,Cerebral Vascular Disease,87,Female,59,58.5,198,104,200,192,0,91,250,High,High,Overweight,Non-smoker
Alive,,,Female,34,67.25,113,64,124,83,0,,185,Desirable,Normal,Underweight,Non-smoker
Alive,,,Male,53,67.75,225,80,128,161,0,,220,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,38,60,98,85,125,90,0,,155,Desirable,Normal,Underweight,Non-smoker
Alive,,,Male,51,62.75,134,100,150,110,60,,314,High,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,63,Female,51,61.5,138,90,140,123,20,75,250,High,High,Overweight,Heavy (16-25)
Dead,Other,,Male,57,66,146,85,125,108,0,87,206,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,40,60,142,84,116,130,0,,192,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,52,62,153,80,126,132,0,56,301,High,Normal,Overweight,Non-smoker
Dead,Unknown,,Male,48,67.5,157,90,118,112,0,58,242,High,High,Overweight,Non-smoker
Dead,Unknown,63,Female,51,63,157,114,214,131,0,77,257,High,High,Overweight,Non-smoker
Dead,Other,,Female,54,64.25,152,108,174,123,0,82,315,High,High,Overweight,Non-smoker
Alive,,,Female,35,66.75,226,68,126,171,10,,170,Desirable,Normal,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,78,Male,60,66.75,193,108,202,143,0,80,258,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,68,Female,46,61.25,216,80,145,193,5,70,,,High,Overweight,Light (1-5)
Alive,,,Female,44,59.5,121,90,120,114,10,,145,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Female,52,62.75,171,90,125,147,5,,263,High,High,Overweight,Light (1-5)
Dead,Cancer,58,Male,54,68.75,175,100,180,122,30,86,253,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,48,67.75,130,70,108,93,20,,195,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Female,35,64.25,130,78,115,105,0,,241,High,Optimal,Normal,Non-smoker
Alive,,,Female,31,62.5,87,84,132,75,20,,138,Desirable,Normal,Underweight,Heavy (16-25)
Alive,,,Female,37,62.5,130,86,130,112,,,195,Desirable,Normal,Overweight,
Alive,,,Female,37,62.25,119,88,132,103,5,,216,Borderline,Normal,Normal,Light (1-5)
Dead,Coronary Heart Disease,77,Female,55,61.5,150,90,170,134,0,79,225,Borderline,High,Overweight,Non-smoker
Alive,,54,Male,38,68.25,171,88,144,119,20,,291,High,High,Overweight,Heavy (16-25)
Alive,,,Female,35,62.25,127,82,122,109,10,,155,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,39,64.75,157,100,140,127,0,,200,Borderline,High,Overweight,Non-smoker
Alive,,,Male,46,73.5,150,80,124,90,15,,232,Borderline,Normal,Underweight,Moderate (6-15)
Alive,,,Female,56,62.5,155,80,122,134,0,,215,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,62,65,146,74,138,111,25,76,,,Normal,Overweight,Heavy (16-25)
Dead,Unknown,,Male,45,65.5,141,88,150,108,20,69,298,High,High,Normal,Heavy (16-25)
Alive,,,Male,40,70.75,149,84,118,98,30,,223,Borderline,Normal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,73,Female,59,59,167,108,212,158,0,79,263,High,High,Overweight,Non-smoker
Alive,,,Female,36,60.75,176,88,138,161,0,,195,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,63,Male,59,66.5,186,89,158,138,0,71,350,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,58,Male,56,65.5,124,90,176,95,15,68,170,Desirable,High,Normal,Moderate (6-15)
Alive,,,Male,41,65.5,160,84,130,122,0,,218,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,42,61.75,174,94,148,146,0,,250,High,High,Overweight,Non-smoker
Alive,,,Male,61,64,140,88,134,109,0,,276,High,Normal,Normal,Non-smoker
Alive,,,Male,36,64.5,139,90,120,109,15,,200,Borderline,High,Normal,Moderate (6-15)
Dead,Cancer,,Female,32,63,155,84,142,129,0,36,199,Desirable,High,Overweight,Non-smoker
Alive,,,Female,54,66,146,82,116,111,0,,244,High,Normal,Overweight,Non-smoker
Dead,Other,81,Female,59,59.5,133,95,150,125,0,85,233,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,52,Female,44,59.25,138,70,106,130,25,54,320,High,Optimal,Overweight,Heavy (16-25)
Alive,,75,Female,47,63.25,134,90,142,112,5,,224,Borderline,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,46,58.5,132,96,176,128,0,78,213,Borderline,High,Overweight,Non-smoker
Alive,,,Male,57,63.5,145,76,118,116,0,,238,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,35,64.5,125,68,112,101,5,,163,Desirable,Optimal,Normal,Light (1-5)
Dead,Coronary Heart Disease,62,Female,56,60,123,94,178,113,0,80,274,High,High,Overweight,Non-smoker
Alive,,,Male,49,66,159,90,126,118,0,,221,Borderline,High,Overweight,Non-smoker
Alive,,73,Female,59,59.5,101,86,138,95,0,,220,Borderline,Normal,Normal,Non-smoker
Dead,Cancer,,Male,58,69.75,191,75,124,129,0,78,215,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,56,67,183,72,108,131,0,68,163,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,33,63,117,72,118,98,0,,167,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,34,67.25,133,70,100,95,10,,173,Desirable,Optimal,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,64,Female,52,63.25,138,104,160,115,10,74,161,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Female,45,59.75,115,74,122,108,5,,215,Borderline,Normal,Normal,Light (1-5)
Alive,,,Male,53,61.25,128,70,128,108,20,,194,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,32,67.75,148,74,108,106,0,,180,Desirable,Optimal,Normal,Non-smoker
Dead,Unknown,,Male,56,69.25,215,114,172,145,0,68,210,Borderline,High,Overweight,Non-smoker
Alive,,,Female,38,61.5,149,72,110,133,0,,205,Borderline,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Male,42,67.5,184,82,135,131,60,64,345,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,49,62.75,172,100,170,148,0,,240,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,48,69.75,165,78,114,111,0,76,143,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,35,61.75,140,88,128,125,0,,198,Desirable,Normal,Overweight,Non-smoker
Dead,Other,,Male,40,67,126,78,132,90,15,60,196,Desirable,Normal,Underweight,Moderate (6-15)
Dead,Other,,Female,57,58,114,94,210,111,0,85,205,Borderline,High,Overweight,Non-smoker
Alive,,,Female,37,62.5,119,74,122,103,0,,218,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,47,Male,37,65,151,84,128,115,20,49,204,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,41,Male,35,68.5,185,104,176,128,60,51,263,High,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,56,Male,34,65,156,78,118,119,20,64,287,High,Optimal,Overweight,Heavy (16-25)
Dead,Other,,Female,49,60,129,90,145,118,5,81,287,High,High,Overweight,Light (1-5)
Alive,,,Female,33,63,120,70,115,100,20,,219,Borderline,Optimal,Normal,Heavy (16-25)
Alive,,,Female,32,60,150,75,110,138,0,,170,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,32,64,150,85,112,117,0,,265,High,Normal,Overweight,Non-smoker
Alive,,,Female,57,61.75,145,85,145,129,0,,282,High,High,Overweight,Non-smoker
Alive,,,Female,44,61.25,141,72,120,126,5,,266,High,Normal,Overweight,Light (1-5)
Alive,,,Male,37,67,176,86,118,126,60,,210,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Other,74,Female,62,58.25,139,90,140,135,0,86,264,High,High,Overweight,Non-smoker
Dead,Cancer,,Female,60,59.5,186,72,134,175,0,80,234,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,54,63.5,159,72,114,133,0,,296,High,Optimal,Overweight,Non-smoker
Alive,,,Female,31,60,117,78,110,107,0,,168,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,40,71,164,102,158,104,20,,234,Borderline,High,Normal,Heavy (16-25)
Dead,Unknown,,Male,60,67.25,184,82,136,131,0,86,201,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,45,62.5,110,72,142,95,20,,228,Borderline,High,Normal,Heavy (16-25)
Dead,Cancer,,Male,47,69,185,84,126,125,15,75,171,Desirable,Normal,Overweight,Moderate (6-15)
Alive,,,Male,56,65.25,113,74,116,86,5,,195,Desirable,Optimal,Underweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,49,62.5,143,90,132,123,0,81,226,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,57,,139,83,150,131,0,69,294,High,High,Overweight,Non-smoker
Alive,,,Female,41,63.5,115,92,136,96,0,,183,Desirable,High,Normal,Non-smoker
Dead,Coronary Heart Disease,74,Male,52,65.25,179,160,220,137,1,76,246,High,High,Overweight,Light (1-5)
Alive,,,Male,37,65,161,90,140,123,40,,243,High,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,43,61,107,80,125,96,0,75,202,Borderline,Normal,Normal,Non-smoker
Dead,Other,,Female,58,60,155,106,130,142,0,80,290,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,54,68,175,102,204,122,5,66,243,High,High,Overweight,Light (1-5)
Dead,Other,,Male,54,63.75,115,82,120,92,10,86,155,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,36,67.25,151,74,132,108,0,,200,Borderline,Normal,Normal,Non-smoker
Alive,,63,Female,33,69.25,177,82,138,123,10,,221,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Cancer,,Male,60,66.5,179,82,154,133,5,86,159,Desirable,High,Overweight,Light (1-5)
Dead,Other,,Female,36,65,135,74,122,105,0,50,189,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,39,67.75,169,80,140,121,0,,182,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,68,Female,52,65.25,148,106,160,116,0,70,284,High,High,Overweight,Non-smoker
Dead,Unknown,,Male,61,63,135,52,150,108,0,83,250,High,High,Normal,Non-smoker
Alive,,,Female,42,63,115,64,116,96,35,,192,Desirable,Optimal,Normal,Very Heavy (> 25)
Dead,Cancer,,Male,43,65.25,177,100,152,135,40,57,130,Desirable,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,59,Male,59,66.25,156,72,136,116,20,69,160,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,34,69.75,159,88,128,107,0,,164,Desirable,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,60,Female,40,65,145,66,114,113,0,70,230,Borderline,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,77,Female,59,63,131,98,158,109,0,81,310,High,High,Normal,Non-smoker
Dead,Cancer,56,Male,40,69.25,164,98,142,111,45,60,199,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,72,Female,44,61.5,151,82,138,135,0,,178,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,44,62.5,98,78,132,84,20,,216,Borderline,Normal,Underweight,Heavy (16-25)
Alive,,,Female,39,65.5,174,90,142,136,0,,179,Desirable,High,Overweight,Non-smoker
Alive,,71,Female,43,62,143,82,120,123,0,,230,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,47,69.75,169,100,142,114,0,,208,Borderline,High,Overweight,Non-smoker
Alive,,58,Female,52,62.5,181,100,160,156,0,,227,Borderline,High,Overweight,Non-smoker
Alive,,,Male,55,65,177,86,118,135,0,,197,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,67,Male,43,64.25,147,115,214,115,5,71,224,Borderline,High,Overweight,Light (1-5)
Dead,Unknown,,Female,57,63.25,140,96,154,117,0,89,244,High,High,Overweight,Non-smoker
Alive,,72,Female,52,64,162,70,110,131,5,,265,High,Optimal,Overweight,Light (1-5)
Alive,,,Female,50,61.75,110,70,110,98,30,,184,Desirable,Optimal,Normal,Very Heavy (> 25)
Alive,,,Male,49,67.75,169,96,128,121,0,,209,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,61,65,158,100,160,123,0,93,210,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,59,71,187,90,145,119,25,69,194,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,43,66,167,90,140,127,0,,190,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Female,41,64.25,132,90,135,106,0,57,254,High,High,Normal,Non-smoker
Dead,Cancer,,Male,58,67.25,187,88,132,134,0,84,175,Desirable,Normal,Overweight,Non-smoker
Dead,Unknown,81,Female,61,56.5,156,72,134,161,0,85,255,High,Normal,Overweight,Non-smoker
Alive,,,Male,32,63.25,167,74,118,134,40,,172,Desirable,Optimal,Overweight,Very Heavy (> 25)
Alive,,52,Female,50,61.5,156,128,188,139,0,,204,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,52,Male,42,66,176,90,130,130,0,66,235,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,57,Male,55,69.5,207,124,186,140,20,59,263,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,52,59.25,107,98,178,101,0,80,261,High,High,Normal,Non-smoker
Alive,,,Male,58,63.5,143,64,114,114,20,,234,Borderline,Optimal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,60,Male,56,70.75,198,104,172,130,0,84,200,Borderline,High,Overweight,Non-smoker
Alive,,,Female,45,67,168,90,150,124,20,,242,High,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,40,59.75,102,70,116,96,10,58,266,High,Optimal,Normal,Moderate (6-15)
Alive,,,Female,46,62.5,140,74,136,121,0,,180,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,37,66.75,159,72,110,118,5,,225,Borderline,Optimal,Overweight,Light (1-5)
Dead,Other,,Female,32,67,128,88,136,94,20,42,215,Borderline,Normal,Normal,Heavy (16-25)
Alive,,45,Male,33,69.5,167,84,128,113,20,,187,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,43,64.75,154,100,156,124,0,,180,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Male,56,68.25,140,82,128,97,40,74,195,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,59,59.25,210,100,200,198,0,79,209,Borderline,High,Overweight,Non-smoker
Alive,,48,Female,42,64.5,135,100,138,109,20,,321,High,High,Normal,Heavy (16-25)
Alive,,,Male,38,72.5,139,88,122,86,20,,198,Desirable,Normal,Underweight,Heavy (16-25)
Alive,,,Female,38,63,209,96,164,174,0,,182,Desirable,High,Overweight,Non-smoker
Alive,,,Female,50,62.75,151,100,128,130,0,,200,Borderline,High,Overweight,Non-smoker
Alive,,,Female,46,62.5,184,86,154,159,0,,163,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,46,65.5,164,98,136,125,25,60,250,High,High,Overweight,Heavy (16-25)
Alive,,,Male,54,70.5,173,84,124,114,0,,213,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,35,59.25,102,70,102,96,0,,173,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,36,69.25,130,76,138,88,35,,176,Desirable,Normal,Underweight,Very Heavy (> 25)
Alive,,,Female,57,63.75,127,62,110,106,0,,215,Borderline,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,62,Male,56,66.25,190,104,135,141,15,64,269,High,High,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,46,65,137,74,120,107,20,74,214,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,38,74.5,200,96,152,118,50,62,215,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,36,63,118,80,126,98,0,,176,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,39,67.25,150,58,102,107,40,,221,Borderline,Optimal,Normal,Very Heavy (> 25)
Alive,,,Male,40,67.5,141,88,142,101,40,,170,Desirable,High,Normal,Very Heavy (> 25)
Alive,,,Male,37,70.25,154,74,112,101,5,,267,High,Optimal,Normal,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,45,67.75,205,96,170,146,0,61,194,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Female,42,58,83,68,94,81,10,68,235,Borderline,Optimal,Underweight,Moderate (6-15)
Alive,,,Female,55,56.75,143,88,174,147,0,,255,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,84,Female,56,60.25,154,84,132,141,0,86,246,High,Normal,Overweight,Non-smoker
Alive,,,Female,36,63.5,131,66,104,109,5,,199,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Male,36,70,175,80,138,115,25,,221,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,41,62.75,168,94,144,138,5,69,260,High,High,Overweight,Light (1-5)
Alive,,69,Female,39,61.25,193,86,142,172,0,,220,Borderline,High,Overweight,Non-smoker
Alive,,,Female,32,64,149,76,124,120,0,,150,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,38,62.75,126,70,110,109,10,56,190,Desirable,Optimal,Normal,Moderate (6-15)
Dead,Cancer,,Male,40,70,172,94,146,113,45,58,211,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,59,64.75,186,76,134,150,5,91,,,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,73,Male,57,70.25,172,94,164,113,15,77,260,High,High,Overweight,Moderate (6-15)
Alive,,,Female,51,60.75,200,130,220,183,1,,250,High,High,Overweight,Light (1-5)
Dead,Cancer,,Male,49,65.25,168,88,148,128,15,63,275,High,High,Overweight,Moderate (6-15)
Alive,,,Male,34,68.5,154,82,142,107,0,,234,Borderline,High,Normal,Non-smoker
Alive,,,Male,44,71.75,210,80,130,134,5,,225,Borderline,Normal,Overweight,Light (1-5)
Dead,Other,,Male,54,69.25,203,102,160,137,0,78,164,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Female,49,67,151,98,170,111,0,79,248,High,High,Overweight,Non-smoker
Alive,,,Female,37,64.5,160,88,154,129,0,,289,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,41,61.5,191,104,160,171,20,61,264,High,High,Overweight,Heavy (16-25)
Alive,,,Female,38,62.5,166,90,126,143,0,,263,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,61,Female,53,63.25,197,104,164,164,0,85,275,High,High,Overweight,Non-smoker
Alive,,,Female,34,62.25,139,84,132,120,0,,250,High,Normal,Overweight,Non-smoker
Dead,Other,59,Male,43,66,183,92,154,136,20,65,312,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,55,65.75,157,97,170,123,0,71,170,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,63,Male,57,66.5,154,138,230,114,20,75,200,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,48,62.5,118,92,158,102,5,,205,Borderline,High,Normal,Light (1-5)
Alive,,,Male,46,65.75,150,74,134,115,30,,275,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,37,62,148,78,118,128,0,,194,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,49,60,125,94,178,115,0,,352,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,48,66.5,209,94,144,155,30,58,216,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,60,Female,32,59.5,148,88,140,140,0,,235,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,40,62.75,201,88,140,173,5,,276,High,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,43,Male,35,69.5,192,88,125,130,40,55,231,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Unknown,,Female,61,61.5,176,85,135,157,0,91,202,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,60,64,150,88,138,121,0,,240,High,Normal,Overweight,Non-smoker
Alive,,,Female,40,61.25,100,75,130,89,0,,187,Desirable,Normal,Underweight,Non-smoker
Alive,,58,Male,36,67,159,66,112,114,15,,225,Borderline,Optimal,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Female,48,60.5,131,115,185,120,0,70,244,High,High,Overweight,Non-smoker
Dead,Other,,Male,57,64.5,173,100,154,135,15,89,220,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Male,39,69,203,74,112,137,0,,206,Borderline,Optimal,Overweight,Non-smoker
Dead,Cancer,,Female,44,65.75,208,98,156,163,0,76,165,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,73,Male,55,64.75,167,78,128,130,20,75,167,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,38,65.5,151,80,130,115,5,,236,Borderline,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,70,Male,44,65.75,155,84,134,118,0,72,240,High,Normal,Overweight,Non-smoker
Alive,,,Male,35,68.25,166,88,132,115,5,,230,Borderline,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,68,Male,46,71.5,207,98,142,132,40,70,219,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,38,63.75,120,72,126,100,15,,185,Desirable,Normal,Normal,Moderate (6-15)
Dead,Other,,Male,59,62.25,137,110,160,112,25,63,209,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,40,62.75,171,80,106,147,20,48,198,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Female,46,63.25,142,82,140,118,0,,217,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,42,63.5,118,76,110,98,40,,206,Borderline,Optimal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,60,Male,46,69.75,193,108,166,130,5,62,300,High,High,Overweight,Light (1-5)
Alive,,,Female,36,65.75,127,84,142,99,10,,200,Borderline,High,Normal,Moderate (6-15)
Alive,,,Female,49,63.25,128,84,144,107,0,,213,Borderline,High,Normal,Non-smoker
Alive,,,Male,38,68.75,137,74,118,95,20,,174,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Cancer,,Male,49,65.5,140,106,160,107,30,79,267,High,High,Normal,Very Heavy (> 25)
Dead,Cancer,,Female,56,65.25,130,76,118,102,0,84,267,High,Optimal,Normal,Non-smoker
Dead,Cancer,,Male,54,70.25,200,88,158,132,20,62,276,High,High,Overweight,Heavy (16-25)
Alive,,,Male,37,66.5,133,80,114,99,40,,178,Desirable,Normal,Normal,Very Heavy (> 25)
Alive,,65,Male,35,68.5,173,84,148,120,20,,255,High,High,Overweight,Heavy (16-25)
Dead,Other,,Female,43,58.75,152,85,140,148,1,51,156,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Male,34,73.25,201,85,135,121,0,,191,Desirable,Normal,Overweight,Non-smoker
Alive,,61,Female,39,62,136,82,118,117,15,,195,Desirable,Normal,Overweight,Moderate (6-15)
Dead,Other,63,Female,49,63.75,152,84,136,127,0,73,227,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,54,65.75,198,86,174,151,0,66,194,Desirable,High,Overweight,Non-smoker
Alive,,,Female,31,63.75,138,88,138,115,5,,161,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,55,60,153,86,156,140,0,,271,High,High,Overweight,Non-smoker
Alive,,65,Female,59,60.5,168,72,146,154,0,,219,Borderline,High,Overweight,Non-smoker
Alive,,,Female,36,62.25,132,60,104,114,0,,190,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,34,62,157,78,110,135,5,,160,Desirable,Optimal,Overweight,Light (1-5)
Alive,,,Male,38,73,246,94,124,148,0,,174,Desirable,High,Overweight,Non-smoker
Alive,,,Female,49,62.25,129,80,120,111,10,,218,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,67,Male,45,65.25,142,85,120,108,20,,236,Borderline,Normal,Normal,Heavy (16-25)
Alive,,64,Male,38,71,193,65,125,123,15,,229,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,37,59.25,108,90,115,102,10,,220,Borderline,High,Normal,Moderate (6-15)
Alive,,,Female,50,62,174,100,180,150,0,,211,Borderline,High,Overweight,Non-smoker
Alive,,,Male,32,67.5,164,76,134,117,35,,224,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,33,61.25,126,92,134,113,0,,180,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,58,61.75,150,74,152,134,0,76,221,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,60,65.75,135,94,176,103,0,66,235,Borderline,High,Normal,Non-smoker
Alive,,,Female,40,61,127,76,116,113,40,,264,High,Optimal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,40,62,133,86,148,115,20,62,170,Desirable,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,44,63,164,80,144,131,30,64,238,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,47,Female,47,62.5,190,90,160,164,0,69,255,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,51,65,167,92,172,127,0,75,232,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,34,67,159,80,118,114,20,60,229,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Male,51,63.75,113,68,96,90,20,81,250,High,Optimal,Underweight,Heavy (16-25)
Alive,,81,Female,57,62,122,68,148,105,5,,214,Borderline,High,Normal,Light (1-5)
Alive,,,Male,37,65,149,78,124,114,20,,210,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,38,63.5,104,82,112,87,15,,174,Desirable,Normal,Underweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,43,71,135,70,155,86,5,47,267,High,High,Underweight,Light (1-5)
Alive,,,Female,54,64.75,133,76,126,107,5,,263,High,Normal,Normal,Light (1-5)
Dead,Cancer,,Male,43,68.25,171,90,135,119,30,73,216,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,58,56.75,129,98,134,133,0,,224,Borderline,High,Overweight,Non-smoker
Alive,,,Male,33,66,172,76,118,127,0,,205,Borderline,Optimal,Overweight,Non-smoker
Dead,Cancer,,Male,47,64.25,165,100,152,129,5,79,186,Desirable,High,Overweight,Light (1-5)
Alive,,,Female,44,60.25,120,76,132,110,5,,164,Desirable,Normal,Overweight,Light (1-5)
Dead,Cancer,,Male,54,67.5,168,82,134,120,0,64,250,High,Normal,Overweight,Non-smoker
Alive,,59,Female,31,66.25,125,70,122,95,20,,212,Borderline,Normal,Normal,Heavy (16-25)
Dead,Unknown,42,Male,42,71.25,211,92,140,134,30,60,247,High,High,Overweight,Very Heavy (> 25)
Dead,Unknown,,Male,50,71,148,76,120,94,20,72,190,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,46,71.25,135,78,152,86,20,,235,Borderline,High,Underweight,Heavy (16-25)
Alive,,,Male,37,65.75,144,72,138,110,0,,244,High,Normal,Overweight,Non-smoker
Alive,,,Female,46,63.25,126,78,130,105,0,,204,Borderline,Normal,Normal,Non-smoker
Alive,,63,Male,43,69.5,215,88,136,145,50,,192,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,43,68,153,76,142,106,30,,240,High,High,Normal,Very Heavy (> 25)
Alive,,,Female,46,62.25,120,72,112,103,0,,207,Borderline,Optimal,Normal,Non-smoker
Alive,,,Male,32,66.5,141,84,126,104,15,,210,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Male,40,64,159,90,140,124,40,,205,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,51,61.5,141,95,160,126,0,81,190,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,59,64.25,170,110,180,133,0,91,190,Desirable,High,Overweight,Non-smoker
Alive,,,Female,53,60.75,143,90,162,131,15,,285,High,High,Overweight,Moderate (6-15)
Alive,,83,Female,53,61.75,152,80,146,136,0,,295,High,High,Overweight,Non-smoker
Alive,,56,Female,46,61.75,138,82,114,123,0,,215,Borderline,Normal,Overweight,Non-smoker
Dead,Unknown,,Male,53,66,172,90,126,127,0,85,211,Borderline,High,Overweight,Non-smoker
Alive,,,Female,46,67,154,80,128,113,5,,263,High,Normal,Overweight,Light (1-5)
Alive,,44,Female,40,61,207,80,120,185,0,,274,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Male,34,69.25,201,94,150,136,0,64,209,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Female,44,57.25,170,78,168,170,5,68,230,Borderline,High,Overweight,Light (1-5)
Dead,Cancer,,Female,32,62.25,128,68,118,110,15,54,209,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,42,64.5,103,78,132,83,10,,225,Borderline,Normal,Underweight,Moderate (6-15)
Dead,Unknown,,Female,35,66.25,130,76,122,98,15,67,265,High,Normal,Normal,Moderate (6-15)
Dead,Unknown,,Male,56,62.5,115,90,160,94,5,68,290,High,High,Normal,Light (1-5)
Alive,,,Female,45,65,136,88,158,106,0,,210,Borderline,High,Normal,Non-smoker
Alive,,74,Male,50,67,147,84,124,105,20,,319,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,32,63,122,80,136,102,0,,200,Borderline,Normal,Normal,Non-smoker
Dead,Unknown,,Female,62,64.25,143,100,170,115,0,88,256,High,High,Overweight,Non-smoker
Alive,,,Male,34,63.5,120,76,124,96,20,,205,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,37,66,157,88,144,116,15,,205,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Male,57,70.75,174,74,124,114,0,,250,High,Normal,Overweight,Non-smoker
Alive,,,Female,51,60.75,208,98,162,191,0,,202,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,57,68,157,90,138,112,1,79,311,High,High,Overweight,Light (1-5)
Alive,,,Female,55,60.25,182,102,160,167,0,,218,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,56,61.5,123,92,160,110,0,64,225,Borderline,High,Overweight,Non-smoker
Alive,,,Male,47,69.75,193,88,150,130,20,,252,High,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,64,Male,58,68,183,98,148,127,0,88,264,High,High,Overweight,Non-smoker
Alive,,,Female,45,64,133,80,115,107,1,,205,Borderline,Normal,Normal,Light (1-5)
Dead,Cerebral Vascular Disease,,Male,51,66.25,181,90,146,134,20,77,270,High,High,Overweight,Heavy (16-25)
Dead,Other,,Female,49,65,180,80,136,141,0,63,215,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,43,71.25,204,90,130,130,5,,217,Borderline,High,Overweight,Light (1-5)
Dead,Other,62,Male,60,68.25,190,72,140,132,15,90,174,Desirable,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,74,Female,56,61.25,130,118,196,116,10,78,321,High,High,Overweight,Moderate (6-15)
Alive,,,Male,36,66.75,173,74,118,128,15,,162,Desirable,Optimal,Overweight,Moderate (6-15)
Alive,,62,Female,52,62.25,135,70,130,116,0,,300,High,Normal,Overweight,Non-smoker
Alive,,,Male,55,66.75,162,80,110,120,20,,224,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,40,67,124,70,110,91,10,,202,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Female,35,62.25,150,68,108,129,20,,165,Desirable,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,56,60,147,70,138,135,5,,227,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Male,52,73.25,163,60,110,98,10,,209,Borderline,Optimal,Normal,Moderate (6-15)
Alive,,,Female,37,62,109,70,110,94,0,,249,High,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,46,Male,40,69.25,142,88,134,96,20,54,,,Normal,Normal,Heavy (16-25)
Alive,,,Female,43,63.75,128,88,152,107,0,,213,Borderline,High,Normal,Non-smoker
Alive,,,Female,38,63,138,86,126,115,0,,230,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,45,62.25,130,92,144,112,0,,177,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,70,Male,52,69.5,175,80,156,118,15,84,242,High,High,Overweight,Moderate (6-15)
Alive,,,Female,38,62,127,90,154,109,0,,170,Desirable,High,Normal,Non-smoker
Alive,,,Female,41,61,117,92,160,104,20,,175,Desirable,High,Normal,Heavy (16-25)
Alive,,,Male,39,67.5,142,80,128,101,25,,230,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,43,60.75,131,92,130,120,0,,218,Borderline,High,Overweight,Non-smoker
Alive,,,Male,55,64.5,142,90,140,111,0,,253,High,High,Overweight,Non-smoker
Alive,,,Female,50,61,164,106,150,146,5,,263,High,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,53,Female,53,61.25,203,98,164,181,0,69,237,Borderline,High,Overweight,Non-smoker
Alive,,59,Female,41,63.5,225,94,150,188,0,,235,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,44,67.5,165,88,130,118,15,68,205,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,75,Female,61,61.5,188,95,152,168,0,77,235,Borderline,High,Overweight,Non-smoker
Alive,,,Female,39,62.75,123,68,106,106,0,,228,Borderline,Optimal,Normal,Non-smoker
Dead,Other,71,Female,49,62.75,228,150,300,197,0,77,326,High,High,Overweight,Non-smoker
Alive,,,Female,47,61.75,123,76,124,110,0,,196,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,56,63.5,144,82,150,120,5,,276,High,High,Overweight,Light (1-5)
Dead,Other,,Female,52,55,136,96,188,145,0,80,263,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,62,60,118,90,156,102,0,72,194,Desirable,High,Normal,Non-smoker
Dead,Coronary Heart Disease,76,Male,52,66,176,76,138,130,5,78,248,High,Normal,Overweight,Light (1-5)
Alive,,,Female,55,61.25,216,92,164,193,0,,309,High,High,Overweight,Non-smoker
Dead,Cancer,,Male,40,68.5,204,104,144,142,20,56,236,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,36,65.25,159,84,132,124,0,48,172,Desirable,Normal,Overweight,Non-smoker
Dead,Unknown,,Male,56,64.5,140,72,120,109,35,88,215,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,71,Female,41,67.25,183,80,134,135,0,,128,Desirable,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,72,Female,54,60,133,112,220,122,0,74,237,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,67,Male,53,65.75,167,98,174,127,5,69,229,Borderline,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,44,65.75,151,72,134,118,40,74,200,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,44,65.5,119,72,120,91,20,70,209,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,55,64.5,150,98,148,121,0,79,260,High,High,Overweight,Non-smoker
Dead,Unknown,,Male,50,67.5,195,104,190,139,0,82,232,Borderline,High,Overweight,Non-smoker
Alive,,,Female,38,59.5,161,98,142,152,0,,243,High,High,Overweight,Non-smoker
Alive,,,Male,42,65.5,176,94,134,134,20,,,,High,Overweight,Heavy (16-25)
Dead,Other,,Female,61,60.75,123,76,130,113,5,81,243,High,Normal,Overweight,Light (1-5)
Alive,,,Female,49,62,122,94,136,105,0,,247,High,High,Normal,Non-smoker
Alive,,51,Female,33,63.75,128,88,120,107,0,,244,High,Normal,Normal,Non-smoker
Dead,Other,,Female,40,61.25,103,88,128,92,15,66,200,Borderline,Normal,Normal,Moderate (6-15)
Alive,,,Male,45,66,143,98,150,106,20,,244,High,High,Normal,Heavy (16-25)
Dead,Other,,Male,57,69.75,194,78,126,131,5,89,161,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,34,61.5,120,70,124,107,0,,173,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,33,68.5,192,75,124,133,0,,217,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,38,63.5,132,68,108,110,5,,234,Borderline,Optimal,Overweight,Light (1-5)
Alive,,50,Female,34,59.5,136,64,112,128,0,,175,Desirable,Optimal,Overweight,Non-smoker
Dead,Cancer,,Male,35,65.5,146,88,120,111,25,57,240,High,Normal,Overweight,Heavy (16-25)
Alive,,,Female,40,65.5,137,58,100,107,20,,278,High,Optimal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,70,Male,46,69.25,168,90,174,114,30,72,238,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,59,Female,59,60.5,171,74,128,157,0,77,155,Desirable,Normal,Overweight,Non-smoker
Dead,Unknown,,Female,51,62.5,128,90,142,110,35,67,265,High,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,70,Male,54,70.75,198,104,166,130,40,72,200,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,53,Female,33,62.75,230,110,160,198,1,55,230,Borderline,High,Overweight,Light (1-5)
Alive,,,Female,45,60.25,161,90,160,148,0,,242,High,High,Overweight,Non-smoker
Alive,,,Female,35,61.5,149,82,130,133,0,,178,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,49,65,114,92,192,89,10,73,271,High,High,Underweight,Moderate (6-15)
Dead,Unknown,,Female,53,59.5,182,102,164,172,5,85,250,High,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,51,61,108,70,132,96,5,61,225,Borderline,Normal,Normal,Light (1-5)
Alive,,,Female,41,62,155,74,132,134,0,,200,Borderline,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,51,66.5,151,108,172,112,30,73,209,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,78,Female,56,59.75,98,85,160,92,20,80,319,High,High,Normal,Heavy (16-25)
Alive,,,Male,32,68.25,178,110,160,124,15,,165,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Male,40,68.5,164,68,114,114,35,,200,Borderline,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Female,47,62,162,70,118,140,0,,226,Borderline,Optimal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,59,Male,57,63.75,151,112,182,121,0,61,184,Desirable,High,Overweight,Non-smoker
Dead,Unknown,,Male,45,69.25,179,98,160,121,20,65,208,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,35,65.75,136,104,172,104,0,,216,Borderline,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,59,64.5,160,72,132,129,0,91,195,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,47,68,194,86,144,135,35,,200,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,61,Male,49,67.25,193,114,208,138,20,63,242,High,High,Overweight,Heavy (16-25)
Alive,,,Female,42,59.5,118,82,138,111,0,,268,High,Normal,Overweight,Non-smoker
Dead,Unknown,,Male,43,67.5,129,74,132,92,5,57,145,Desirable,Normal,Normal,Light (1-5)
Alive,,,Male,55,64.25,166,104,172,130,0,,180,Desirable,High,Overweight,Non-smoker
Alive,,,Female,52,59.5,156,82,120,147,0,,234,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,37,59,135,80,114,127,10,,275,High,Normal,Overweight,Moderate (6-15)
Alive,,,Male,35,71.25,177,90,120,113,0,,285,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,62,Female,56,61,163,94,190,146,15,80,235,Borderline,High,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,66,Male,60,59.25,137,96,164,121,5,72,235,Borderline,High,Overweight,Light (1-5)
Alive,,,Male,34,64,153,76,124,120,0,,144,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,32,61.75,153,98,150,137,5,,248,High,High,Overweight,Light (1-5)
Alive,,,Female,36,63.75,183,80,128,153,10,,217,Borderline,Normal,Overweight,Moderate (6-15)
Alive,,,Female,40,62.75,127,78,146,109,0,,237,Borderline,High,Normal,Non-smoker
Alive,,61,Male,45,60.25,133,84,132,115,15,,247,High,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,78,Male,60,65,126,76,158,96,0,80,165,Desirable,High,Normal,Non-smoker
Alive,,,Female,33,62,117,78,112,101,0,,176,Desirable,Optimal,Normal,Non-smoker
Dead,Other,,Male,34,68.5,144,92,132,100,40,44,155,Desirable,High,Normal,Very Heavy (> 25)
Alive,,,Female,42,62,147,74,134,127,1,,261,High,Normal,Overweight,Light (1-5)
Alive,,,Male,32,68.5,166,82,132,115,0,,208,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,35,61,107,54,106,96,5,,180,Desirable,Optimal,Normal,Light (1-5)
Dead,Cancer,,Female,41,65.25,108,72,116,84,5,57,196,Desirable,Optimal,Underweight,Light (1-5)
Alive,,,Male,37,68.5,167,80,110,116,20,,205,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,62,65.5,174,89,216,136,0,70,,,High,Overweight,Non-smoker
Alive,,63,Female,47,61,300,120,208,268,0,,185,Desirable,High,Overweight,Non-smoker
Dead,Cancer,63,Female,49,67.5,156,104,172,115,0,73,235,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Female,43,63.25,174,90,148,145,0,69,185,Desirable,High,Overweight,Non-smoker
Alive,,,Male,49,66.5,160,84,120,119,20,,194,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Other,,Male,60,65.25,188,92,138,144,0,78,220,Borderline,High,Overweight,Non-smoker
Alive,,,Female,41,60.25,109,84,124,100,0,,194,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,39,66.5,153,82,144,113,40,,190,Desirable,High,Overweight,Very Heavy (> 25)
Alive,,,Female,49,62.25,117,80,128,101,10,,230,Borderline,Normal,Normal,Moderate (6-15)
Alive,,69,Male,53,70.25,182,72,142,120,10,,190,Desirable,High,Overweight,Moderate (6-15)
Alive,,,Female,32,58.75,106,85,110,103,25,,194,Desirable,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,78,Female,52,63.5,119,110,168,99,0,80,305,High,High,Normal,Non-smoker
Dead,Cancer,77,Male,47,63.5,185,88,162,148,50,79,229,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,49,56.5,130,82,140,134,0,73,212,Borderline,Normal,Overweight,Non-smoker
Alive,,60,Male,54,66.5,137,68,122,101,20,,189,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,40,63.5,175,92,140,146,0,,216,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,58,60,146,70,108,134,20,84,289,High,Optimal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,38,64.75,126,104,162,102,0,66,180,Desirable,High,Normal,Non-smoker
Dead,Coronary Heart Disease,52,Male,52,66,137,66,118,101,20,66,266,High,Optimal,Normal,Heavy (16-25)
Alive,,62,Female,40,63.75,165,96,158,138,0,,225,Borderline,High,Overweight,Non-smoker
Alive,,,Female,52,65.25,181,102,154,141,20,,210,Borderline,High,Overweight,Heavy (16-25)
Dead,Other,,Female,52,59,158,92,130,149,0,82,186,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Female,56,63,174,94,162,145,0,72,273,High,High,Overweight,Non-smoker
Alive,,,Female,38,60.5,129,68,128,118,0,,180,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,57,63,180,84,142,150,0,,242,High,High,Overweight,Non-smoker
Alive,,,Female,53,61,151,82,134,135,0,,330,High,Normal,Overweight,Non-smoker
Dead,Other,,Male,54,65.75,175,100,146,134,20,86,185,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,44,58.75,125,80,132,121,0,,224,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,33,72,168,94,138,104,0,,225,Borderline,High,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,62,65.25,168,120,230,131,0,70,244,High,High,Overweight,Non-smoker
Dead,Unknown,61,Male,59,66.5,169,94,146,125,25,71,271,High,High,Overweight,Heavy (16-25)
Alive,,,Female,36,64.5,125,74,130,101,20,,245,High,Normal,Normal,Heavy (16-25)
Alive,,,Male,32,66.75,185,92,150,137,20,,202,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,63,Female,43,65,197,94,186,154,0,65,262,High,High,Overweight,Non-smoker
Alive,,,Female,46,61.5,180,82,132,161,5,,225,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,52,65.25,138,78,148,108,0,,270,High,High,Normal,Non-smoker
Alive,,,Female,48,63.5,209,104,182,174,1,,296,High,High,Overweight,Light (1-5)
Alive,,,Female,49,65,171,114,184,134,5,,275,High,High,Overweight,Light (1-5)
Dead,Cerebral Vascular Disease,65,Female,57,61.75,142,90,174,127,0,89,266,High,High,Overweight,Non-smoker
Alive,,88,Female,62,62.5,158,78,130,136,0,,225,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,44,67.75,137,76,126,98,,,192,Desirable,Normal,Normal,
Dead,Coronary Heart Disease,68,Female,54,60.25,133,88,132,122,0,70,329,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,51,69.5,179,104,166,121,25,61,190,Desirable,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,36,Male,34,68.75,150,70,112,104,20,38,258,High,Optimal,Normal,Heavy (16-25)
Alive,,,Male,51,70.5,207,78,124,136,0,,242,High,Normal,Overweight,Non-smoker
Alive,,,Male,46,66,140,80,114,104,0,,198,Desirable,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,67,Male,61,58.75,145,80,148,132,0,77,241,High,High,Overweight,Non-smoker
Alive,,,Male,48,59.25,114,76,120,101,20,,259,High,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,57,64.5,137,68,112,110,0,89,231,Borderline,Optimal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,52,60.5,105,84,156,96,0,80,209,Borderline,High,Normal,Non-smoker
Dead,Coronary Heart Disease,74,Male,60,61.5,177,92,140,149,0,78,229,Borderline,High,Overweight,Non-smoker
Alive,,,Male,41,67,141,88,140,101,0,,232,Borderline,Normal,Normal,Non-smoker
Dead,Cancer,,Female,59,62.5,140,86,144,121,0,73,269,High,High,Overweight,Non-smoker
Alive,,,Female,32,63,106,72,108,88,20,,154,Desirable,Optimal,Underweight,Heavy (16-25)
Dead,Cancer,,Female,35,66,128,80,140,97,0,51,226,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,33,69,161,98,148,109,20,,342,High,High,Normal,Heavy (16-25)
Dead,Cancer,,Female,50,62.5,146,80,146,126,0,76,318,High,High,Overweight,Non-smoker
Alive,,79,Male,55,66.5,158,88,142,117,20,,178,Desirable,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,64,Female,38,64,120,72,122,97,15,66,198,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Male,38,66.25,168,80,118,124,0,,180,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,43,65.25,122,84,136,95,5,,193,Desirable,Normal,Normal,Light (1-5)
Alive,,,Male,40,68,153,94,146,106,0,,270,High,High,Normal,Non-smoker
Dead,Unknown,,Male,36,71,155,95,132,99,10,62,178,Desirable,High,Normal,Moderate (6-15)
Alive,,,Female,35,62,125,70,118,108,20,,250,High,Optimal,Normal,Heavy (16-25)
Dead,Cancer,,Male,60,61.75,155,78,134,130,10,76,260,High,Normal,Overweight,Moderate (6-15)
Alive,,,Male,32,66.75,156,66,122,116,25,,203,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,53,Female,47,59.5,131,96,184,124,0,,206,Borderline,High,Overweight,Non-smoker
Alive,,,Male,50,61.25,140,80,124,118,0,,245,High,Normal,Overweight,Non-smoker
Dead,Other,,Female,34,59.5,150,90,144,142,20,56,171,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Male,44,60.75,133,96,124,115,0,,225,Borderline,High,Overweight,Non-smoker
Alive,,,Male,36,66.25,145,90,160,107,25,,275,High,High,Normal,Heavy (16-25)
Alive,,,Female,33,60,136,76,126,125,0,,250,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,51,Male,41,69.75,201,120,172,136,30,53,290,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,33,68.25,130,66,110,90,20,,225,Borderline,Optimal,Underweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,50,62,124,110,172,107,5,62,260,High,High,Normal,Light (1-5)
Alive,,,Male,54,68.75,178,105,160,124,10,,216,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,47,62.75,120,74,124,103,0,,216,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,67,Male,51,65.5,163,98,150,124,20,79,255,High,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,53,64.5,155,90,150,121,10,71,242,High,High,Overweight,Moderate (6-15)
Alive,,,Female,42,58.5,106,72,120,103,0,,200,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,35,65,143,75,120,109,40,,220,Borderline,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,43,65,175,100,150,137,0,,178,Desirable,High,Overweight,Non-smoker
Dead,Other,,Male,58,64.75,195,92,174,152,0,82,203,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,59,62,183,100,168,158,0,71,204,Borderline,High,Overweight,Non-smoker
Alive,,,Female,32,61.75,161,80,128,144,0,,210,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,45,62.5,137,86,140,118,30,,271,High,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,48,Male,46,67.5,155,124,195,111,0,50,189,Desirable,High,Overweight,Non-smoker
Dead,Other,,Female,50,64.5,135,80,134,109,5,56,330,High,Normal,Normal,Light (1-5)
Alive,,,Female,35,64,183,90,140,148,0,,180,Desirable,High,Overweight,Non-smoker
Alive,,,Female,36,64,162,70,104,131,0,,170,Desirable,Optimal,Overweight,Non-smoker
Alive,,50,Male,40,65.75,193,102,156,147,0,,225,Borderline,High,Overweight,Non-smoker
Alive,,,Female,42,62.5,124,70,122,107,0,,215,Borderline,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Male,59,66,140,80,150,104,0,89,220,Borderline,High,Normal,Non-smoker
Alive,,,Female,38,63,210,94,134,175,0,,179,Desirable,High,Overweight,Non-smoker
Dead,Other,,Male,47,65.5,155,94,146,118,30,53,253,High,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,42,64.5,145,80,114,117,20,72,225,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,59,Male,59,68.5,126,94,150,88,20,67,210,Borderline,High,Underweight,Heavy (16-25)
Alive,,70,Female,50,62.5,142,90,144,122,0,,225,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,59,68,168,120,184,117,0,79,215,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,51,63.75,175,96,164,140,20,79,350,High,High,Overweight,Heavy (16-25)
Alive,,,Female,32,60.75,94,60,142,86,5,,266,High,High,Underweight,Light (1-5)
Dead,Cancer,,Female,56,61,121,92,184,108,0,76,337,High,High,Normal,Non-smoker
Alive,,,Female,53,62,200,94,156,172,0,,221,Borderline,High,Overweight,Non-smoker
Dead,Unknown,,Male,57,65.5,214,86,168,163,20,69,221,Borderline,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,59,65.5,131,86,138,100,20,89,180,Desirable,Normal,Normal,Heavy (16-25)
Alive,,75,Male,47,69,173,82,132,117,30,,183,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,44,64,124,92,136,100,0,,212,Borderline,High,Normal,Non-smoker
Dead,Cancer,,Male,54,65.5,179,100,184,137,0,78,188,Desirable,High,Overweight,Non-smoker
Alive,,,Female,53,58,209,90,138,203,0,,,,High,Overweight,Non-smoker
Alive,,,Female,54,59.25,168,76,120,158,0,,269,High,Normal,Overweight,Non-smoker
Alive,,,Female,42,63.25,115,86,134,96,10,,188,Desirable,Normal,Normal,Moderate (6-15)
Dead,Other,64,Male,44,65.25,182,96,144,139,25,76,220,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,42,62.5,180,80,120,148,0,72,200,Borderline,Normal,Overweight,Non-smoker
Alive,,50,Male,38,72.5,177,84,134,110,25,,241,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,66,Female,46,61.25,230,120,172,205,0,76,232,Borderline,High,Overweight,Non-smoker
Dead,Cancer,60,Female,34,63.75,208,92,128,173,30,62,201,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Male,61,67.25,166,100,154,119,20,,313,High,High,Overweight,Heavy (16-25)
Alive,,,Male,36,67.25,168,72,112,120,0,,140,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,36,62,111,62,94,91,45,,199,Desirable,Optimal,Normal,Very Heavy (> 25)
Dead,Cancer,,Female,48,62.25,170,108,174,147,10,62,245,High,High,Overweight,Moderate (6-15)
Dead,Other,,Female,60,61.75,117,84,150,104,20,92,260,High,High,Normal,Heavy (16-25)
Alive,,,Male,34,64,127,94,132,99,15,,175,Desirable,High,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,77,Female,57,58,114,92,160,111,0,79,284,High,High,Overweight,Non-smoker
Alive,,,Female,51,62,154,78,138,133,0,,245,High,Normal,Overweight,Non-smoker
Alive,,78,Female,60,60.5,141,94,182,129,0,,259,High,High,Overweight,Non-smoker
Alive,,60,Male,36,66,180,84,126,133,0,,242,High,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,48,63.5,153,60,90,128,10,62,271,High,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,41,60.5,156,94,138,143,0,,259,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,57,Male,43,63.25,183,92,134,146,20,63,230,Borderline,High,Overweight,Heavy (16-25)
Dead,Other,,Male,54,67.75,171,80,136,122,20,82,237,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Other,,Male,33,66.25,191,84,144,141,30,41,235,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,69,Male,43,71,191,100,152,122,20,71,220,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,52,58.5,139,90,152,135,0,78,225,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,48,64,133,70,140,107,5,68,271,High,Normal,Normal,Light (1-5)
Alive,,60,Male,46,68.75,174,90,146,121,35,,260,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,39,61.25,123,74,124,110,5,,224,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,42,62,143,80,130,123,30,,209,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,61,Male,43,66.75,190,110,165,141,0,,202,Borderline,High,Overweight,Non-smoker
Alive,,,Male,57,65.5,149,88,136,114,20,,232,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,55,62.25,158,80,118,136,30,,204,Borderline,Normal,Overweight,Very Heavy (> 25)
Dead,Unknown,,Female,61,61.25,106,92,159,95,10,79,,,High,Normal,Moderate (6-15)
Alive,,,Female,54,62,181,96,154,156,0,,248,High,High,Overweight,Non-smoker
Alive,,,Male,33,68,149,90,132,103,40,,210,Borderline,High,Normal,Very Heavy (> 25)
Alive,,56,Male,46,63.5,143,90,124,114,0,,236,Borderline,High,Overweight,Non-smoker
Dead,Other,77,Female,61,63.25,219,80,130,183,0,89,247,High,Normal,Overweight,Non-smoker
Alive,,,Male,37,68,152,80,136,106,5,,228,Borderline,Normal,Normal,Light (1-5)
Dead,Cerebral Vascular Disease,,Female,39,60,107,85,125,98,0,59,196,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,46,68,179,90,142,124,20,,165,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,38,61.25,145,80,122,129,0,,266,High,Normal,Overweight,Non-smoker
Alive,,,Male,37,66,147,100,140,109,0,,232,Borderline,High,Normal,Non-smoker
Alive,,,Female,34,62.25,151,80,130,130,0,,350,High,Normal,Overweight,Non-smoker
Alive,,55,Male,35,66.5,220,70,180,163,20,,320,High,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,60,Male,50,69,153,74,120,103,30,62,200,Borderline,Normal,Normal,Very Heavy (> 25)
Dead,Other,,Male,58,62.5,120,94,150,98,20,86,281,High,High,Normal,Heavy (16-25)
Dead,Cancer,,Male,52,68,143,70,120,99,0,66,220,Borderline,Normal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,59,62.75,281,100,152,242,0,69,188,Desirable,High,Overweight,Non-smoker
Alive,,66,Female,40,63.25,124,90,128,103,5,,202,Borderline,High,Normal,Light (1-5)
Alive,,,Male,43,68,126,72,110,88,20,,191,Desirable,Optimal,Underweight,Heavy (16-25)
Alive,,,Female,50,62,185,90,160,159,0,,315,High,High,Overweight,Non-smoker
Alive,,,Female,36,58,131,72,110,127,0,,235,Borderline,Optimal,Overweight,Non-smoker
Dead,Cancer,,Male,44,63.5,142,80,148,114,20,74,165,Desirable,High,Overweight,Heavy (16-25)
Dead,Other,80,Female,60,61.25,155,80,150,138,0,92,276,High,High,Overweight,Non-smoker
Alive,,,Male,31,74.5,202,76,114,119,20,,268,High,Optimal,Overweight,Heavy (16-25)
Dead,Unknown,,Female,55,64.25,131,85,135,106,5,65,251,High,Normal,Normal,Light (1-5)
Alive,,63,Female,37,57.25,117,90,130,117,5,,194,Desirable,High,Overweight,Light (1-5)
Alive,,,Male,41,63.5,122,74,126,98,10,,186,Desirable,Normal,Normal,Moderate (6-15)
Alive,,,Female,33,61.75,106,88,120,95,0,,262,High,Normal,Normal,Non-smoker
Alive,,,Male,35,71,171,70,148,109,20,,230,Borderline,High,Normal,Heavy (16-25)
Alive,,,Female,46,59,154,100,152,145,0,,194,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Female,36,63,131,88,136,109,5,66,197,Desirable,Normal,Normal,Light (1-5)
Dead,Other,,Male,52,70,182,72,118,120,0,72,234,Borderline,Optimal,Overweight,Non-smoker
Dead,Cancer,,Female,43,60.75,109,64,114,100,15,61,314,High,Optimal,Normal,Moderate (6-15)
Dead,Coronary Heart Disease,53,Male,47,64.5,143,92,158,112,15,71,386,High,High,Overweight,Moderate (6-15)
Alive,,,Female,35,64.25,142,64,118,115,0,,170,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Male,37,71.25,223,84,134,142,0,,240,High,Normal,Overweight,Non-smoker
Alive,,,Male,33,68.25,150,82,130,104,20,,274,High,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,41,66.25,159,82,124,120,0,55,215,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,43,67.75,172,110,134,126,0,65,255,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,45,68,140,90,156,97,15,55,240,High,High,Normal,Moderate (6-15)
Alive,,,Female,42,65.75,147,66,104,115,0,,220,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,33,63.75,144,84,122,115,0,,292,High,Normal,Overweight,Non-smoker
Alive,,,Female,56,61,134,104,154,120,10,,226,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,55,65.25,147,70,130,115,15,,250,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,36,58,122,60,98,118,5,,300,High,Optimal,Overweight,Light (1-5)
Dead,Cancer,,Male,40,69.5,157,88,148,106,40,54,166,Desirable,High,Normal,Very Heavy (> 25)
Alive,,,Female,34,60.75,131,70,130,120,0,,186,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,37,68.25,185,82,146,128,5,,180,Desirable,High,Overweight,Light (1-5)
Dead,Other,82,Female,62,61,135,92,160,121,0,88,240,High,High,Overweight,Non-smoker
Alive,,,Female,35,61.5,126,100,134,113,15,,235,Borderline,High,Overweight,Moderate (6-15)
Alive,,,Female,38,62.75,138,76,116,119,15,,190,Desirable,Optimal,Overweight,Moderate (6-15)
Dead,Other,,Female,61,59.5,138,80,154,130,0,85,245,High,High,Overweight,Non-smoker
Dead,Other,70,Female,50,64.5,170,96,168,137,0,76,220,Borderline,High,Overweight,Non-smoker
Alive,,,Female,32,66.25,126,78,110,95,5,,186,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Male,38,67.75,177,90,134,126,25,,209,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,50,65,153,92,148,117,0,,197,Desirable,High,Overweight,Non-smoker
Alive,,,Male,38,68.25,168,70,114,117,30,,245,High,Optimal,Overweight,Very Heavy (> 25)
Dead,Other,82,Male,54,70,158,110,184,104,0,86,217,Borderline,High,Normal,Non-smoker
Alive,,,Male,40,66,170,94,136,126,20,,311,High,High,Overweight,Heavy (16-25)
Alive,,,Female,54,65.25,124,98,146,97,0,,310,High,High,Normal,Non-smoker
Dead,Other,84,Male,58,66.75,123,74,152,91,0,90,196,Desirable,High,Normal,Non-smoker
Alive,,,Female,33,61.75,117,82,128,104,0,,205,Borderline,Normal,Normal,Non-smoker
Dead,Unknown,67,Male,55,68.5,180,78,134,125,0,81,320,High,Normal,Overweight,Non-smoker
Alive,,51,Female,37,61.25,106,76,124,95,5,,170,Desirable,Normal,Normal,Light (1-5)
Alive,,52,Male,42,66.5,174,94,138,129,30,,220,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,33,62,170,80,124,147,40,,196,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,61,Male,41,64.5,145,84,134,113,40,,184,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,43,60.75,210,118,196,193,0,,210,Borderline,High,Overweight,Non-smoker
Alive,,,Female,51,63,192,66,104,160,0,,205,Borderline,Optimal,Overweight,Non-smoker
Dead,Other,,Female,34,61.5,103,76,110,92,10,46,185,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Male,32,70.75,164,66,106,108,20,,170,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,61,Female,43,64.25,175,90,130,141,0,,224,Borderline,High,Overweight,Non-smoker
Alive,,60,Female,54,66.75,171,60,170,130,0,,185,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,88,Male,58,62.5,141,90,152,116,20,90,240,High,High,Overweight,Heavy (16-25)
Alive,,,Male,40,67,166,96,150,119,20,,203,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Female,44,59,116,85,125,109,20,,235,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Male,40,64,126,66,98,98,60,64,215,Borderline,Optimal,Normal,Very Heavy (> 25)
Alive,,70,Male,42,63.5,176,80,120,141,0,,231,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,39,66.5,162,94,154,120,20,,256,High,High,Overweight,Heavy (16-25)
Alive,,,Female,51,63.25,194,86,126,162,0,,240,High,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,61,Male,51,70,220,90,142,145,5,63,209,Borderline,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,68,Male,56,65.5,188,78,132,144,0,88,204,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,35,68.5,143,70,114,99,20,,136,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,58,Female,42,64,213,95,135,172,20,74,270,High,High,Overweight,Heavy (16-25)
Alive,,,Female,51,61,125,94,134,112,0,,209,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,67,Female,61,62,121,88,152,104,5,73,220,Borderline,High,Normal,Light (1-5)
Dead,Other,62,Male,36,67.5,166,82,132,119,20,66,290,High,Normal,Overweight,Heavy (16-25)
Dead,Cancer,,Female,37,65.25,150,84,136,117,20,57,185,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,,Male,44,69,168,68,118,114,20,,230,Borderline,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,46,68.5,215,80,112,149,0,,200,Borderline,Normal,Overweight,Non-smoker
Dead,Other,68,Male,48,66,177,108,172,131,0,76,260,High,High,Overweight,Non-smoker
Alive,,,Female,56,62,143,70,104,123,0,,329,High,Optimal,Overweight,Non-smoker
Dead,Cancer,,Male,55,62.25,112,90,174,92,0,79,185,Desirable,High,Normal,Non-smoker
Alive,,57,Male,47,64.5,145,78,122,113,20,,198,Desirable,Normal,Overweight,Heavy (16-25)
Alive,,76,Female,48,62,142,90,154,122,20,,200,Borderline,High,Overweight,Heavy (16-25)
Alive,,58,Male,34,72.5,227,102,156,141,40,,205,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Male,37,62.5,185,90,130,152,0,,270,High,High,Overweight,Non-smoker
Dead,Cancer,57,Female,39,62.25,191,86,122,165,0,61,154,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,33,69,194,82,152,131,30,,223,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Male,40,68.5,189,78,118,131,5,,204,Borderline,Optimal,Overweight,Light (1-5)
Alive,,,Female,34,65.25,127,76,112,99,10,,264,High,Optimal,Normal,Moderate (6-15)
Alive,,,Male,43,70.25,144,80,124,95,30,,203,Borderline,Normal,Normal,Very Heavy (> 25)
Dead,Other,,Female,33,62,153,92,124,132,0,43,255,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,57,62.5,196,90,148,169,0,81,190,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,86,Male,58,,157,80,116,109,20,88,206,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,43,61,110,86,138,98,20,,195,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Male,56,63,165,100,158,132,0,,292,High,High,Overweight,Non-smoker
Alive,,,Male,34,64.25,150,72,108,117,10,,209,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,49,64.5,109,84,132,88,0,,238,Borderline,Normal,Underweight,Non-smoker
Dead,Coronary Heart Disease,87,Female,57,63.5,175,94,174,146,0,89,219,Borderline,High,Overweight,Non-smoker
Dead,Other,60,Male,60,65.25,194,130,208,148,10,74,228,Borderline,High,Overweight,Moderate (6-15)
Alive,,85,Female,55,59,132,62,122,125,20,,240,High,Normal,Overweight,Heavy (16-25)
Alive,,60,Female,36,61.75,129,74,115,115,15,,217,Borderline,Optimal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,64,Male,36,66,182,110,162,135,40,66,224,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,53,62.25,148,78,166,128,0,,256,High,High,Overweight,Non-smoker
Alive,,83,Male,55,69.5,208,98,158,141,0,,256,High,High,Overweight,Non-smoker
Dead,Unknown,,Male,45,68.5,167,110,172,116,20,55,220,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Female,40,65,128,72,110,100,30,62,196,Desirable,Optimal,Normal,Very Heavy (> 25)
Alive,,,Male,47,69.5,194,90,138,131,20,,239,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,41,Male,35,70,235,96,152,155,30,43,285,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,61,67.25,170,74,124,121,0,,225,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,41,64,123,68,112,99,1,,173,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Male,36,64,147,84,120,115,1,,212,Borderline,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,63,Male,37,67.5,223,76,118,159,20,67,217,Borderline,Optimal,Overweight,Heavy (16-25)
Alive,,,Male,46,73.25,180,70,144,108,25,,165,Desirable,High,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,74,Male,54,69,147,86,184,99,0,76,288,High,High,Normal,Non-smoker
Alive,,,Female,42,60.75,140,96,144,128,0,,256,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,66,Male,38,61.5,141,96,128,118,20,68,250,High,High,Overweight,Heavy (16-25)
Alive,,,Male,35,64.75,147,84,120,115,30,,175,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,35,64.25,122,54,108,98,0,,169,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,33,69,164,72,128,111,35,,192,Desirable,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,52,67.75,182,78,148,134,5,,200,Borderline,High,Overweight,Light (1-5)
Alive,,,Male,43,69.5,171,76,126,116,0,,208,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,39,60.25,148,68,110,136,0,,185,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,34,61.75,142,72,144,127,20,,216,Borderline,High,Overweight,Heavy (16-25)
Alive,,,Male,39,69.25,156,72,120,105,20,,219,Borderline,Normal,Normal,Heavy (16-25)
Dead,Cancer,,Female,52,65,123,90,132,96,15,66,284,High,High,Normal,Moderate (6-15)
Dead,Cancer,,Male,54,65.25,155,88,152,118,0,60,195,Desirable,High,Overweight,Non-smoker
Alive,,,Female,41,66.75,141,78,112,107,10,,172,Desirable,Optimal,Normal,Moderate (6-15)
Dead,Other,,Female,38,64.5,150,66,104,121,20,56,181,Desirable,Optimal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,53,Male,45,64.5,170,90,142,133,0,61,207,Borderline,High,Overweight,Non-smoker
Alive,,,Female,36,61.75,113,72,122,101,20,,196,Desirable,Normal,Normal,Heavy (16-25)
Dead,Other,,Male,48,67.5,146,98,160,104,40,62,191,Desirable,High,Normal,Very Heavy (> 25)
Alive,,,Female,33,64,137,70,118,110,15,,214,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,67,Female,37,59.25,202,88,120,191,0,,265,High,Normal,Overweight,Non-smoker
Alive,,,Male,36,68,136,68,104,94,15,,189,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Female,32,65.25,146,74,124,114,0,,230,Borderline,Normal,Overweight,Non-smoker
Alive,,73,Male,53,63.75,204,90,138,163,0,,165,Desirable,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,56,63.75,164,54,106,137,5,74,246,High,Optimal,Overweight,Light (1-5)
Dead,Other,,Female,60,63,193,90,148,161,0,70,199,Desirable,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,56,Male,56,62.75,174,86,124,143,35,74,250,High,Normal,Overweight,Very Heavy (> 25)
Alive,,,Male,55,66.25,152,80,136,113,0,,246,High,Normal,Overweight,Non-smoker
Alive,,,Female,50,62.5,166,120,198,143,0,,209,Borderline,High,Overweight,Non-smoker
Alive,,,Male,56,67.5,183,90,140,131,5,,245,High,High,Overweight,Light (1-5)
Alive,,,Female,35,62.5,108,68,104,93,0,,142,Desirable,Optimal,Normal,Non-smoker
Dead,Coronary Heart Disease,56,Male,42,66.25,142,86,126,105,5,58,150,Desirable,Normal,Normal,Light (1-5)
Dead,Coronary Heart Disease,76,Male,56,66.25,124,66,112,92,15,78,296,High,Optimal,Normal,Moderate (6-15)
Alive,,,Female,37,62.5,150,64,110,129,0,,242,High,Optimal,Overweight,Non-smoker
Alive,,59,Male,33,65.25,177,72,138,135,15,,202,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,75,Male,57,67.25,210,100,158,150,20,85,256,High,High,Overweight,Heavy (16-25)
Alive,,63,Male,57,64,141,76,140,110,5,,174,Desirable,Normal,Overweight,Light (1-5)
Dead,Unknown,69,Female,57,61.5,159,88,152,142,0,79,234,Borderline,High,Overweight,Non-smoker
Alive,,,Male,45,70,195,80,136,128,20,,238,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,32,64,146,64,112,118,15,,200,Borderline,Optimal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,58,Male,54,68,256,100,182,178,45,60,286,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,59,63.25,156,78,114,130,0,,260,High,Optimal,Overweight,Non-smoker
Alive,,70,Female,44,61.25,121,84,132,108,0,,218,Borderline,Normal,Normal,Non-smoker
Dead,Coronary Heart Disease,54,Male,54,63.25,133,90,165,106,15,72,218,Borderline,High,Normal,Moderate (6-15)
Dead,Unknown,,Male,52,65,173,84,140,132,0,80,212,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,45,61.5,150,80,126,134,0,,221,Borderline,Normal,Overweight,Non-smoker
Alive,,60,Male,44,69.25,185,104,144,125,5,,215,Borderline,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,66,Male,46,65.25,131,84,122,100,20,76,235,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,41,64.25,178,70,104,139,10,,225,Borderline,Optimal,Overweight,Moderate (6-15)
Alive,,,Female,39,58.25,152,80,124,148,0,,185,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,41,63.25,144,64,102,115,40,53,161,Desirable,Optimal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,69,Female,59,62,140,104,164,121,0,85,320,High,High,Overweight,Non-smoker
Alive,,,Male,45,66.75,172,80,112,127,0,,202,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,40,63.25,143,80,122,119,0,,205,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,34,70,150,64,118,99,0,,168,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,39,63.5,161,72,124,129,20,,174,Desirable,Normal,Overweight,Heavy (16-25)
Dead,Cancer,55,Female,55,64,140,84,154,113,0,59,278,High,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,62,60.5,108,72,128,99,15,82,350,High,Normal,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,60,66,165,66,142,122,0,72,216,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,45,66,152,110,160,113,20,55,221,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,70,Male,42,71.5,215,105,180,137,0,72,300,High,High,Overweight,Non-smoker
Dead,Cancer,49,Male,37,66.5,174,75,150,129,30,57,288,High,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,47,66,132,72,138,98,20,63,221,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,45,64.5,182,95,145,142,10,,248,High,High,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,64,Male,44,68.25,206,80,122,143,0,66,218,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,42,70.5,170,74,120,112,0,,171,Desirable,Normal,Overweight,Non-smoker
Dead,Unknown,,Male,58,65,168,80,157,128,0,84,213,Borderline,High,Overweight,Non-smoker
Alive,,57,Male,33,72.25,202,90,144,125,0,,240,High,High,Overweight,Non-smoker
Alive,,,Male,35,70,118,70,124,78,15,,138,Desirable,Normal,Underweight,Moderate (6-15)
Dead,Cancer,,Male,60,68.25,194,96,156,135,20,68,235,Borderline,High,Overweight,Heavy (16-25)
Dead,Cancer,,Male,58,65.25,113,82,128,86,5,62,134,Desirable,Normal,Underweight,Light (1-5)
Dead,Cancer,,Male,59,65.75,192,80,140,147,10,81,239,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Unknown,,Male,47,56.5,121,92,144,116,20,53,251,High,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,71,Male,55,65.25,164,70,138,125,0,85,221,Borderline,Normal,Overweight,Non-smoker
Alive,,68,Female,44,62.75,138,86,142,119,0,,235,Borderline,High,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,55,63.75,145,92,142,116,20,81,170,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,34,63.25,113,75,105,94,20,,196,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Cancer,,Female,39,67,173,84,124,127,20,67,287,High,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,67,Male,53,68.75,157,86,138,109,0,69,189,Desirable,Normal,Normal,Non-smoker
Alive,,,Male,37,70,135,74,106,89,15,,157,Desirable,Optimal,Underweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,52,67.5,144,78,156,103,20,58,135,Desirable,High,Normal,Heavy (16-25)
Alive,,,Female,42,61,158,92,172,141,0,,196,Desirable,High,Overweight,Non-smoker
Alive,,,Male,53,68.5,153,70,120,106,35,,260,High,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,44,60.25,117,72,114,107,5,,255,High,Optimal,Normal,Light (1-5)
Dead,Cerebral Vascular Disease,65,Male,59,69.75,143,86,148,97,40,81,200,Borderline,High,Normal,Very Heavy (> 25)
Alive,,,Female,45,60.5,101,78,122,93,15,,217,Borderline,Normal,Normal,Moderate (6-15)
Dead,Cerebral Vascular Disease,70,Female,58,61.25,160,82,138,143,0,90,203,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,47,69.5,154,84,124,104,30,,230,Borderline,Normal,Normal,Very Heavy (> 25)
Dead,Cancer,71,Male,57,67.5,134,66,154,96,20,73,215,Borderline,High,Normal,Heavy (16-25)
Dead,Other,,Male,57,62.5,150,68,147,123,20,67,185,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,51,56.75,125,84,134,129,0,,237,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,56,Male,46,65.25,174,84,128,133,20,62,270,High,Normal,Overweight,Heavy (16-25)
Alive,,,Male,40,69.25,153,104,170,103,20,,200,Borderline,High,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Male,57,64.5,133,96,144,104,20,63,185,Desirable,High,Normal,Heavy (16-25)
Dead,Cerebral Vascular Disease,72,Male,58,66,146,72,110,108,0,76,282,High,Optimal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Female,39,60.25,109,68,98,100,5,57,160,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Male,35,65.5,161,80,115,123,15,,324,High,Normal,Overweight,Moderate (6-15)
Alive,,,Male,32,68,236,100,150,164,0,,226,Borderline,High,Overweight,Non-smoker
Dead,Other,65,Male,47,66.25,123,90,145,91,20,73,255,High,High,Normal,Heavy (16-25)
Dead,Cancer,78,Male,58,71.5,170,65,125,108,20,90,215,Borderline,Normal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,54,Male,52,62.5,127,114,175,104,0,58,239,Borderline,High,Normal,Non-smoker
Dead,Coronary Heart Disease,81,Female,61,63.25,188,96,168,157,0,83,250,High,High,Overweight,Non-smoker
Alive,,,Female,39,63.25,144,72,132,120,0,,175,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Female,51,61,112,70,108,100,0,79,233,Borderline,Optimal,Normal,Non-smoker
Dead,Cancer,65,Male,55,65.5,151,88,142,115,40,77,219,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,,Female,52,61.25,131,80,156,117,20,,224,Borderline,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,58,64.75,140,90,160,113,0,90,237,Borderline,High,Overweight,Non-smoker
Alive,,72,Female,42,64.75,153,90,140,123,0,,204,Borderline,High,Overweight,Non-smoker
Dead,Other,,Male,42,67.25,140,96,184,100,5,68,234,Borderline,High,Normal,Light (1-5)
Alive,,,Female,34,,,70,120,,5,,161,Desirable,Normal,,Light (1-5)
Alive,,,Male,36,66,144,86,138,107,20,,197,Desirable,Normal,Normal,Heavy (16-25)
Dead,Other,,Male,50,68.25,215,104,170,149,0,72,186,Desirable,High,Overweight,Non-smoker
Alive,,,Male,36,67,171,60,96,122,20,,243,High,Optimal,Overweight,Heavy (16-25)
Dead,Unknown,,Male,60,61,108,86,148,91,5,72,145,Desirable,High,Normal,Light (1-5)
Alive,,,Female,39,63.75,118,90,125,98,1,,205,Borderline,High,Normal,Light (1-5)
Alive,,61,Female,45,63.5,135,90,160,113,0,,244,High,High,Overweight,Non-smoker
Alive,,,Male,44,69,208,82,120,141,35,,186,Desirable,Normal,Overweight,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,42,60.75,116,60,100,106,20,68,170,Desirable,Optimal,Normal,Heavy (16-25)
Dead,Coronary Heart Disease,69,Male,43,65.75,130,70,130,99,30,71,250,High,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,49,62.5,136,110,170,117,0,,314,High,High,Overweight,Non-smoker
Dead,Unknown,,Male,61,61.75,127,95,175,107,0,71,250,High,High,Normal,Non-smoker
Alive,,,Female,33,64.75,157,88,124,127,5,,145,Desirable,Normal,Overweight,Light (1-5)
Alive,,,Female,33,62,111,50,95,96,0,,165,Desirable,Optimal,Normal,Non-smoker
Dead,Cerebral Vascular Disease,,Male,60,60,156,78,122,134,0,80,209,Borderline,Normal,Overweight,Non-smoker
Dead,Coronary Heart Disease,63,Male,61,65,149,76,116,114,0,83,228,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,42,62.75,158,90,164,136,0,,171,Desirable,High,Overweight,Non-smoker
Alive,,,Female,37,61,132,72,116,118,5,,181,Desirable,Optimal,Overweight,Light (1-5)
Dead,Cancer,59,Female,49,59.5,137,90,164,129,0,79,142,Desirable,High,Overweight,Non-smoker
Alive,,,Male,44,69,164,96,170,111,20,,267,High,High,Overweight,Heavy (16-25)
Alive,,,Male,32,69.25,143,70,124,97,35,,184,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Female,62,62.5,166,104,176,143,0,92,255,High,High,Overweight,Non-smoker
Alive,,,Female,56,58.25,136,86,144,132,0,,225,Borderline,High,Overweight,Non-smoker
Dead,Other,,Female,46,57.75,67,80,124,67,0,56,234,Borderline,Normal,Underweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,50,61.75,144,124,290,129,15,68,221,Borderline,High,Overweight,Moderate (6-15)
Dead,Cerebral Vascular Disease,,Male,41,61,126,60,174,106,25,61,189,Desirable,High,Normal,Heavy (16-25)
Alive,,,Male,35,66,132,66,114,98,30,,150,Desirable,Optimal,Normal,Very Heavy (> 25)
Alive,,,Female,42,62.25,115,90,142,99,0,,227,Borderline,High,Normal,Non-smoker
Alive,,65,Female,51,63,209,104,160,174,0,,221,Borderline,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,56,Female,36,62.75,173,75,125,149,40,58,,,Normal,Overweight,Very Heavy (> 25)
Dead,Other,,Female,61,61,89,85,140,79,0,87,219,Borderline,Normal,Underweight,Non-smoker
Dead,Unknown,,Female,40,60.75,82,70,105,75,5,56,220,Borderline,Optimal,Underweight,Light (1-5)
Alive,,,Female,43,60,124,74,104,114,15,,274,High,Optimal,Overweight,Moderate (6-15)
Alive,,,Male,40,62.25,159,96,138,130,20,,199,Desirable,High,Overweight,Heavy (16-25)
Alive,,,Female,37,65,138,85,145,108,20,,180,Desirable,High,Normal,Heavy (16-25)
Dead,Cancer,,Female,46,63.25,148,82,138,123,0,66,245,High,Normal,Overweight,Non-smoker
Alive,,,Female,34,64.25,202,85,130,163,0,,173,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,51,68.25,149,105,145,103,20,,175,Desirable,High,Normal,Heavy (16-25)
Dead,Cancer,,Male,60,64.5,115,85,125,90,20,66,179,Desirable,Normal,Underweight,Heavy (16-25)
Alive,,,Female,35,62.75,125,50,110,108,15,,255,High,Optimal,Normal,Moderate (6-15)
Dead,Cancer,,Female,48,59.5,139,90,136,131,0,64,285,High,High,Overweight,Non-smoker
Alive,,,Female,36,62.5,116,80,144,100,0,,194,Desirable,High,Normal,Non-smoker
Dead,Coronary Heart Disease,58,Male,48,66.25,170,80,128,126,40,62,245,High,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,73,Male,49,65.25,200,84,144,153,0,77,231,Borderline,High,Overweight,Non-smoker
Dead,Unknown,,Female,55,62.75,200,90,154,172,0,81,196,Desirable,High,Overweight,Non-smoker
Dead,Other,,Male,40,72,196,82,140,122,10,64,278,High,Normal,Overweight,Moderate (6-15)
Alive,,,Female,36,61,99,72,112,88,5,,230,Borderline,Optimal,Underweight,Light (1-5)
Dead,Coronary Heart Disease,56,Male,48,64.75,129,64,122,101,20,80,200,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Male,32,64,162,74,120,127,20,,231,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,58,Male,40,63.25,121,80,134,97,20,,255,High,Normal,Normal,Heavy (16-25)
Alive,,,Female,32,66.75,114,74,108,86,15,,184,Desirable,Optimal,Underweight,Moderate (6-15)
Alive,,,Male,48,66.25,158,80,120,117,0,,227,Borderline,Normal,Overweight,Non-smoker
Alive,,,Female,34,63,112,72,98,93,5,,159,Desirable,Optimal,Normal,Light (1-5)
Alive,,,Male,32,67.75,137,76,118,98,35,,182,Desirable,Optimal,Normal,Very Heavy (> 25)
Dead,Other,,Male,57,62.5,131,78,138,107,50,67,182,Desirable,Normal,Normal,Very Heavy (> 25)
Alive,,,Female,41,62.75,159,66,104,137,0,,225,Borderline,Optimal,Overweight,Non-smoker
Dead,Cancer,,Female,57,59,100,74,120,94,0,85,221,Borderline,Normal,Normal,Non-smoker
Alive,,,Female,37,64.5,127,70,102,102,20,,176,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Female,36,60.25,149,76,126,137,0,,,,Normal,Overweight,Non-smoker
Alive,,,Female,32,61,275,82,136,246,0,,154,Desirable,Normal,Overweight,Non-smoker
Dead,Cancer,,Male,60,62.5,131,75,160,107,0,78,235,Borderline,High,Normal,Non-smoker
Dead,Other,61,Female,57,66.25,143,124,230,108,20,69,228,Borderline,High,Normal,Heavy (16-25)
Dead,Other,59,Male,57,62,162,105,185,133,0,75,274,High,High,Overweight,Non-smoker
Alive,,83,Female,53,59.25,195,78,124,184,15,,177,Desirable,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,59,Female,55,59.75,148,90,124,140,0,61,400,High,High,Overweight,Non-smoker
Alive,,,Female,58,65,150,86,148,117,0,,292,High,High,Overweight,Non-smoker
Alive,,,Female,35,63.5,174,78,124,145,0,,192,Desirable,Normal,Overweight,Non-smoker
Dead,Other,65,Male,61,66.75,144,78,98,107,20,77,199,Desirable,Optimal,Normal,Heavy (16-25)
Alive,,,Male,33,66.75,179,84,134,133,40,,217,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,43,56.75,132,108,184,136,1,,221,Borderline,High,Overweight,Light (1-5)
Alive,,58,Female,48,62.25,157,70,130,135,0,,194,Desirable,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Male,56,62,140,70,190,115,30,68,285,High,High,Overweight,Very Heavy (> 25)
Alive,,,Male,56,65,145,90,132,111,20,,360,High,High,Overweight,Heavy (16-25)
Dead,Cerebral Vascular Disease,,Female,58,60.75,222,84,156,204,0,74,232,Borderline,High,Overweight,Non-smoker
Alive,,,Male,51,69.75,188,94,134,127,40,,219,Borderline,High,Overweight,Very Heavy (> 25)
Dead,Cancer,,Female,39,67,126,80,120,93,30,67,189,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Coronary Heart Disease,61,Male,61,69,179,68,140,121,20,65,248,High,Normal,Overweight,Heavy (16-25)
Dead,Unknown,,Female,62,64.75,102,140,194,82,0,82,199,Desirable,High,Underweight,Non-smoker
Alive,,,Male,45,65.25,175,74,114,134,0,,235,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,54,59.5,140,80,145,132,1,,266,High,High,Overweight,Light (1-5)
Dead,Other,71,Male,59,65,139,84,146,106,20,85,241,High,High,Normal,Heavy (16-25)
Alive,,,Female,35,62.75,,54,116,,10,,300,High,Optimal,,Moderate (6-15)
Dead,Other,,Female,51,60.75,108,98,178,99,0,63,314,High,High,Normal,Non-smoker
Dead,Cancer,,Male,55,67.75,154,80,138,110,0,81,155,Desirable,Normal,Overweight,Non-smoker
Alive,,,Male,33,69,168,90,150,114,0,,231,Borderline,High,Overweight,Non-smoker
Dead,Cancer,,Male,46,65,152,80,125,116,40,52,250,High,Normal,Overweight,Very Heavy (> 25)
Dead,Cancer,,Male,58,65.25,191,80,138,146,10,76,265,High,Normal,Overweight,Moderate (6-15)
Dead,Other,,Female,57,62,159,80,124,137,0,81,334,High,Normal,Overweight,Non-smoker
Alive,,,Female,35,62.75,146,78,112,126,0,,,,Optimal,Overweight,Non-smoker
Alive,,,Male,35,70,164,90,145,108,0,,167,Desirable,High,Normal,Non-smoker
Alive,,,Female,41,61,138,84,116,123,20,,257,High,Normal,Overweight,Heavy (16-25)
Alive,,60,Male,32,71.25,184,80,140,117,10,,220,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Coronary Heart Disease,43,Male,33,66.25,180,108,164,133,30,49,290,High,High,Overweight,Very Heavy (> 25)
Alive,,,Female,33,67,139,80,120,102,1,,180,Desirable,Normal,Normal,Light (1-5)
Alive,,,Male,40,69,146,80,120,99,20,,160,Desirable,Normal,Normal,Heavy (16-25)
Alive,,,Female,53,60,160,100,152,147,0,,272,High,High,Overweight,Non-smoker
Alive,,68,Female,50,59,94,75,120,89,0,,195,Desirable,Normal,Underweight,Non-smoker
Alive,,,Male,35,68,217,88,140,151,40,,215,Borderline,Normal,Overweight,Very Heavy (> 25)
Alive,,,Female,43,64,146,104,164,118,5,,200,Borderline,High,Overweight,Light (1-5)
Alive,,,Male,47,69.5,143,68,110,97,30,,192,Desirable,Optimal,Normal,Very Heavy (> 25)
Alive,,,Female,42,60.75,140,120,185,128,0,,184,Desirable,High,Overweight,Non-smoker
Dead,Cancer,,Female,61,57.75,148,80,120,148,0,79,225,Borderline,Normal,Overweight,Non-smoker
Alive,,,Male,34,66.25,125,70,114,93,0,,179,Desirable,Optimal,Normal,Non-smoker
Alive,,,Male,40,69.25,222,86,134,150,0,,188,Desirable,Normal,Overweight,Non-smoker
Alive,,,Female,38,63.5,165,72,110,138,0,,205,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Female,34,60.25,117,68,122,107,15,,185,Desirable,Normal,Normal,Moderate (6-15)
Dead,Other,,Female,38,63.25,126,78,124,105,0,54,167,Desirable,Normal,Normal,Non-smoker
Alive,,,Female,41,62.5,122,64,104,105,10,,183,Desirable,Optimal,Normal,Moderate (6-15)
Alive,,,Female,43,63.25,158,70,112,132,0,,217,Borderline,Optimal,Overweight,Non-smoker
Dead,Cancer,,Male,53,62,156,65,105,128,1,81,234,Borderline,Optimal,Overweight,Light (1-5)
Alive,,,Male,37,75.25,164,58,124,93,30,,160,Desirable,Normal,Normal,Very Heavy (> 25)
Dead,Cerebral Vascular Disease,,Male,46,64,159,84,118,124,15,68,212,Borderline,Normal,Overweight,Moderate (6-15)
Dead,Unknown,,Female,40,63.5,116,98,172,97,10,72,220,Borderline,High,Normal,Moderate (6-15)
Dead,Cancer,,Male,40,69,207,100,135,140,35,72,205,Borderline,High,Overweight,Very Heavy (> 25)
Alive,,59,Male,37,67,167,90,146,119,25,,220,Borderline,High,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,68,Female,58,61,200,145,260,179,0,74,189,Desirable,High,Overweight,Non-smoker
Alive,,,Female,41,65,143,82,130,112,5,,175,Desirable,Normal,Overweight,Light (1-5)
Dead,Coronary Heart Disease,56,Female,36,62.5,161,98,158,139,15,58,169,Desirable,High,Overweight,Moderate (6-15)
Dead,Other,,Male,42,67.75,164,90,124,117,10,54,247,High,High,Overweight,Moderate (6-15)
Dead,Other,,Male,52,66.75,160,70,110,119,0,62,189,Desirable,Optimal,Overweight,Non-smoker
Alive,,,Female,35,63.25,143,74,104,119,0,,227,Borderline,Optimal,Overweight,Non-smoker
Alive,,,Male,39,73,178,86,124,107,20,,232,Borderline,Normal,Normal,Heavy (16-25)
Alive,,,Female,45,61.25,122,66,132,109,0,,235,Borderline,Normal,Normal,Non-smoker
Alive,,,Male,49,67.5,173,86,134,124,0,,218,Borderline,Normal,Overweight,Non-smoker
Dead,Cerebral Vascular Disease,,Female,59,64.5,157,88,158,127,0,77,244,High,High,Overweight,Non-smoker
Dead,Coronary Heart Disease,64,Male,58,72.75,255,88,130,158,40,80,260,High,Normal,Overweight,Very Heavy (> 25)
Dead,Coronary Heart Disease,55,Male,47,67,186,105,155,133,5,57,199,Desirable,High,Overweight,Light (1-5)
Alive,,61,Male,59,66.5,156,84,124,116,20,,223,Borderline,Normal,Overweight,Heavy (16-25)
Dead,Coronary Heart Disease,59,Male,59,71,177,68,108,113,25,65,246,High,Optimal,Overweight,Heavy (16-25)
Alive,,,Female,55,66.5,163,74,108,123,0,,231,Borderline,Optimal,Overweight,Non-smoker
Dead,Coronary Heart Disease,79,Male,49,64.5,173,80,110,135,20,81,228,Borderline,Normal,Overweight,Heavy (16-25)
Alive,,,Female,42,60,141,76,124,129,5,,209,Borderline,Normal,Overweight,Light (1-5)
Alive,,,Female,51,58.25,123,90,152,119,1,,197,Desirable,High,Overweight,Light (1-5)
Dead,Coronary Heart Disease,50,Male,36,68.25,164,64,108,114,40,64,238,Borderline,Optimal,Overweight,Very Heavy (> 25)
Alive,,,Male,36,70.5,177,68,94,116,50,,240,High,Optimal,Overweight,Very Heavy (> 25)
;;;;

libname xl xlsx "&path&delim.exercise.xlsx";
data xl.activitylevels;
  infile datalines dsd truncover;
  input ID Name:$14. Sex:$1. Age  Height  Weight ActLevel:$4.;
datalines4;
2458,"Murray, W",M,27,72,168,HIGH
2462,"Almers, C",F,34,66,152,HIGH
2501,"Bonaventure, T",F,31,61,123,LOW
2523,"Johnson, R",F,43,63,137,MOD
2539,"LaMance, R",M,51,71,158,LOW
2544,"Jones, M",M,29,76,193,HIGH
2552,"Reberson, P",F,32,67,151,MOD
2555,"King, E",M,35,70,173,MOD
2563,"Pitts, D",M,34,73,154,LOW
2568,"Eberhardt, S",F,49,64,172,LOW
2571,"Nunnelly, A",F,44,66,140,HIGH
2572,"Oberon, M",F,28,62,118,LOW
2574,"Peterson, V",M,30,69,147,MOD
2575,"Quigley, M",F,40,69,163,HIGH
2578,"Cameron, L",M,47,72,173,MOD
2579,"Underwood, K",M,60,71,191,LOW
2584,"Takahashi, Y",F,43,65,123,MOD
2586,"Derber, B",M,25,75,188,HIGH
2588,"Ivan, H",F,22,63,139,LOW
2589,"Wilcox, E",F,41,67,141,HIGH
2595,"Warren, C",M,54,71,183,MOD
;;;;

data xl.tests;
  infile datalines dsd truncover;
  input ID  Name:$14. RestHR  MaxHR  RecHR:$3. TimeMin  TimeSec  Tolerance:$1. TestDate:MMDDYY10.;
  format TestDate MMDDYY10.;
datalines4;
2458,"Murray, W",72,185,128,12,38,D,08/25/2008
2462,"Almers, C",68,171,133,10,5,I,06/26/2008
2501,"Bonaventure, T",78,177,139,11,13,I,06/26/2008
2523,"Johnson, R",69,162,114,9,42,S,07/04/2008
2539,"LaMance, R",75,168,141,11,46,D,08/25/2008
2544,"Jones, M",79,187,136,12,26,N,07/14/2008
2552,"Reberson, P",69,158,139,15,41,D,08/25/2008
2555,"King, E",70,167,122,13,13,I,07/14/2008
2563,"Pitts, D",71,159,116,10,22,S,08/25/2008
2568,"Eberhardt, S",72,182,122,16,49,N,06/26/2008
2571,"Nunnelly, A",65,181,141,15,2,I,08/09/2008
2572,"Oberon, M",74,177,138,12,11,D,08/08/2008
2574,"Peterson, V",80,164,137,14,9,D,07/21/2008
2575,"Quigley, M",74,152,.,11,26,I,07/13/2008
2578,"Cameron, L",75,158,108,14,27,I,08/16/2008
2579,"Underwood, K",72,165,127,13,19,S,06/27/2008
2584,"Takahashi, Y",76,163,135,16,7,D,08/16/2008
2586,"Derber, B",68,176,119,17,35,N,08/17/2008
2588,"Ivan, H",70,182,126,15,41,N,06/18/2008
2589,"Wilcox, E",78,189,138,14,57,I,07/19/2008
2595,"Warren, C",77,170,136,12,10,S,07/20/2008
;;;;

libname xl clear;

data _null_;
  file "&path&delim.boot.csv";
  infile datalines truncover;
  input;
  put _infile_;
datalines4;
"Africa","Boot","Addis Ababa","12","$29,761","$191,821","$769"
"Asia","Boot","Bangkok","1","$1,996","$9,576","$80"
"Canada","Boot","Calgary","8","$17,720","$63,280","$472"
"Central America/Caribbean","Boot","Kingston","33","$102,372","$393,376","$4,454"
"Eastern Europe","Boot","Budapest","22","$74,102","$317,515","$3,341"
"Middle East","Boot","Al-Khobar","10","$15,062","$44,658","$765"
"Pacific","Boot","Auckland","12","$20,141","$97,919","$962"
"South America","Boot","Bogota","19","$15,312","$35,805","$1,229"
"United States","Boot","Chicago","16","$82,483","$305,061","$3,735"
"Western Europe","Boot","Copenhagen","2","$1,663","$4,657","$129"
;;;;

data _null_;
  file "&path&delim.class.txt";
  infile datalines truncover;
  input;
  put _infile_;
datalines4;
Name     Gender   Age
Joyce    F        11
Thomas   M        11
Jane     F        12
Louise   F        12
James    M        12
John     M        12
Robert   M        12
Alice    F        13
Barbara  F        13
Jeffery  M        13
Carol    F        14
Judy     F        14
Alfred   M        14
Henry    M        14
Jenet    F        15
Mary     F        15
Ronald   M        15
William  M        15
Philip   M        16
;;;;

data _null_;
  file "&path&delim.delimiter.txt";
  infile datalines truncover;
  input;
  put _infile_;
datalines4;
Region&State&Month&Expenses&Revenue
Southern&GA&JAN2001&2000&8000
Southern&GA&FEB2001&1200&6000
Southern&FL&FEB2001&8500&11000
Northern&NY&FEB2001&3000&4000
Northern&NY&MAR2001&6000&5000
Southern&FL&MAR2001&9800&13500
Northern&MA&MAR2001&1500&1000
;;;;

data _null_;
  file "&path&delim.new_hires.csv";
  infile datalines truncover;
  input;
  put _infile_;
datalines4;
Name,Hire Date,Company,Country,Date of Birth
Gisela S. Santos,8/12/17,Pede Nunc Sed Limited,Micronesia,8/21/1971
Maxwell L. Cooley,9/4/17,A LLP,Somalia,4/30/1975
Thane P. Obrien,10/28/17,Consectetuer Limited,Jamaica,4/23/1988
Minerva C. Conley,1/5/18,Feugiat Tellus Lorem Institute,Fiji,2/18/1975
Kylee R. Finch,10/31/17,Magna Incorporated,Myanmar,5/18/1973
Calista F. Chambers,9/11/17,Facilisis Incorporated,Libya,3/4/1972
Fuller X. Bradford,1/27/18,Morbi Incorporated,Saint Pierre and Miquelon,12/1/1976
Jane E. Vazquez,3/5/18,Proin Corporation,Antarctica,4/26/1972
Melinda Y. Burton,2/23/18,Neque Industries,Japan,1/4/1992
Alan V. Gibbs,1/16/18,Metus Vitae Company,Kyrgyzstan,10/29/1982
Raphael W. Carter,4/21/18,Magna Ut Corporation,Fiji,4/3/1993
Fritz V. Morrow,2/27/18,Nunc Industries,Singapore,1/31/1997
Anjolie P. Finch,1/25/18,Justo Foundation,Equatorial Guinea,9/10/1972
Ciaran I. Salazar,12/6/17,Ipsum Associates,Montenegro,10/23/1987
Palmer P. Mills,3/2/18,At Corp.,Singapore,1/30/1994
Kimberly L. Randolph,9/28/17,Quam Curabitur Incorporated,Botswana,2/1/1996
Camden G. Rosales,4/18/18,Ac Eleifend Foundation,Guatemala,5/26/1976
Skyler D. Larsen,8/27/17,Curabitur Consequat Industries,"Virgin Islands, United States",9/20/1980
Jacob C. Noel,5/11/18,Non Lobortis Foundation,Mauritania,1/20/1976
Scott C. Estrada,4/9/18,Ac Eleifend Corporation,Botswana,2/14/1972
Alana P. Reynolds,3/4/18,Vitae Dolor Donec PC,Liechtenstein,3/19/1991
Carson D. Castaneda,4/3/18,Sit Amet Massa LLP,India,9/12/1977
Arden W. Pena,8/29/17,Dignissim Corporation,Gambia,2/18/1988
Laurel J. Rosales,1/29/18,Nisi Corp.,Svalbard and Jan Mayen Islands,8/4/1992
Anne T. Hooper,4/8/18,Sit Amet LLP,Iran,10/27/1981
Slade D. Gomez,5/24/18,Libero Institute,Tokelau,3/10/1986
Uma Z. Morrow,3/21/18,Justo Faucibus LLP,Kenya,1/5/1976
Julian C. Roth,8/28/17,Sociosqu Ad LLC,Netherlands,12/17/1970
Jasper A. Wilder,10/7/17,Nulla Dignissim LLC,Marshall Islands,5/10/1978
Rahim H. Huffman,3/21/18,Non Hendrerit Foundation,Djibouti,2/21/1987
Upton F. Sanders,9/19/17,Elit Pretium Et Inc.,Viet Nam,3/23/1988
Lenore Z. Luna,12/23/17,Malesuada Vel Venenatis Inc.,Christmas Island,7/1/1995
Iona M. Brown,4/18/18,Mollis Lectus Pede Limited,Djibouti,11/24/1973
Uriah Q. Bradley,11/12/17,Consectetuer Cursus Inc.,New Zealand,1/14/1971
Signe P. Hancock,9/1/17,Rutrum Consulting,Haiti,12/28/1982
Ishmael W. Schroeder,10/14/17,Fermentum Incorporated,Colombia,10/16/1975
Rebecca W. Warner,3/25/18,Volutpat Nulla Foundation,Viet Nam,10/16/1987
Jacqueline V. Mendez,5/22/18,Nisl Foundation,Azerbaijan,10/27/1982
Barrett B. Floyd,2/9/18,Ac Urna Ut Limited,Pakistan,1/11/1973
May T. Wood,4/18/18,Arcu Vivamus Sit Corp.,Poland,7/3/1994
Kibo R. Gallegos,8/7/17,Semper Pretium Inc.,Namibia,5/26/1987
Mason C. Castillo,12/24/17,Neque Sed LLP,Faroe Islands,1/13/1991
Raja K. Graves,6/14/18,Tellus Nunc Limited,Pitcairn Islands,11/18/1988
Berk D. Ellis,1/18/18,Gravida Sit Institute,Saint Pierre and Miquelon,2/20/1982
Willow K. Ryan,3/6/18,Dolor Sit Amet Institute,Mauritania,7/11/1987
Dillon O. Ryan,8/31/17,Molestie Sed Id Consulting,Japan,3/18/1990
Mollie M. Spears,4/1/18,Morbi Tristique Senectus Company,Lesotho,3/2/1978
Stacey P. Mcconnell,4/7/18,Orci Quis Lectus Foundation,Brazil,9/1/1971
Jesse M. Meadows,4/13/18,Libero Et Tristique Corp.,"Virgin Islands, United States",6/1/1972
Jane B. Gray,3/10/18,Luctus Lobortis Class Institute,Grenada,7/22/1987
Jack H. Higgins,5/23/18,Lacinia Vitae Institute,Latvia,11/26/1996
Kelly K. Griffin,6/1/18,Elementum Lorem Ut Limited,Eritrea,2/20/1989
Honorato A. Graham,12/27/17,Semper Et Ltd,Angola,6/9/1986
Charity P. Hall,5/9/18,Mollis Non Associates,Liberia,7/7/1997
MacKenzie P. Gregory,2/16/18,Mauris Magna Company,Andorra,5/18/1972
Brock R. Joseph,10/4/17,Quis Diam Industries,Japan,10/31/1970
Lars H. Vang,11/27/17,Nullam Ut Corp.,Swaziland,9/6/1988
Finn F. Carney,2/24/18,In Condimentum Donec LLP,Mayotte,5/2/1996
Fatima R. Wilder,11/4/17,Ipsum Primis LLP,Singapore,7/21/1982
Nayda H. Hernandez,8/4/17,Consectetuer Associates,Jersey,9/28/1986
Hayfa K. Mullen,3/3/18,Cras Dictum LLP,Cocos (Keeling) Islands,10/10/1988
Ina X. Morrison,4/27/18,Magna Cras Convallis Limited,Niger,2/3/1992
Bell X. Brock,1/1/18,Ornare Egestas Ligula Institute,Central African Republic,3/22/1982
Zephr Q. Ferrell,12/18/17,Nibh Phasellus Inc.,Venezuela,1/13/1994
Suki Q. Brock,8/7/17,Accumsan Ltd,Saint Lucia,5/17/1987
Sage A. Keith,10/23/17,Vulputate Corporation,Turkey,5/24/1976
Hanna O. Barker,8/2/17,In Industries,Svalbard and Jan Mayen Islands,8/12/1973
Amanda Y. Dixon,8/27/17,Consectetuer Adipiscing Elit Inc.,Cameroon,2/27/1995
Chaney X. Blankenship,12/13/17,Mauris Rhoncus Id Incorporated,Papua New Guinea,7/1/1993
Barrett Y. Silva,1/17/18,Odio Aliquam Vulputate Institute,United Arab Emirates,11/13/1976
Octavius R. Hart,3/3/18,Vitae Aliquet Nec Incorporated,Norfolk Island,9/5/1977
Ingrid I. Oneal,9/16/17,Ut Associates,"Saint Helena, Ascension and Tristan da Cunha",10/30/1987
Yardley T. Wong,11/15/17,Nam Associates,Japan,7/6/1983
Conan P. English,12/2/17,Mauris Blandit Limited,Norfolk Island,11/28/1982
Cassady R. Roy,1/23/18,Vivamus Company,Italy,8/22/1985
Phyllis R. Terry,3/18/18,Dolor Consulting,South Sudan,7/27/1979
Phelan S. Curry,2/26/18,Duis Dignissim Consulting,Iraq,12/1/1979
Sybill N. Flores,10/16/17,Eu Turpis Institute,Saint Pierre and Miquelon,4/29/1974
Grace N. Waller,2/1/18,Arcu Corp.,Grenada,12/31/1977
Steven W. Ellis,8/16/17,Proin Ltd,"Saint Helena, Ascension and Tristan da Cunha",9/14/1972
Germane D. Montoya,9/30/17,Massa Quisque Porttitor Ltd,Myanmar,9/9/1974
Aurora E. Reid,6/17/18,Ornare Sagittis Felis Industries,Bermuda,7/25/1993
Rana R. Stout,2/25/18,Quam Dignissim Institute,Holy See (Vatican City State),1/3/1971
Calista L. Holloway,11/19/17,Tempor Foundation,Yemen,5/13/1972
Quinn Y. Skinner,3/18/18,Donec Sollicitudin Adipiscing Consulting,Seychelles,10/19/1994
Macy V. Moreno,4/30/18,Tincidunt Institute,Congo (Brazzaville),4/21/1988
Mufutau W. Hancock,2/17/18,Felis Orci PC,Togo,8/15/1977
Fiona G. Fulton,5/3/18,Euismod Ac Fermentum Consulting,Slovenia,3/20/1977
Scott F. Gutierrez,12/28/17,Ligula Tortor Dictum Ltd,Ireland,7/13/1990
Illana C. Ward,11/1/17,A Magna Consulting,Gibraltar,12/23/1982
Rinah S. Roberson,8/10/17,Laoreet Libero Et Institute,Malaysia,1/9/1980
George D. Francis,6/1/18,A Scelerisque Sed LLP,Tanzania,5/24/1972
Dexter X. Cameron,5/18/18,Tristique Aliquet Inc.,Laos,4/10/1979
Alvin N. Hyde,12/1/17,Tempor Augue Incorporated,United Kingdom (Great Britain),6/12/1985
Winifred K. Morales,4/24/18,Fames Incorporated,Italy,11/25/1975
Thaddeus J. England,3/26/18,Semper Auctor Corporation,Zambia,12/21/1996
Skyler O. George,5/16/18,At Institute,Jamaica,6/2/1986
Kieran H. Tyler,9/21/17,Vulputate Eu Ltd,Tuvalu,2/14/1971
Cairo F. Baldwin,5/24/18,Amet LLP,Palau,8/2/1973
Robin U. Macias,10/9/17,Elit Nulla LLP,Burkina Faso,5/14/1982
;;;;

data _null_;
  file "&path&delim.state_data.txt";
  infile datalines truncover;
  input;
  put _infile_;
datalines4;
Region State Capital Bird
South Georgia Atlanta 'Brown Thrasher'
South 'North Carolina' Raleigh Cardinal
North Connecticut Hartford Robin
West Washington Olympia 'American Goldfinch'
Midwest Illinois Springfield Cardinal
;;;;

data _null_;
  file "&path&delim.test.csv";
  infile datalines truncover;
  input;
  put _infile_;
datalines4;
Akron,7/4/2018,7/8/2018,$175.00 
;;;;

