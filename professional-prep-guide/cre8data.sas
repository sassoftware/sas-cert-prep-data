/*******************************************************************\           
| Copyright (C) 2019 by SAS Institute Inc., Cary, NC, USA.                  |           
|                                                                           |           
| SAS (R) is a registered trademark of SAS Institute Inc.                   |           
|                                                                           |           
|This program creates practice data files for some of the examples in the:  |
|SAS Certified Professional Prep Guide: Advanced Programming Using SAS 9.4  |
|       															        |
|                                                                           |
| Last updated: July 30, 2019                                               |
\***************************************************************************/ 
/* Make sure the path macro variable points to your certification data location */
%let path=/folders/myfolders/certadv;

/********************************************************************
 Do not modify the code below this line 
********************************************************************/
%macro setdelim;
   %global delim;
   %if %index(&path,%str(/)) %then %let delim=%str(/);
   %else %let delim=%str(\);
%mend;
%setdelim

%macro makedata;
%include "&path&delim.cre8permdata.sas";
%put;
%put NOTE- *******************************************************;
%put NOTE- Your SAS Certification Prep Guide data files are ready.;
%put NOTE- *******************************************************;
%mend;
%makedata;
