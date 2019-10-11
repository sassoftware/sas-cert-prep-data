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
/* If running individually, uncomment this line and make sure it points to your certification data location */
/*%let path=/folders/myfolders/certadv;*/

%macro setdelim;
%global delim;
%if %index(&path,%str(/)) %then %let delim=%str(/);
%else %let delim=%str(\);
%mend;
%setdelim

libname certadv "&path";
data certadv.email;
infile datalines dsd truncover;
informat LongLat $30.;
informat Email $32.;
format LongLat $30. Email $32.;
input LongLat$ Email$;
datalines4;
65.2874@50.8984,nichole42@hotmail.com
3.5495@115.2165,fgomez@gmail.com
88.0188@95.1651,jennifer92@gmail.com
56.2354@76.1265,rdeleon@yahoo.com
72.8874@51.1568,blee@rojas.com
23.5249@64.1968,tross@clark.org
50.1589@129.1596,williamsaaron@gmail.com
26.2291@109.0581,tammymorrow@gmail.com
2.1916@13.0526,deannadavid@gmail.com
38.5944@170.5497,daniel79@young.com
16.2988@21.0294,jesse84@thompson.com
1.009@163.5412,ashley32@howe.com
39.0598@125.1859,housesteven@yahoo.com
65.2984@2.0541,hcole@yahoo.com
34.9874@64.6354,jennifer12@woodswilliams.com
26.5248@42.2491,cpena@hugheshill.com
16.5494@99.0512,andrew63@solomon.biz
5.5489@3.5494,amypope@gmail.com
82.7678@62.4527,dixonalexander@foleyray.net
76.3744@83.5463,wnavarro@rogers.com
79.3744@8.5464,joshuawagner@chavez.net
33.5495@15.2165,kcastaneda@gmail.com
108.5944@70.5497,brittanytaylor@gmail.com
38.0774@65.7850,matthewmiller@burtontaylor.com
88.7831@133.2571,lclark@flynn.com
;;;;
data certadv.survnames;
   input Name $32.;
datalines;
Rivera, Marilyn
Baker, Andrew
Wilson, Aaron
Rush, Samantha
Hutchinson, Brittany
Abbott, Angela
Lambert, Alyssa
Casey, James
Owens, John
Cross, Brandon
Hernandez, Maurice
Barajas, Katherine
Maldonado, Wayne
Jones, Angela
Larson, Christina
Wu, Fong
Patil, Sunish
Joram, Koko
;
data certadv.socialacct;
infile datalines dsd truncover;
informat Name $30.;
informat Age 8.;
informat Social_Media_Pref1 $10. Social_Media_Pref2 $10.;
format Name $30. Age 8. Social_Media_Pref1 $10. Social_Media_Pref2 $10.;
input Name$ Age Social_Media_Pref1$ Social_Media_Pref2$;
datalines4;
Emily Stafford,23,IG,FB
Rachel Valenzuela,24,IG,FB
Roger Kelly,26,IG,FB
Laura Ramirez,27,IG,FB
Michael Williams,30,IG,FB
Danielle Middleton,31,IG,FB
Matthew Mcguire,32,IG,FB
Natalie Velasquez,33,IG,FB
Gary Andrews DVM,34,IG,FB
Jeremy Blake,37,IG,FB
Timothy Snyder,38,IG,FB
Brian Smith,39,IG,FB
Sharon Henson,40,IG,FB
Donna Estes,40,IG,FB
Kelly Morris,41,IG,FB
Antonio White,41,IG,FB
Victoria Parker,42,IG,FB
Carrie Byrd,42,IG,FB
Dave Bell,43,IG,FB
Taylor Gay,44,IG,FB
Michael Rivas,44,IG,FB
Sally Patterson,45,IG,FB
Megan Huffman,46,IG,FB
Charles Johnson,46,IG,FB
Tyler Pham,47,IG,FB
Sarah Torres,47,IG,FB
Michael Pierce,48,IG,FB
Raymond Adams,49,IG,FB
Marcus Stein,50,IG,FB
Mark Wallace,50,IG,FB
Philip Schmidt,50,IG,FB
Dawn Smith,50,IG,FB
John Sanders,25,Snapchat,FB
Michael Hall,26,Snapchat,FB
Mariah Carter,28,Snapchat,FB
Steven Pugh,32,Snapchat,FB
Aaron Mccarthy,32,Snapchat,FB
Jerome Foster,32,Snapchat,FB
Debra Wise,33,Snapchat,FB
Neil Peterson,34,Snapchat,FB
Connie Davis,34,Snapchat,FB
Corey Mendoza,35,Snapchat,FB
Jodi Pitts,35,Snapchat,FB
Stacey Jones,36,Snapchat,FB
Christine Bradford,37,Snapchat,FB
Steven Ingram,39,Snapchat,FB
Rachel Jenkins,39,Snapchat,FB
Carrie Rodriguez,39,Snapchat,FB
Charles Mendoza,40,Snapchat,FB
Marilyn Rivera,41,Snapchat,FB
Daniel Sloan,41,Snapchat,FB
Timothy Bryant,43,Snapchat,FB
Michael Whitaker,44,Snapchat,FB
Melissa Vazquez,44,Snapchat,FB
Alexander Mata,45,Snapchat,FB
Daniel Flores,46,Snapchat,FB
Brian Davis,47,Snapchat,FB
Keith Erickson,48,Snapchat,FB
Steven Jordan,48,Snapchat,FB
Melanie Edwards,48,Snapchat,FB
Joshua Oconnor,48,Snapchat,FB
James Jones,48,Snapchat,FB
Amanda Morales,49,Snapchat,FB
Veronica Rodriguez,50,Snapchat,FB
Paul Wiggins,20,Twitter,FB
Jordan Davis,26,Twitter,FB
Thomas Martin,27,Twitter,FB
Lori Dean,31,Twitter,FB
Christopher Lee,32,Twitter,FB
Timothy Gordon,32,Twitter,FB
Michael Melton,34,Twitter,FB
James Long,35,Twitter,FB
Nancy Maldonado,39,Twitter,FB
Jeffrey Haney,40,Twitter,FB
Samantha Jenkins,41,Twitter,FB
Megan Ingram,44,Twitter,FB
Kristine Bell,44,Twitter,FB
Laura Lewis,45,Twitter,FB
Matthew Hurley,45,Twitter,FB
Lauren Morales,46,Twitter,FB
Joseph Parker,47,Twitter,FB
Alicia Bryant,47,Twitter,FB
Jeremy Wagner,48,Twitter,FB
Joseph Barnett,49,Twitter,FB
Melinda Avila,49,Twitter,FB
Christopher Johnston,49,Twitter,FB
Gary Perkins,50,Twitter,FB
Elizabeth Cooper,50,Twitter,FB
Bethany Smith,19,Fb,IG
Clinton Decker,24,Fb,IG
Ashley Boyd,25,Fb,IG
Brandon Adams,30,Fb,IG
Sandra Tapia,31,Fb,IG
Andrea Moore,32,Fb,IG
Paul Mayo,33,Fb,IG
Ebony Nguyen,35,Fb,IG
Claire Figueroa,39,Fb,IG
Ashley Mendoza,40,Fb,IG
Michael Lopez,40,Fb,IG
Andrew Baker,41,Fb,IG
Mary Murphy,41,Fb,IG
Laura Hill,41,Fb,IG
Jared Lowe,43,Fb,IG
Michael Sweeney,45,Fb,IG
Connor Ferguson,48,Fb,IG
Jeffrey Rivera,48,Fb,IG
Michael Morgan,49,Fb,IG
William Adams,49,Fb,IG
Jennifer Taylor,49,Fb,IG
Fred Peters,27,Snapchat,IG
Ashley Hammond,31,Snapchat,IG
Patrick Bray,32,Snapchat,IG
Nancy Lopez,32,Snapchat,IG
Austin Henderson,33,Snapchat,IG
Jamie Jordan,33,Snapchat,IG
Jay Perez,35,Snapchat,IG
Steven Ryan,36,Snapchat,IG
Dr. Juan Shea,38,Snapchat,IG
Jonathan Brown,39,Snapchat,IG
Kristina Mills,40,Snapchat,IG
Michael Hale,43,Snapchat,IG
Mrs. Karen Bridges,43,Snapchat,IG
Michael Wagner,44,Snapchat,IG
Kristen Burnett,44,Snapchat,IG
Krystal Velasquez,44,Snapchat,IG
Carrie Mclaughlin,44,Snapchat,IG
Nicholas Harper,44,Snapchat,IG
Christina Solomon,45,Snapchat,IG
Eileen Craig,47,Snapchat,IG
Kendra Wolfe,48,Snapchat,IG
Jason Arroyo,48,Snapchat,IG
Nicole Dawson,49,Snapchat,IG
Benjamin Grimes,19,Twitter,IG
Jordan Parker,30,Twitter,IG
James Meadows,31,Twitter,IG
Jessica May,35,Twitter,IG
Brittany Rodriguez,35,Twitter,IG
Stacey Dickson,36,Twitter,IG
William Burnett,37,Twitter,IG
Zachary Garcia,39,Twitter,IG
Sean Howell,41,Twitter,IG
Christina Mason,43,Twitter,IG
Stanley Reed,44,Twitter,IG
Karl Long,46,Twitter,IG
Karen Lloyd,47,Twitter,IG
Toni Carlson,48,Twitter,IG
Mary Taylor,21,Fb,LinkedIn
Debra Simpson,31,Fb,LinkedIn
Ryan Adams,31,Fb,LinkedIn
Aaron Wilson,32,Fb,LinkedIn
Brian Parker,32,Fb,LinkedIn
Stacy Cline,34,Fb,LinkedIn
Nina Doyle,34,Fb,LinkedIn
Heather Rodriguez,35,Fb,LinkedIn
Scott Mckenzie,36,Fb,LinkedIn
Brittney Williams,29,Fb,LinkedIn
Alison Bryant,31,Fb,LinkedIn
Carl Hudson,36,Fb,LinkedIn
Mrs. Jessica Bennett,36,Fb,LinkedIn
Angela Cunningham,39,Fb,LinkedIn
Emily Chavez,41,Fb,LinkedIn
Lori Reed,41,Fb,LinkedIn
Courtney Reese,41,Fb,LinkedIn
Amanda Anderson,41,Fb,LinkedIn
Laura Chapman,42,Fb,LinkedIn
Jacqueline Anderson,44,Fb,LinkedIn
Veronica Brown,44,Fb,LinkedIn
Pamela Davis,44,Fb,LinkedIn
Jeffery Rose,44,Fb,LinkedIn
Arthur Maxwell,44,Fb,LinkedIn
Jonathon Smith,45,Fb,LinkedIn
Joseph Evans,45,Fb,LinkedIn
Laurie Smith,46,Fb,LinkedIn
Matthew Mack,46,Fb,LinkedIn
Jessica Sullivan,46,Fb,LinkedIn
Anna Jones,47,Fb,LinkedIn
Karen Lee,48,Fb,LinkedIn
Lynn Hall,48,Fb,LinkedIn
Jennifer Lloyd,48,Fb,LinkedIn
Julie Briggs,49,Fb,LinkedIn
Thomas Stewart,50,Fb,LinkedIn
Amber Merritt MD,23,IG,LinkedIn
Brian Wood,26,IG,LinkedIn
Traci Bates,26,IG,LinkedIn
Kyle Key,29,IG,LinkedIn
Mr. Joseph Small,29,IG,LinkedIn
Anthony Riddle,32,IG,LinkedIn
Robert Torres,34,IG,LinkedIn
Edwin Barker,35,IG,LinkedIn
Jimmy Martinez,36,IG,LinkedIn
Michael Salazar,36,IG,LinkedIn
Karen Rogers,37,IG,LinkedIn
Nicole Gordon,41,IG,LinkedIn
Jennifer Torres,42,IG,LinkedIn
Edward Johnson,42,IG,LinkedIn
Renee Smith,42,IG,LinkedIn
Melissa Hernandez,42,IG,LinkedIn
John Mays,44,IG,LinkedIn
Mary Smith,45,IG,LinkedIn
Samantha Rush,45,IG,LinkedIn
Lisa Smith,45,IG,LinkedIn
Joel Bailey,45,IG,LinkedIn
John Lee,48,IG,LinkedIn
Ashley Hayes,49,IG,LinkedIn
Andrew Warner II,50,IG,LinkedIn
Christina Lee,23,Snapchat,LinkedIn
Timothy Clark,25,Snapchat,LinkedIn
Michael Byrd,26,Snapchat,LinkedIn
Eduardo Cisneros,29,Snapchat,LinkedIn
David Williams,29,Snapchat,LinkedIn
Marcus Smith,34,Snapchat,LinkedIn
Carrie Henderson,34,Snapchat,LinkedIn
Aaron Brown,35,Snapchat,LinkedIn
Penny Mitchell,37,Snapchat,LinkedIn
Christopher Mills,37,Snapchat,LinkedIn
Tracey Williams,38,Snapchat,LinkedIn
Todd Kerr,39,Snapchat,LinkedIn
Kaitlyn Bartlett,40,Snapchat,LinkedIn
Alyssa Nelson,40,Snapchat,LinkedIn
Devin Durham,42,Snapchat,LinkedIn
Kathryn Campbell,42,Snapchat,LinkedIn
Natasha Goodwin,42,Snapchat,LinkedIn
Nathan Rogers,44,Snapchat,LinkedIn
Jennifer Ho,46,Snapchat,LinkedIn
Brian Duke,46,Snapchat,LinkedIn
Patrick Jimenez,46,Snapchat,LinkedIn
Regina Jackson,47,Snapchat,LinkedIn
Erik Garcia,48,Snapchat,LinkedIn
Willie Santos,49,Snapchat,LinkedIn
Manuel Johnson,50,Snapchat,LinkedIn
Michael Mckinney,50,Snapchat,LinkedIn
Andrea Jones,50,Snapchat,LinkedIn
David Burgess,19,Twitter,LinkedIn
Brandon Murray,20,Twitter,LinkedIn
Michael Hernandez,26,Twitter,LinkedIn
Brent Hayes,27,Twitter,LinkedIn
Jordan Johnson,27,Twitter,LinkedIn
Kyle Page,30,Twitter,LinkedIn
Danielle Miller PhD,31,Twitter,LinkedIn
Kaitlin Smith,33,Twitter,LinkedIn
Amanda Mason,34,Twitter,LinkedIn
Eric Lopez,36,Twitter,LinkedIn
Kayla Allen,36,Twitter,LinkedIn
Joe Anderson,38,Twitter,LinkedIn
Mariah Hall,38,Twitter,LinkedIn
Rhonda Miller,41,Twitter,LinkedIn
Jay Randall,42,Twitter,LinkedIn
Joseph Sanchez,43,Twitter,LinkedIn
Linda Wilson,44,Twitter,LinkedIn
Brittany Hutchinson,44,Twitter,LinkedIn
Maria Cole,45,Twitter,LinkedIn
Tommy Santiago,46,Twitter,LinkedIn
Megan Vazquez,48,Twitter,LinkedIn
Jonathan Johnson,48,Twitter,LinkedIn
Erica Dixon,48,Twitter,LinkedIn
William Malone,50,Twitter,LinkedIn
Natasha Henry,42,Fb,Snapchat
Crystal Olson,42,Fb,Snapchat
Meredith Byrd,43,Fb,Snapchat
James Foster,44,Fb,Snapchat
Kelly Stevens MD,45,Fb,Snapchat
April Kelly,47,Fb,Snapchat
Brianna Anderson,48,Fb,Snapchat
Ruben Whitney,48,Fb,Snapchat
Robert Williams,49,Fb,Snapchat
Curtis Booth,50,Fb,Snapchat
Jennifer Logan,21,Fb,Snapchat
William Alvarado,25,Fb,Snapchat
Denise Schmidt,25,Fb,Snapchat
Leslie Matthews,26,Fb,Snapchat
Shawna Hunter,26,Fb,Snapchat
Patricia Schmidt,27,Fb,Snapchat
Derrick Pratt,33,Fb,Snapchat
Austin Perez,33,Fb,Snapchat
Emily Gonzalez,37,Fb,Snapchat
Maria Jensen DVM,38,Fb,Snapchat
Richard Sherman,38,Fb,Snapchat
Anthony Rodriguez,39,Fb,Snapchat
David King,39,Fb,Snapchat
Pamela Anderson,40,Fb,Snapchat
Kimberly Dalton,41,Fb,Snapchat
David Lee,43,Fb,Snapchat
Chad Simmons,47,Fb,Snapchat
Heather Lee,47,Fb,Snapchat
Sarah Castillo,49,Fb,Snapchat
Hannah Cole,50,Fb,Snapchat
Alexa James,50,Fb,Snapchat
Alexander Williams,50,Fb,Snapchat
John Arellano,50,Fb,Snapchat
Brandon Robles,19,IG,Snapchat
Jason Knight,21,IG,Snapchat
Terry Meadows,25,IG,Snapchat
Alexander Hunt,28,IG,Snapchat
Kaitlin Hill,29,IG,Snapchat
Dennis King,30,IG,Snapchat
Diana Cooper,32,IG,Snapchat
John Weaver,32,IG,Snapchat
Christina Moore,33,IG,Snapchat
Vanessa Price,35,IG,Snapchat
Angela Abbott,36,IG,Snapchat
Colton Sandoval,36,IG,Snapchat
Teresa Edwards,36,IG,Snapchat
Maria Boyd,37,IG,Snapchat
Lisa Ford,37,IG,Snapchat
Christopher Salazar,37,IG,Snapchat
Samantha Navarro,39,IG,Snapchat
Rebecca Murphy,39,IG,Snapchat
Joseph Adams,40,IG,Snapchat
Mark Evans,42,IG,Snapchat
Jose Santos,42,IG,Snapchat
Stephen Chavez,44,IG,Snapchat
Kelsey Mercado,46,IG,Snapchat
Anita Li,48,IG,Snapchat
Edward Sweeney,49,IG,Snapchat
Emily Collins,49,IG,Snapchat
Anna Evans,49,IG,Snapchat
Crystal Lewis,49,IG,Snapchat
Maria Williams,49,IG,Snapchat
Kelly Johnson,49,IG,Snapchat
Gloria Rubio,50,IG,Snapchat
Joseph Elliott,50,IG,Snapchat
Jeremy Jones,50,IG,Snapchat
Robyn Boyd,19,Twitter,Snapchat
Mark Hampton,21,Twitter,Snapchat
Kimberly Heath,21,Twitter,Snapchat
Paula Thomas,26,Twitter,Snapchat
Katherine Barajas,29,Twitter,Snapchat
Tanner Guzman,30,Twitter,Snapchat
Cynthia Diaz,31,Twitter,Snapchat
William Webb,33,Twitter,Snapchat
Richard Stuart,34,Twitter,Snapchat
Wayne Maldonado,35,Twitter,Snapchat
Kevin Castro,35,Twitter,Snapchat
Alan Burke,36,Twitter,Snapchat
Timothy Bradley,37,Twitter,Snapchat
Angela Jones,38,Twitter,Snapchat
Rebecca Eaton,38,Twitter,Snapchat
Hannah Smith,40,Twitter,Snapchat
Christina Larson,43,Twitter,Snapchat
Gregory Miller,47,Twitter,Snapchat
Francisco Spencer,47,Twitter,Snapchat
Michael White,47,Twitter,Snapchat
Vanessa Bush,48,Twitter,Snapchat
Joseph Smith,48,Twitter,Snapchat
Michael Reeves,36,Fb,Twitter
Jessica Mueller,37,Fb,Twitter
Kathleen Thomas,37,Fb,Twitter
Laura Bowman,37,Fb,Twitter
Sarah Williams,38,Fb,Twitter
Alyssa Lambert,40,Fb,Twitter
Crystal Kent,40,Fb,Twitter
Thomas Chavez DVM,41,Fb,Twitter
Crystal Smith MD,41,Fb,Twitter
Jennifer Griffith,42,Fb,Twitter
Ashley Hill,20,Fb,Twitter
Eric Diaz,22,Fb,Twitter
Jennifer Blackburn,26,Fb,Twitter
Wendy Austin,28,Fb,Twitter
Alexandra Romero,30,Fb,Twitter
Kenneth Mueller,31,Fb,Twitter
Keith Martin,33,Fb,Twitter
Patty King,35,Fb,Twitter
Jennifer Taylor,36,Fb,Twitter
Andre Watson,36,Fb,Twitter
Matthew Ferguson,38,Fb,Twitter
Robert Armstrong,39,Fb,Twitter
Erin Jones,39,Fb,Twitter
Kayla Reese,39,Fb,Twitter
Daniel Bell,40,Fb,Twitter
Maurice Hernandez,40,Fb,Twitter
Diana Jones,42,Fb,Twitter
Misty Campbell,44,Fb,Twitter
Michael Greer,45,Fb,Twitter
Jason Pacheco,47,Fb,Twitter
Dalton Miller,48,Fb,Twitter
Kayla Rojas,20,IG,Twitter
Beth Hardin,24,IG,Twitter
Michelle Velasquez,26,IG,Twitter
Lawrence Reid,27,IG,Twitter
Roger Strickland,34,IG,Twitter
Amanda Baker,35,IG,Twitter
Jennifer Wilson,37,IG,Twitter
Isabel Martinez,37,IG,Twitter
Kelly Wallace,39,IG,Twitter
Louis Olson,39,IG,Twitter
Melanie Clark,40,IG,Twitter
Derek Jones,40,IG,Twitter
Deborah Ortiz DDS,40,IG,Twitter
Yolanda Dickerson,42,IG,Twitter
Todd Johnson,43,IG,Twitter
Gary Moran,43,IG,Twitter
Jennifer Marsh,43,IG,Twitter
Connor Torres,43,IG,Twitter
Kayla Smith,43,IG,Twitter
Cody Martinez,44,IG,Twitter
Amy Robinson,44,IG,Twitter
Jessica Ellis,46,IG,Twitter
Cheyenne Murphy,46,IG,Twitter
Jennifer Lee,46,IG,Twitter
James Casey,50,IG,Twitter
Henry Thornton,29,Snapchat,Twitter
Nicole Mcgee,30,Snapchat,Twitter
Christian Allen,31,Snapchat,Twitter
Jack Gonzalez,32,Snapchat,Twitter
Julie Jenkins,33,Snapchat,Twitter
Alexander Fleming,35,Snapchat,Twitter
Peter Jones,37,Snapchat,Twitter
Sean Wilson,37,Snapchat,Twitter
Cynthia Miller,41,Snapchat,Twitter
Dana Curtis,41,Snapchat,Twitter
Larry Williams,42,Snapchat,Twitter
Donna Harvey,44,Snapchat,Twitter
Jordan Davis,45,Snapchat,Twitter
Lauren Mcdonald,46,Snapchat,Twitter
Brandon Cross,46,Snapchat,Twitter
John Owens,46,Snapchat,Twitter
Justin Abbott,47,Snapchat,Twitter
Timothy Smith,48,Snapchat,Twitter
David Smith,48,Snapchat,Twitter
Gloria Hernandez,49,Snapchat,Twitter
Mindy Lindsey,50,Snapchat,Twitter
;;;;
data certadv.NANumbr;
   infile datalines dsd truncover;
   informat Name$38. PhoneNumber$25. Country$13.;
   format Name$38. PhoneNumber$25. Country$13.;
   input Name$ PhoneNumber$ Country$;
datalines4;
Edgar Meadows,802-166-4742,United States
Lucas Butler,63782-9015,United States
Sarah Young,530-587-5777,United States
Alison Campbell,943.519.8369,United States
Matthew Freeman,4623508039,United States
Michael Brewer,+40(8)3799718099,United States
Peter Mclaughlin,158.447.0199,United States
William Small,480-398-3374,United States
Kelly Munoz,009.387.7549,United States
Kathryn Orr,169-125-0446,United States
John Moore,(775)910-1195,United States
Anne Weaver,793-199-3925,United States
Stacey Evans,137.049.6996,United States
Diana Moore,(577)798-9621,United States
Matthew Ellison,(783)007-4339,United States
Jaime White,466-646-6557,United States
Amy Williams,953-246-7733,United States
Kyle Parker,226-023-0145,United States
Justin Ball,(787)088-8336,United States
Sarah Fernandez,64230-5446,United States
Jeffrey Archer,445-765-3784,United States
Brandon Kerr,555-677-4102,United States
Denise Todd,944-905-6288,United States
Stephanie Anderson,275-280633,United States
Nancy Thomas,642-802-8384,United States
Melissa Gross,879-348-5158,United States
Joshua Rice,915.430.0705,United States
Martin Stewart,224.682.1568,United States
Marcus Andersen,19678-0282,United States
Lic. Oswaldo Quiroz,234.025.3496,Mexico
Elvia Serna Armas,4480859634,Mexico
Sr(a). Pedro Rivera,(618)933-0205,Mexico
Enrique Miriam Badillo Colan,5954610713,Mexico
Francisco Javier Vanesa Espinoza Pajez,692-804-6430x771,Mexico
Pedro Serrato Cardenas,602.963.7498,Mexico
Tania Luis Miguel Rojo Ceballos,3473894882,Mexico
Leonor Cisneros,623-656-4441,Mexico
Arturo Longoria,203-752-8263,Mexico
Felix Fernando Barajas,78143-9779,Mexico
Ilse Pizarro,(569)014-8835,Mexico
Evelio Pedro Montanetz,+23(7)9113746507,Mexico
Camilo Indira Mojica Romero,718.690.4147,Mexico
Pablo Federico Escamilla Lovato,354-508173,Mexico
Sr(a). Geranimo Miranda,505.373.2559,Mexico
Luisa Pulido,+54(9)0418358368,Mexico
Lorena Arevalo Granado,2124393638,Mexico
Minerva Baeza,542-214-2366,Mexico
Emilio Quezada Paz,839.125.9445,Mexico
Clara Nicolas Suajrez,+13(9)4472886354,Mexico
Reynaldo Francisco Salcido Peralta,7157230506,Mexico
Daniela Rivero Quintero,340-164-9247,Mexico
Pablo Montalvo,630-742-7059x89285,Mexico
Ignacio Karla Franco,104-269-6828,Mexico
Maria Luisa Teresa Ponce,787.127.4264,Mexico
Amador Alvaro Luna,3581599311,Mexico
Juana Mayte Leal,211.548.6239x6088,Mexico
Mario Sanabria Vallejo,624-155-2458,Mexico
Pedro Vallejo Salgado,875-613-3160,Mexico
Kathryn Branch MD,(327) 955-4999,Canada
Timothy Christian,862-737-4712,Canada
Jennifer Meadows,(316) 787-3335,Canada
Jessica Beltran,+1(333)037-4783,Canada
Mark Ryan,13439-7604,Canada
John Anderson,848-703810,Canada
Scott Jimenez,(146) 890-6079,Canada
Alexander Mcknight,(738) 766-2114,Canada
Courtney White,648 954 6410,Canada
William Gilbert,60899-7804,Canada
Nicole Smith,120 903 2849,Canada
John Campbell,1-(840)-797-7582,Canada
Amanda Johnson,362-686-6286,Canada
Jesse Robinson,288-047-0821,Canada
Jessica Glenn,1-(131) 559-9430,Canada
Lisa Evans PhD,244-697-6738,Canada
Rachel Baxter,1-(739) 860-0378,Canada
Robert Taylor,859-097-3792,Canada
Kristin Porter,(801)-074-6279,Canada
Wayne Lozano,+1(851) 014-8699,Canada
Ann Keith,(375) 862-7384,Canada
Holly Briggs,434-129-9514,Canada
Dawn Sawyer,558-339941,Canada
Marissa Hudson,814-917-4811,Canada
Dean Welch,+1(888)348221,Canada
Michael Evans,(723)622-4114,Canada
Joe Downs,(846) 859528,Canada
Joshua Fuller,+1(202)280-2118,Canada
Kimberly Rogers,331.485.8475,Canada
;;;;
proc sort data=certadv.NaNumbr out=certadv.NaNumbr;
by Name;
run;
data certadv.slogans;
    infile datalines dsd truncover;
    informat Slogan1 $38. ;
    informat Slogan2 $41. ;
    informat Slogan3 $34. ;
    format Slogan1 $38. ;
    format Slogan2 $41. ;
    format Slogan3 $34. ;
    input
                  Slogan1 
                  Slogan2 
                  Slogan3;
datalines4;
repurpose 24/7 markets,productize enterprise web services,brand efficient mindshare
revolutionize killer solutions,expedite e-business e-services,innovate back-end web services
harness 24/7 e-services,redefine visionary systems,exploit strategic schemas
reinvent clicks-and-mortar platforms,revolutionize B2B systems,target integrated models
reintermediate 24/365 systems,cultivate strategic functionalities,brand turn-key synergies
productize best-of-breed communities,benchmark out-of-the-box channels,generate seamless users
iterate killer functionalities,envisioneer user-centric supply-chains,extend end-to-end bandwidth
drive cross-platform portals,embrace clicks-and-mortar infrastructures,target dot-com content
seize holistic web services,harness best-of-breed mindshare,scale integrated synergies
incentivize global niches,generate impactful vortals,aggregate scalable deliverables
extend wireless models,deploy cross-platform mindshare,evolve enterprise mindshare
architect visionary infomediaries,transform proactive models,recontextualize viral communities
transition clicks-and-mortar e-markets,aggregate robust relationships,strategize wireless infomediaries
integrate strategic systems,scale customized methodologies,generate sexy technologies
implement customized content,implement web-enabled partnerships,monetize B2C e-business
engage B2B platforms,mesh bleeding-edge metrics,synergize B2B action-items
innovate bleeding-edge architectures,enable wireless e-services,grow strategic communities
evolve world-class e-tailers,productize virtual e-markets,syndicate rich infrastructures
integrate dynamic content,grow front-end experiences,reintermediate granular platforms
reinvent user-centric content,aggregate frictionless e-services,deliver customized infrastructures
revolutionize innovative relationships,recontextualize vertical vortals,seize value-added niches
facilitate web-enabled interfaces,recontextualize scalable initiatives,engage ubiquitous schemas
leverage ubiquitous e-tailers,envisioneer enterprise channels,incentivize extensible partnerships
drive e-business e-services,whiteboard global deliverables,scale user-centric convergence
integrate out-of-the-box schemas,recontextualize vertical experiences,leverage frictionless synergies
grow global action-items,repurpose global technologies,synergize synergistic content
leverage frictionless technologies,enhance turn-key e-business,scale virtual paradigms
recontextualize bricks-and-clicks functionalities,target killer schemas,exploit efficient e-commerce
matrix customized e-tailers,recontextualize proactive architectures,e-enable distributed technologies
transition global vortals,expedite dynamic networks,exploit ubiquitous infomediaries
repurpose viral experiences,whiteboard customized infomediaries,orchestrate next-generation bandwidth
enhance enterprise infomediaries,extend B2B architectures,aggregate ubiquitous users
architect dot-com convergence,enhance rich experiences,optimize distributed paradigms
leverage proactive eyeballs,visualize compelling platforms,embrace user-centric portals
matrix viral initiatives,strategize B2B mindshare,matrix extensible systems
target web-enabled relationships,engineer compelling e-services,deliver front-end e-business
redefine efficient initiatives,orchestrate sexy models,envisioneer front-end content
productize transparent convergence,target web-enabled initiatives,reintermediate magnetic synergies
recontextualize web-enabled architectures,envisioneer extensible schemas,e-enable compelling ROI
cultivate web-enabled portals,architect integrated e-tailers,monetize sexy markets
incubate mission-critical infrastructures,utilize e-business supply-chains,grow extensible web-readiness
unleash scalable vortals,synergize user-centric applications,brand killer metrics
incubate collaborative networks,transition distributed content,orchestrate holistic metrics
synergize transparent metrics,empower rich portals,e-enable cross-platform web services
synthesize web-enabled networks,facilitate magnetic solutions,harness revolutionary synergies
harness sticky functionalities,morph end-to-end communities,empower collaborative users
mesh dynamic applications,exploit magnetic markets,recontextualize granular channels
extend visionary relationships,utilize granular methodologies,transition interactive networks
mesh intuitive experiences,syndicate global content,implement global experiences
deliver dynamic users,synergize global metrics,incubate global supply-chains
evolve cross-media channels,scale e-business bandwidth,harness bricks-and-clicks partnerships
transform global web services,seize user-centric portals,drive enterprise technologies
cultivate sexy eyeballs,orchestrate collaborative users,disintermediate rich platforms
grow user-centric relationships,streamline plug-and-play relationships,deploy enterprise vortals
benchmark one-to-one communities,incentivize front-end e-tailers,implement strategic e-services
matrix scalable vortals,engage ubiquitous niches,implement compelling e-tailers
benchmark best-of-breed e-markets,unleash rich convergence,mesh B2B e-business
disintermediate strategic technologies,brand best-of-breed bandwidth,innovate enterprise relationships
incubate synergistic infomediaries,monetize magnetic systems,orchestrate rich infomediaries
empower scalable relationships,mesh global models,brand virtual vortals
streamline dynamic e-services,innovate scalable infrastructures,deploy plug-and-play partnerships
evolve visionary e-commerce,visualize granular e-commerce,envisioneer extensible web-readiness
transform vertical initiatives,optimize best-of-breed web-readiness,recontextualize dynamic convergence
iterate leading-edge e-markets,synthesize 24/7 markets,disintermediate global mindshare
incentivize next-generation networks,empower mission-critical synergies,enable wireless deliverables
aggregate efficient deliverables,morph bricks-and-clicks e-markets,enable interactive paradigms
cultivate granular e-business,disintermediate end-to-end vortals,reinvent wireless deliverables
reintermediate viral paradigms,synthesize vertical networks,expedite visionary interfaces
expedite efficient channels,incubate open-source e-business,aggregate synergistic content
matrix enterprise ROI,envisioneer user-centric deliverables,implement open-source infomediaries
engineer magnetic markets,target interactive ROI,streamline user-centric applications
innovate seamless convergence,integrate real-time paradigms,engineer seamless content
cultivate customized niches,whiteboard cross-media architectures,brand global markets
aggregate proactive e-tailers,target transparent functionalities,target magnetic e-markets
disintermediate sexy initiatives,brand 24/7 metrics,embrace best-of-breed portals
;;;;
data certadv.stocks;
   infile datalines dsd truncover;
   input Stock:$14.
         Date
		 Open
		 Close
;
format Date mmddyy10.;
datalines4;
Random Company,21609,53.98,54.25
Random Company,21640,50.39,51.65
Random Company,21670,52.62,52.57
Random Company,21703,49.61,50.01
Random Company,21731,50.53,50.37
Random Company,21762,50.89,49.68
Random Company,21795,44.21,44.04
;;;;
data certadv.BASEBALL(label='1986 Baseball Data');
  infile datalines dsd truncover;
  input Name:$18. Team:$14. nAtBat:32. nHits:32. nHome:32. nRuns:32. nRBI:32. nBB:32. YrMajor:32. CrAtBat:32. CrHits:32. CrHome:32. CrRuns:32. CrRbi:32. CrBB:32. League:$8. Division:$8. Position:$8. nOuts:32. nAssts:32. nError:32. Salary:32. Div:$16. logSalary:32.;
  label Name="Player's Name" Team="Team at the End of 1986" nAtBat="Times at Bat in 1986" nHits="Hits in 1986" nHome="Home Runs in 1986" nRuns="Runs in 1986" nRBI="RBIs in 1986" nBB="Walks in 1986" YrMajor="Years in the Major Leagues" CrAtBat="Career Times at Bat" CrHits="Career Hits" CrHome="Career Home Runs" CrRuns="Career Runs" CrRbi="Career RBIs" CrBB="Career Walks" League="League at the End of 1986" Division="Division at the End of 1986" Position="Position(s) in 1986" nOuts="Put Outs in 1986" nAssts="Assists in 1986" nError="Errors in 1986" Salary="1987 Salary in $ Thousands" Div="League and Division" logSalary="Log Salary";
datalines4;
"Allanson, Andy",Cleveland,293,66,1,30,29,14,1,293,66,1,30,29,14,American,East,C,446,33,20,,AE,
"Ashby, Alan",Houston,315,81,7,24,38,39,14,3449,835,69,321,414,375,National,West,C,632,43,10,475,NW,6.163314804
"Davis, Alan",Seattle,479,130,18,66,72,76,3,1624,457,63,224,266,263,American,West,1B,880,82,14,480,AW,6.1737861039
"Dawson, Andre",Montreal,496,141,20,65,78,37,11,5628,1575,225,828,838,354,National,East,RF,200,11,3,500,NE,6.2146080984
"Galarraga, Andres",Montreal,321,87,10,39,42,30,2,396,101,12,48,46,33,National,East,1B,805,40,4,91.5,NE,4.5163389723
"Griffin, Alfredo",Oakland,594,169,4,74,51,35,11,4408,1133,19,501,336,194,American,West,SS,282,421,25,750,AW,6.6200732065
"Newman, Al",Montreal,185,37,1,23,8,21,2,214,42,1,30,9,24,National,East,2B,76,127,7,70,NE,4.248495242
"Salazar, Argenis",Kansas City,298,73,0,24,24,7,3,509,108,0,41,37,12,American,West,SS,121,283,9,100,AW,4.605170186
"Thomas, Andres",Atlanta,323,81,6,26,32,8,2,341,86,6,32,34,8,National,West,SS,143,290,19,75,NW,4.3174881135
"Thornton, Andre",Cleveland,401,92,17,49,66,65,13,5206,1332,253,784,890,866,American,East,DH,0,0,0,1100,AE,7.0030654588
"Trammell, Alan",Detroit,574,159,21,107,75,59,10,4631,1300,90,702,504,488,American,East,SS,238,445,22,517.143,AE,6.248319432
"Trevino, Alex",Los Angeles,202,53,4,31,26,27,9,1876,467,15,192,186,161,National,West,C,304,45,11,512.5,NW,6.239300711
"Van Slyke, Andy",St Louis,418,113,13,48,61,47,4,1512,392,41,205,204,203,National,East,RF,211,11,7,550,NE,6.3099182782
"Wiggins, Alan",Baltimore,239,60,0,30,11,22,6,1941,510,4,309,103,207,American,East,2B,121,151,6,700,AE,6.551080335
"Almon, Bill",Pittsburgh,196,43,7,29,27,30,13,3231,825,36,376,290,238,National,East,UT,80,45,8,240,NE,5.4806389233
"Beane, Billy",Minneapolis,183,39,3,20,15,11,3,201,42,3,20,16,11,American,West,OF,118,0,0,,AW,
"Bell, Buddy",Cincinnati,568,158,20,89,75,73,15,8068,2273,177,1045,993,732,National,West,3B,105,290,10,775,NW,6.6528630294
"Biancalana, Buddy",Kansas City,190,46,2,24,8,15,5,479,102,5,65,23,39,American,West,SS,102,177,16,175,AW,5.1647859739
"Bochte, Bruce",Oakland,407,104,6,57,43,65,12,5233,1478,100,643,658,653,American,West,1B,912,88,9,,AW,
"Bochy, Bruce",San Diego,127,32,8,16,22,14,8,727,180,24,67,82,56,National,West,C,202,22,2,135,NW,4.9052747784
"Bonds, Barry",Pittsburgh,413,92,16,72,48,65,1,413,92,16,72,48,65,National,East,CF,280,9,5,100,NE,4.605170186
"Bonilla, Bobby",Chicago,426,109,3,55,43,62,1,426,109,3,55,43,62,American,West,O1,361,22,2,115,AW,4.7449321284
"Boone, Bob",California,442,98,7,48,49,43,15,5982,1501,96,555,702,533,American,West,C,812,84,11,,AW,
"Brenly, Bob",San Francisco,472,116,16,60,62,74,6,1924,489,67,242,251,240,National,West,C,518,55,3,600,NW,6.3969296552
"Buckner, Bill",Boston,629,168,18,73,102,40,18,8424,2464,164,1008,1072,402,American,East,1B,1067,157,14,776.667,AE,6.6550116871
"Butler, Brett",Cleveland,587,163,4,92,51,70,6,2695,747,17,442,198,317,American,East,CF,434,9,3,765,AE,6.6398758338
"Dernier, Bob",Chicago,324,73,4,32,18,22,7,1931,491,13,291,108,180,National,East,CF,222,3,3,708.333,NE,6.5629143221
"Diaz, Bo",Cincinnati,474,129,10,50,56,40,10,2331,604,61,246,327,166,National,West,C,732,83,13,750,NW,6.6200732065
"Doran, Bill",Houston,550,152,6,92,37,81,5,2308,633,32,349,182,308,National,West,2B,262,329,16,625,NW,6.4377516497
"Downing, Brian",California,513,137,20,90,95,90,14,5201,1382,166,763,734,784,American,West,LF,267,5,3,900,AW,6.8023947633
"Grich, Bobby",California,313,84,9,42,30,39,17,6890,1833,224,1033,864,1087,American,West,2B,127,221,7,,AW,
"Hatcher, Billy",Houston,419,108,6,55,36,22,3,591,149,8,80,46,31,National,West,CF,226,7,4,110,NW,4.7004803658
"Horner, Bob",Atlanta,517,141,27,70,87,52,9,3571,994,215,545,652,337,National,West,1B,1378,102,8,,NW,
"Jacoby, Brook",Cleveland,583,168,17,83,80,56,5,1646,452,44,219,208,136,American,East,3B,109,292,25,612.5,AE,6.4175489424
"Kearney, Bob",Seattle,204,49,6,23,25,12,7,1309,308,27,126,132,66,American,West,C,419,46,5,300,AW,5.7037824747
"Madlock, Bill",Los Angeles,379,106,10,38,60,30,14,6207,1906,146,859,803,571,National,West,3B,72,170,24,850,NW,6.7452363495
"Meacham, Bobby",New York,161,36,0,19,10,17,4,1053,244,3,156,86,107,American,East,SS,70,149,12,,AE,
"Melvin, Bob",San Francisco,268,60,5,24,25,15,2,350,78,5,34,29,18,National,West,C,442,59,6,90,NW,4.4998096703
"Oglivie, Ben",Milwaukee,346,98,5,31,53,30,16,5913,1615,235,784,901,560,American,East,DH,0,0,0,,AE,
"Roberts, Bip",San Diego,241,61,1,34,12,14,1,241,61,1,34,12,14,National,West,2B,166,172,10,,NW,
"Robidoux, Billy Jo",Milwaukee,181,41,1,15,21,33,2,232,50,4,20,29,45,American,East,1B,326,29,5,67.5,AE,4.2121275979
"Russell, Bill",Los Angeles,216,54,0,21,18,15,18,7318,1926,46,796,627,483,National,West,UT,103,84,5,,NW,
"Sample, Billy",Atlanta,200,57,6,23,14,14,9,2516,684,46,371,230,195,National,West,OF,69,1,1,,NW,
"Schroeder, Bill",Milwaukee,217,46,7,32,19,9,4,694,160,32,86,76,32,American,East,UT,307,25,1,180,AE,5.1929568509
"Wynegar, Butch",New York,194,40,7,19,29,30,11,4183,1069,64,486,493,608,American,East,C,325,22,2,,AE,
"Bando, Chris",Cleveland,254,68,2,28,26,22,6,999,236,21,108,117,118,American,East,C,359,30,4,305,AE,5.7203117766
"Brown, Chris",San Francisco,416,132,7,57,49,33,3,932,273,24,113,121,80,National,West,3B,73,177,18,215,NW,5.3706380281
"Castillo, Carmen",Cleveland,205,57,8,34,32,9,5,756,192,32,117,107,51,American,East,OD,58,4,4,247.5,AE,5.511410582
"Cooper, Cecil",Milwaukee,542,140,12,46,75,41,16,7099,2130,235,987,1089,431,American,East,1B,697,61,9,,AE,
"Davis, Chili",San Francisco,526,146,13,71,70,84,6,2648,715,77,352,342,289,National,West,RF,303,9,9,815,NW,6.7031881132
"Fisk, Carlton",Chicago,457,101,14,42,63,22,17,6521,1767,281,1003,977,619,American,West,C,389,39,4,875,AW,6.7742238864
"Ford, Curt",St Louis,214,53,2,30,29,23,2,226,59,2,32,32,27,National,East,OF,109,7,3,70,NE,4.248495242
"Johnson, Cliff",Toronto,336,84,15,48,55,52,15,3945,1016,196,539,699,568,American,East,DH,8,1,0,,AE,
"Lansford, Carney",Oakland,591,168,19,80,72,39,9,4478,1307,113,634,563,319,American,West,3B,67,147,4,1200,AW,7.0900768358
"Lemon, Chet",Detroit,403,101,12,45,53,39,12,5150,1429,166,747,666,526,American,East,CF,316,6,5,675,AE,6.5147126909
"Maldonado, Candy",San Francisco,405,102,18,49,85,20,6,950,231,29,99,138,64,National,West,OF,161,10,3,415,NW,6.0282785202
"Martinez, Carmelo",San Diego,244,58,9,28,25,35,4,1335,333,49,164,179,194,National,West,O1,142,14,2,340,NW,5.8289456176
"Moore, Charlie",Milwaukee,235,61,3,24,39,21,14,3926,1029,35,441,401,333,American,East,C,425,43,4,,AE,
"Reynolds, Craig",Houston,313,78,6,32,41,12,12,3742,968,35,409,321,170,National,West,SS,106,206,7,416.667,NW,6.0322873416
"Ripken, Cal",Baltimore,627,177,25,98,81,70,6,3210,927,133,529,472,313,American,East,SS,240,482,13,1350,AE,7.2078598714
"Snyder, Cory",Cleveland,416,113,24,58,69,16,1,416,113,24,58,69,16,American,East,OS,203,70,10,90,AE,4.4998096703
"Speier, Chris",Chicago,155,44,6,21,23,15,16,6631,1634,98,698,661,777,National,East,3S,53,88,3,275,NE,5.6167710977
"Wilkerson, Curt",Texas,236,56,0,27,15,11,4,1115,270,1,116,64,57,American,West,2S,125,199,13,230,AW,5.4380793089
"Anderson, Dave",Los Angeles,216,53,1,31,15,22,4,926,210,9,118,69,114,National,West,3S,73,152,11,225,NW,5.4161004022
"Baker, Dusty",Oakland,242,58,4,25,19,27,19,7117,1981,242,964,1013,762,American,West,OF,90,4,0,,AW,
"Baylor, Don",Boston,585,139,31,93,94,62,17,7546,1982,315,1141,1179,727,American,East,DH,0,0,0,950,AE,6.8564619846
"Bilardello, Dann",Montreal,191,37,4,12,17,14,4,773,163,16,61,74,52,National,East,C,391,38,8,,NE,
"Boston, Daryl",Chicago,199,53,5,29,22,21,3,514,120,8,57,40,39,American,West,CF,152,3,5,75,AW,4.3174881135
"Coles, Darnell",Detroit,521,142,20,67,86,45,4,815,205,22,99,103,78,American,East,3B,107,242,23,105,AE,4.6539603502
"Collins, Dave",Detroit,419,113,1,44,27,44,12,4484,1231,32,612,344,422,American,East,LF,211,2,1,,AE,
"Concepcion, Dave",Cincinnati,311,81,3,42,30,26,17,8247,2198,100,950,909,690,National,West,UT,153,223,10,320,NW,5.7683209958
"Daulton, Darren",Philadelphia,138,31,8,18,21,38,3,244,53,12,33,32,55,National,East,C,244,21,4,,NE,
"DeCinces, Doug",California,512,131,26,69,96,52,14,5347,1397,221,712,815,548,American,West,3B,119,216,12,850,AW,6.7452363495
"Evans, Darrell",Detroit,507,122,29,78,85,91,18,7761,1947,347,1175,1152,1380,American,East,1B,808,108,2,535,AE,6.2822667469
"Evans, Dwight",Boston,529,137,26,86,97,97,15,6661,1785,291,1082,949,989,American,East,RF,280,10,5,933.333,AE,6.8387620504
"Garcia, Damaso",Toronto,424,119,6,57,46,13,9,3651,1046,32,461,301,112,American,East,2B,224,286,8,850,AE,6.7452363495
"Gladden, Dan",San Francisco,351,97,4,55,29,39,4,1258,353,16,196,110,117,National,West,CF,226,7,3,210,NW,5.3471075307
"Heep, Danny",New York,195,55,5,24,33,30,8,1313,338,25,144,149,153,National,East,OF,83,2,1,,NE,
"Henderson, Dave",Seattle,388,103,15,59,47,39,6,2174,555,80,285,274,186,American,West,OF,182,9,4,325,AW,5.7838251823
"Hill, Donnie",Oakland,339,96,4,37,29,23,4,1064,290,11,123,108,55,American,West,23,104,213,9,275,AW,5.6167710977
"Kingman, Dave",Oakland,561,118,35,70,94,33,16,6677,1575,442,901,1210,608,American,West,DH,463,32,8,,AW,
"Lopes, Davey",Chicago,255,70,7,49,35,43,15,6311,1661,154,1019,608,820,National,East,3O,51,54,8,450,NE,6.1092475828
"Mattingly, Don",New York,677,238,31,117,113,53,5,2223,737,93,349,401,171,American,East,1B,1377,100,6,1975,AE,7.5883236773
"Motley, Darryl",Kansas City,227,46,7,23,20,12,5,1325,324,44,156,158,67,American,West,RF,92,2,2,,AW,
"Murphy, Dale",Atlanta,614,163,29,89,83,75,11,5017,1388,266,813,822,617,National,West,CF,303,6,6,1900,NW,7.5496091652
"Murphy, Dwayne",Oakland,329,83,9,50,39,56,9,3828,948,145,575,528,635,American,West,CF,276,6,2,600,AW,6.3969296552
"Parker, Dave",Cincinnati,637,174,31,89,116,56,14,6727,2024,247,978,1093,495,National,West,RF,278,9,9,1041.667,NW,6.9485775935
"Pasqua, Dan",New York,280,82,16,44,45,47,2,428,113,25,61,70,63,American,East,LF,148,4,2,110,AE,4.7004803658
"Porter, Darrell",Texas,155,41,12,21,29,22,16,5409,1338,181,746,805,875,American,West,CD,165,9,1,260,AW,5.560681631
"Schofield, Dick",California,458,114,13,67,57,48,4,1350,298,28,160,123,122,American,West,SS,246,389,18,475,AW,6.163314804
"Slaught, Don",Texas,314,83,13,39,46,16,5,1457,405,28,156,159,76,American,West,C,533,40,4,431.5,AW,6.0672675105
"Strawberry, Darryl",New York,475,123,27,76,93,72,4,1810,471,108,292,343,267,National,East,RF,226,10,6,1220,NE,7.1066061377
"Sveum, Dale",Milwaukee,317,78,7,35,35,32,1,317,78,7,35,35,32,American,East,3B,45,122,26,70,AE,4.248495242
"Tartabull, Danny",Seattle,511,138,25,76,96,61,3,592,164,28,87,110,71,American,West,RF,157,7,8,145,AW,4.9767337424
"Thon, Dickie",Houston,278,69,3,24,21,29,8,2079,565,32,258,192,162,National,West,SS,142,210,10,,NW,
"Walling, Denny",Houston,382,119,13,54,58,36,12,2133,594,41,287,294,227,National,West,3B,59,156,9,595,NW,6.3885614055
"Winfield, Dave",New York,565,148,24,90,104,77,14,7287,2083,305,1135,1234,791,American,East,RF,292,9,5,1861.46,AE,7.529116405
"Cabell, Enos",Los Angeles,277,71,2,27,29,14,15,5952,1647,60,753,596,259,National,West,1B,360,32,5,,NW,
"Davis, Eric",Cincinnati,415,115,27,97,71,68,3,711,184,45,156,119,99,National,West,LF,274,2,7,300,NW,5.7037824747
"Milner, Eddie",Cincinnati,424,110,15,70,47,36,7,2130,544,38,335,174,258,National,West,CF,292,6,3,490,NW,6.1944053911
"Murray, Eddie",Baltimore,495,151,17,61,84,78,10,5624,1679,275,884,1015,709,American,East,1B,1045,88,13,2460,AE,7.8079166289
"Riles, Ernest",Milwaukee,524,132,9,69,47,54,2,972,260,14,123,92,90,American,East,SS,212,327,20,,AE,
"Romero, Ed",Boston,233,49,2,41,23,18,8,1350,336,7,166,122,106,American,East,SS,102,132,10,375,AE,5.926926026
"Whitt, Ernie",Toronto,395,106,16,48,56,35,10,2303,571,86,266,323,248,American,East,C,709,41,7,,AE,
"Lynn, Fred",Baltimore,397,114,23,67,67,53,13,5589,1632,241,906,926,716,American,East,CF,244,2,4,,AE,
"Rayford, Floyd",Baltimore,210,37,8,15,19,15,6,994,244,36,107,114,53,American,East,3B,40,115,15,,AE,
"Stubbs, Franklin",Los Angeles,420,95,23,55,58,37,3,646,139,31,77,77,61,National,West,LF,206,10,7,,NW,
"White, Frank",Kansas City,566,154,22,76,84,43,14,6100,1583,131,743,693,300,American,West,2B,316,439,10,750,AW,6.6200732065
"Bell, George",Toronto,641,198,31,101,108,41,5,2129,610,92,297,319,117,American,East,LF,269,17,10,1175,AE,7.0690234266
"Braggs, Glenn",Milwaukee,215,51,4,19,18,11,1,215,51,4,19,18,11,American,East,LF,116,5,12,70,AE,4.248495242
"Brett, George",Kansas City,441,128,16,70,73,80,14,6675,2095,209,1072,1050,695,American,West,3B,97,218,16,1500,AW,7.3132203871
"Brock, Greg",Los Angeles,325,76,16,33,52,37,5,1506,351,71,195,219,214,National,West,1B,726,87,3,385,NW,5.9532433343
"Carter, Gary",New York,490,125,24,81,105,62,13,6063,1646,271,847,999,680,National,East,C,869,62,8,1925.571,NE,7.5629778261
"Davis, Glenn",Houston,574,152,31,91,101,64,3,985,260,53,148,173,95,National,West,1B,1253,111,11,215,NW,5.3706380281
"Foster, George",New York,284,64,14,30,42,24,18,7023,1925,348,986,1239,666,National,East,LF,96,4,4,,NE,
"Gaetti, Gary",Minneapolis,596,171,34,91,108,52,6,2862,728,107,361,401,224,American,West,3B,118,334,21,900,AW,6.8023947633
"Gagne, Greg",Minneapolis,472,118,12,63,54,30,4,793,187,14,102,80,50,American,West,SS,228,377,26,155,AW,5.0434251169
"Hendrick, George",California,283,77,14,45,47,26,16,6840,1910,259,915,1067,546,American,West,OF,144,6,5,700,AW,6.551080335
"Hubbard, Glenn",Atlanta,408,94,4,42,36,66,9,3573,866,59,429,365,410,National,West,2B,282,487,19,535,NW,6.2822667469
"Iorg, Garth",Toronto,327,85,3,30,44,20,8,2140,568,16,216,208,93,American,East,32,91,185,12,362.5,AE,5.8930244743
"Matthews, Gary",Chicago,370,96,21,49,46,60,15,6986,1972,231,1070,955,921,National,East,LF,137,5,9,733.333,NE,6.5975998961
"Nettles, Graig",San Diego,354,77,16,36,55,41,20,8716,2172,384,1172,1267,1057,National,West,3B,83,174,16,200,NW,5.2983173665
"Pettis, Gary",California,539,139,5,93,58,69,5,1469,369,12,247,126,198,American,West,CF,462,9,7,400,AW,5.9914645471
"Redus, Gary",Philadelphia,340,84,11,62,33,47,5,1516,376,42,284,141,219,National,East,LF,185,8,4,400,NE,5.9914645471
"Templeton, Garry",San Diego,510,126,2,42,44,35,11,5562,1578,44,703,519,256,National,West,SS,207,358,20,737.5,NW,6.6032660882
"Thomas, Gorman",Seattle,315,59,16,45,36,58,13,4677,1051,268,681,782,697,American,West,DH,0,0,0,,AW,
"Walker, Greg",Chicago,282,78,13,37,51,29,5,1649,453,73,211,280,138,American,West,1B,670,57,5,500,AW,6.2146080984
"Ward, Gary",Texas,380,120,5,54,51,31,8,3118,900,92,444,419,240,American,West,LF,237,8,1,600,AW,6.3969296552
"Wilson, Glenn",Philadelphia,584,158,15,70,84,42,5,2358,636,58,265,316,134,National,East,RF,331,20,4,662.5,NE,6.4960205579
"Baines, Harold",Chicago,570,169,21,72,88,38,7,3754,1077,140,492,589,263,American,West,RF,295,15,5,950,AW,6.8564619846
"Brooks, Hubie",Montreal,306,104,14,50,58,25,7,2954,822,55,313,377,187,National,East,SS,116,222,15,750,NE,6.6200732065
"Johnson, Howard",New York,220,54,10,30,39,31,5,1185,299,40,145,154,128,National,East,3S,50,136,20,297.5,NE,5.695414225
"McRae, Hal",Kansas City,278,70,7,22,37,18,18,7186,2081,190,935,1088,643,American,West,DH,0,0,0,325,AW,5.7838251823
"Reynolds, Harold",Seattle,445,99,1,46,24,29,4,618,129,1,72,31,48,American,West,2B,278,415,16,87.5,AW,4.4716387934
"Spilman, Harry",San Francisco,143,39,5,18,30,15,9,639,151,16,80,97,61,National,West,1B,138,15,1,175,NW,5.1647859739
"Winningham, Herm",Montreal,185,40,4,23,11,18,3,524,125,7,58,37,47,National,East,OF,97,2,2,90,NE,4.4998096703
"Barfield, Jesse",Toronto,589,170,40,107,108,69,6,2325,634,128,371,376,238,American,East,RF,368,20,3,1237.5,AE,7.1208484944
"Beniquez, Juan",Baltimore,343,103,6,48,36,40,15,4338,1193,70,581,421,325,American,East,UT,211,56,13,430,AE,6.0637852087
"Bonilla, Juan",Baltimore,284,69,1,33,18,25,5,1407,361,6,139,98,111,American,East,2B,122,140,5,,AE,
"Cangelosi, John",Chicago,438,103,2,65,32,71,2,440,103,2,67,32,71,American,West,LF,276,7,9,100,AW,4.605170186
"Canseco, Jose",Oakland,600,144,33,85,117,65,2,696,173,38,101,130,69,American,West,LF,319,4,14,165,AW,5.1059454739
"Carter, Joe",Cleveland,663,200,29,108,121,32,4,1447,404,57,210,222,68,American,East,RF,241,8,6,250,AE,5.5214609179
"Clark, Jack",St Louis,232,55,9,34,23,45,12,4405,1213,194,702,705,625,National,East,1B,623,35,3,1300,NE,7.1701195434
"Cruz, Jose",Houston,479,133,10,48,72,55,17,7472,2147,153,980,1032,854,National,West,LF,237,5,4,773.333,NW,6.650709745
"Cruz, Julio",Chicago,209,45,0,38,19,42,10,3859,916,23,557,279,478,American,West,2B,132,205,5,,AW,
"Davis, Jody",Chicago,528,132,21,61,74,41,6,2641,671,97,273,383,226,National,East,C,885,105,8,1008.333,NE,6.9160537512
"Dwyer, Jim",Baltimore,160,39,8,18,31,22,14,2128,543,56,304,268,298,American,East,DO,33,3,0,275,AE,5.6167710977
"Franco, Julio",Cleveland,599,183,10,80,74,32,5,2482,715,27,330,326,158,American,East,SS,231,374,18,775,AE,6.6528630294
"Gantner, Jim",Milwaukee,497,136,7,58,38,26,11,3871,1066,40,450,367,241,American,East,2B,304,347,10,850,AE,6.7452363495
"Grubb, Johnny",Detroit,210,70,13,32,51,28,15,4040,1130,97,544,462,551,American,East,DH,0,0,0,365,AE,5.8998973536
"Hairston, Jerry",Chicago,225,61,5,32,26,26,11,1568,408,25,202,185,257,American,West,UT,132,9,0,,AW,
"Howell, Jack",California,151,41,4,26,21,19,2,288,68,9,45,39,35,American,West,3B,28,56,2,95,AW,4.5538768916
"Kruk, John",San Diego,278,86,4,33,38,45,1,278,86,4,33,38,45,National,West,LF,102,4,2,110,NW,4.7004803658
"Leonard, Jeffrey",San Francisco,341,95,6,48,42,20,10,2964,808,81,379,428,221,National,West,LF,158,4,5,100,NW,4.605170186
"Morrison, Jim",Pittsburgh,537,147,23,58,88,47,10,2744,730,97,302,351,174,National,East,3B,92,257,20,277.5,NE,5.6258209332
"Moses, John",Seattle,399,102,3,56,34,34,5,670,167,4,89,48,54,American,West,CF,211,9,3,80,AW,4.3820266347
"Mumphrey, Jerry",Chicago,309,94,5,37,32,26,13,4618,1330,57,616,522,436,National,East,OF,161,3,3,600,NE,6.3969296552
"Orsulak, Joe",Pittsburgh,401,100,2,60,19,28,4,876,238,2,126,44,55,National,East,RF,193,11,4,,NE,
"Orta, Jorge",Kansas City,336,93,9,35,46,23,15,5779,1610,128,730,741,497,American,West,DH,0,0,0,,AW,
"Presley, Jim",Seattle,616,163,27,83,107,32,3,1437,377,65,181,227,82,American,West,3B,110,308,15,200,AW,5.2983173665
"Quirk, Jamie",Kansas City,219,47,8,24,26,17,12,1188,286,23,100,125,63,American,West,CS,260,58,4,,AW,
"Ray, Johnny",Pittsburgh,579,174,7,67,78,58,6,3053,880,32,366,337,218,National,East,2B,280,479,5,657,NE,6.4876840185
"Reed, Jeff",Minneapolis,165,39,2,13,9,16,3,196,44,2,18,10,18,American,West,C,332,19,2,75,AW,4.3174881135
"Rice, Jim",Boston,618,200,20,98,110,62,13,7127,2163,351,1104,1289,564,American,East,LF,330,16,8,2412.5,AE,7.7884188332
"Royster, Jerry",San Diego,257,66,5,31,26,32,14,3910,979,33,518,324,382,National,West,UT,87,166,14,250,NW,5.5214609179
"Russell, John",Philadelphia,315,76,13,35,60,25,3,630,151,24,68,94,55,National,East,C,498,39,13,155,NE,5.0434251169
"Samuel, Juan",Philadelphia,591,157,16,90,78,26,4,2020,541,52,310,226,91,National,East,2B,290,440,25,640,NE,6.4614681764
"Shelby, John",Baltimore,404,92,11,54,49,18,6,1354,325,30,188,135,63,American,East,OF,222,5,5,300,AE,5.7037824747
"Skinner, Joel",Chicago,315,73,5,23,37,16,4,450,108,6,38,46,28,American,West,C,227,15,3,110,AW,4.7004803658
"Stone, Jeff",Philadelphia,249,69,6,32,19,20,4,702,209,10,97,48,44,National,East,OF,103,8,2,,NE,
"Sundberg, Jim",Kansas City,429,91,12,41,42,57,13,5590,1397,83,578,579,644,American,West,C,686,46,4,825,AW,6.7153833863
"Traber, Jim",Baltimore,212,54,13,28,44,18,2,233,59,13,31,46,20,American,East,UT,243,23,5,,AE,
"Uribe, Jose",San Francisco,453,101,3,46,43,61,3,948,218,6,96,72,91,National,West,SS,249,444,16,195,NW,5.2729995586
"Willard, Jerry",Oakland,161,43,4,17,26,22,3,707,179,21,77,99,76,American,West,C,300,12,2,,AW,
"Youngblood, Joel",San Francisco,184,47,5,20,28,18,11,3327,890,74,419,382,304,National,West,OF,49,2,0,450,NW,6.1092475828
"Bass, Kevin",Houston,591,184,20,83,79,38,5,1689,462,40,219,195,82,National,West,RF,303,12,5,630,NW,6.4457198194
"Daniels, Kal",Cincinnati,181,58,6,34,23,22,1,181,58,6,34,23,22,National,West,OF,88,0,3,86.5,NW,4.4601444139
"Gibson, Kirk",Detroit,441,118,28,84,86,68,8,2723,750,126,433,420,309,American,East,RF,190,2,2,1300,AE,7.1701195434
"Griffey, Ken",New York,490,150,21,69,58,35,14,6126,1839,121,983,707,600,American,East,OF,96,5,3,1000,AE,6.907755279
"Hernandez, Keith",New York,551,171,13,94,83,94,13,6090,1840,128,969,900,917,National,East,1B,1199,149,5,1800,NE,7.4955419439
"Hrbek, Kent",Minneapolis,550,147,29,85,91,71,6,2816,815,117,405,474,319,American,West,1B,1218,104,10,1310,AW,7.1777824162
"Landreaux, Ken",Los Angeles,283,74,4,34,29,22,10,3919,1062,85,505,456,283,National,West,OF,145,5,7,737.5,NW,6.6032660882
"McReynolds, Kevin",San Diego,560,161,26,89,96,66,4,1789,470,65,233,260,155,National,West,CF,332,9,8,625,NW,6.4377516497
"Mitchell, Kevin",New York,328,91,12,51,43,33,2,342,94,12,51,44,33,National,East,OS,145,59,8,125,NE,4.8283137373
"Moreland, Keith",Chicago,586,159,12,72,79,53,9,3082,880,83,363,477,295,National,East,RF,181,13,4,1043.333,NE,6.9501756754
"Oberkfell, Ken",Atlanta,503,136,5,62,48,83,10,3423,970,20,408,303,414,National,West,3B,65,258,8,725,NW,6.5861716549
"Phelps, Ken",Seattle,344,85,24,69,64,88,7,911,214,64,150,156,187,American,West,DH,0,0,0,300,AW,5.7037824747
"Puckett, Kirby",Minneapolis,680,223,31,119,96,34,3,1928,587,35,262,201,91,American,West,CF,429,8,6,365,AW,5.8998973536
"Stillwell, Kurt",Cincinnati,279,64,0,31,26,30,1,279,64,0,31,26,30,National,West,SS,107,205,16,75,NW,4.3174881135
"Durham, Leon",Chicago,484,127,20,66,65,67,7,3006,844,116,436,458,377,National,East,1B,1231,80,7,1183.333,NE,7.0760903121
"Dykstra, Len",New York,431,127,8,77,45,58,2,667,187,9,117,64,88,National,East,CF,283,8,3,202.5,NE,5.3107398865
"Herndon, Larry",Detroit,283,70,8,33,37,27,12,4479,1222,94,557,483,307,American,East,OF,156,2,2,225,AE,5.4161004022
"Lacy, Lee",Baltimore,491,141,11,77,47,37,15,4291,1240,84,615,430,340,American,East,RF,239,8,2,525,AE,6.2633982626
"Matuszek, Len",Los Angeles,199,52,9,26,28,21,6,805,191,30,113,119,87,National,West,O1,235,22,5,265,NW,5.579729826
"Moseby, Lloyd",Toronto,589,149,21,89,86,64,7,3558,928,102,513,471,351,American,East,CF,371,6,6,787.5,AE,6.6688633707
"Parrish, Lance",Detroit,327,84,22,53,62,38,10,4273,1123,212,577,700,334,American,East,C,483,48,6,800,AE,6.6846117277
"Parrish, Larry",Texas,464,128,28,67,94,52,13,5829,1552,210,740,840,452,American,West,DH,0,0,0,587.5,AW,6.375876246
"Rivera, Luis",Montreal,166,34,0,20,13,17,1,166,34,0,20,13,17,National,East,SS,64,119,9,,NE,
"Sheets, Larry",Baltimore,338,92,18,42,60,21,3,682,185,36,88,112,50,American,East,DH,0,0,0,145,AE,4.9767337424
"Smith, Lonnie",Kansas City,508,146,8,80,44,46,9,3148,915,41,571,289,326,American,West,LF,245,5,9,,AW,
"Whitaker, Lou",Detroit,584,157,20,95,73,63,10,4704,1320,93,724,522,576,American,East,2B,276,421,11,420,AE,6.0402547113
"Aldrete, Mike",San Francisco,216,54,2,27,25,33,1,216,54,2,27,25,33,National,West,1O,317,36,1,75,NW,4.3174881135
"Barrett, Marty",Boston,625,179,4,94,60,65,5,1696,476,12,216,163,166,American,East,2B,303,450,14,575,AE,6.3543700408
"Brown, Mike",Pittsburgh,243,53,4,18,26,27,4,853,228,23,101,110,76,National,East,OF,107,3,3,,NE,
"Davis, Mike",Oakland,489,131,19,77,55,34,7,2051,549,62,300,263,153,American,West,RF,310,9,9,780,AW,6.6592939197
"Diaz, Mike",Pittsburgh,209,56,12,22,36,19,2,216,58,12,24,37,19,National,East,O1,201,6,3,90,NE,4.4998096703
"Duncan, Mariano",Los Angeles,407,93,8,47,30,30,2,969,230,14,121,69,68,National,West,SS,172,317,25,150,NW,5.0106352941
"Easler, Mike",New York,490,148,14,64,78,49,13,3400,1000,113,445,491,301,American,East,DH,0,0,0,700,AE,6.551080335
"Fitzgerald, Mike",Montreal,209,59,6,20,37,27,4,884,209,14,66,106,92,National,East,C,415,35,3,,NE,
"Hall, Mel",Cleveland,442,131,18,68,77,33,6,1416,398,47,210,203,136,American,East,LF,233,7,7,550,AE,6.3099182782
"Hatcher, Mickey",Minneapolis,317,88,3,40,32,19,8,2543,715,28,269,270,118,American,West,UT,220,16,4,,AW,
"Heath, Mike",St Louis,288,65,8,30,36,27,9,2815,698,55,315,325,189,National,East,C,259,30,10,650,NE,6.4769723629
"Kingery, Mike",Kansas City,209,54,3,25,14,12,1,209,54,3,25,14,12,American,West,OF,102,6,3,68,AW,4.2195077052
"LaValliere, Mike",St Louis,303,71,3,18,30,36,3,344,76,3,20,36,45,National,East,C,468,47,6,100,NE,4.605170186
"Marshall, Mike",Los Angeles,330,77,19,47,53,27,6,1928,516,90,247,288,161,National,West,RF,149,8,6,670,NW,6.5072777124
"Pagliarulo, Mike",New York,504,120,28,71,71,54,3,1085,259,54,150,167,114,American,East,3B,103,283,19,175,AE,5.1647859739
"Salas, Mark",Minneapolis,258,60,8,28,33,18,3,638,170,17,80,75,36,American,West,C,358,32,8,137,AW,4.9199809258
"Schmidt, Mike",Philadelphia,552,160,37,97,119,89,15,7292,1954,495,1347,1392,1354,National,East,3B,78,220,6,2127.333,NE,7.6626243615
"Scioscia, Mike",Los Angeles,374,94,5,36,26,62,7,1968,519,26,181,199,288,National,West,C,756,64,15,875,NW,6.7742238864
"Tettleton, Mickey",Oakland,211,43,10,26,35,39,3,498,116,14,59,55,78,American,West,C,463,32,8,120,AW,4.7874917428
"Thompson, Milt",Philadelphia,299,75,6,38,23,26,3,580,160,8,71,33,44,National,East,CF,212,1,2,140,NE,4.9416424226
"Webster, Mitch",Montreal,576,167,8,89,49,57,4,822,232,19,132,83,79,National,East,CF,325,12,8,210,NE,5.3471075307
"Wilson, Mookie",New York,381,110,9,61,45,32,7,3015,834,40,451,249,168,National,East,OF,228,7,5,800,NE,6.6846117277
"Wynne, Marvell",San Diego,288,76,7,34,37,15,4,1644,408,16,198,120,113,National,West,OF,203,3,3,240,NW,5.4806389233
"Young, Mike",Baltimore,369,93,9,43,42,49,5,1258,323,54,181,177,157,American,East,LF,149,1,6,350,AE,5.8579331545
"Esasky, Nick",Cincinnati,330,76,12,35,41,47,4,1367,326,55,167,198,167,National,West,1B,512,30,5,,NW,
"Guillen, Ozzie",Chicago,547,137,2,58,47,12,2,1038,271,3,129,80,24,American,West,SS,261,459,22,175,AW,5.1647859739
"McDowell, Oddibe",Texas,572,152,18,105,49,65,2,978,249,36,168,91,101,American,West,CF,325,13,3,200,AW,5.2983173665
"Moreno, Omar",Atlanta,359,84,4,46,27,21,12,4992,1257,37,699,386,387,National,West,RF,151,8,5,,NW,
"Smith, Ozzie",St Louis,514,144,0,67,54,79,9,4739,1169,13,583,374,528,National,East,SS,229,453,15,1940,NE,7.5704432521
"Virgil, Ozzie",Atlanta,359,80,15,45,48,63,7,1493,359,61,176,202,175,National,West,C,682,93,13,700,NW,6.551080335
"Bradley, Phil",Seattle,526,163,12,88,50,77,4,1556,470,38,245,167,174,American,West,LF,250,11,1,750,AW,6.6200732065
"Garner, Phil",Houston,313,83,9,43,41,30,14,5885,1543,104,751,714,535,National,West,3B,58,141,23,450,NW,6.1092475828
"Incaviglia, Pete",Texas,540,135,30,82,88,55,1,540,135,30,82,88,55,American,West,RF,157,6,14,172,AW,5.1474944768
"Molitor, Paul",Milwaukee,437,123,9,62,55,40,9,4139,1203,79,676,390,364,American,East,3B,82,170,15,1260,AE,7.1388669999
"O'Brien, Pete",Texas,551,160,23,86,90,87,5,2235,602,75,278,328,273,American,West,1B,1224,115,11,,AW,
"Rose, Pete",Cincinnati,237,52,0,15,25,30,24,14053,4256,160,2165,1314,1566,National,West,1B,523,43,6,750,NW,6.6200732065
"Sheridan, Pat",Detroit,236,56,6,41,19,21,5,1257,329,24,166,125,105,American,East,OF,172,1,4,190,AE,5.2470240722
"Tabler, Pat",Cleveland,473,154,6,61,48,29,6,1966,566,29,250,252,178,American,East,1B,846,84,9,580,AE,6.3630281035
"Belliard, Rafael",Pittsburgh,309,72,0,33,31,26,5,354,82,0,41,32,26,National,East,SS,117,269,12,130,NE,4.8675344505
"Burleson, Rick",California,271,77,5,35,29,33,12,4933,1358,48,630,435,403,American,West,UT,62,90,3,450,AW,6.1092475828
"Bush, Randy",Minneapolis,357,96,7,50,45,39,5,1394,344,43,178,192,136,American,West,LF,167,2,4,300,AW,5.7037824747
"Cerone, Rick",Milwaukee,216,56,4,22,18,15,12,2796,665,43,266,304,198,American,East,C,391,44,4,250,AE,5.5214609179
"Cey, Ron",Chicago,256,70,13,42,36,44,16,7058,1845,312,965,1128,990,National,East,3B,41,118,8,1050,NE,6.9565454432
"Deer, Rob",Milwaukee,466,108,33,75,86,72,3,652,142,44,102,109,102,American,East,RF,286,8,8,215,AE,5.3706380281
"Dempsey, Rick",Baltimore,327,68,13,42,29,45,18,3949,939,78,438,380,466,American,East,C,659,53,7,400,AE,5.9914645471
"Gedman, Rich",Boston,462,119,16,49,65,37,7,2131,583,69,244,288,150,American,East,C,866,65,6,,AE,
"Hassey, Ron",New York,341,110,9,45,49,46,9,2331,658,50,249,322,274,American,East,C,251,9,4,560,AE,6.3279367837
"Henderson, Rickey",New York,608,160,28,130,74,89,8,4071,1182,103,862,417,708,American,East,CF,426,4,6,1670,AE,7.4205789054
"Jackson, Reggie",California,419,101,18,65,58,92,20,9528,2510,548,1509,1659,1342,American,West,DH,0,0,0,487.5,AW,6.1892902904
"Jones, Ruppert",California,393,90,17,73,49,64,11,4223,1056,139,618,551,514,American,West,RF,205,5,4,,AW,
"Kittle, Ron",Chicago,376,82,21,42,60,35,5,1770,408,115,238,299,157,American,West,DH,0,0,0,425,AW,6.0520891689
"Knight, Ray",New York,486,145,11,51,76,40,11,3967,1102,67,410,497,284,National,East,3B,88,204,16,500,NE,6.2146080984
"Kutcher, Randy",San Francisco,186,44,7,28,16,11,1,186,44,7,28,16,11,National,West,OF,99,3,1,,NW,
"Law, Rudy",Kansas City,307,80,1,42,36,29,7,2421,656,18,379,198,184,American,West,OF,145,2,2,,AW,
"Leach, Rick",Toronto,246,76,5,35,39,13,6,912,234,12,102,96,80,American,East,DO,44,0,1,250,AE,5.5214609179
"Manning, Rick",Milwaukee,205,52,8,31,27,17,12,5134,1323,56,643,445,459,American,East,OF,155,3,2,400,AE,5.9914645471
"Mulliniks, Rance",Toronto,348,90,11,50,45,43,10,2288,614,43,295,273,269,American,East,3B,60,176,6,450,AE,6.1092475828
"Oester, Ron",Cincinnati,523,135,8,52,44,52,9,3368,895,39,377,284,296,National,West,2B,367,475,19,750,NW,6.6200732065
"Quinones, Rey",Boston,312,68,2,32,22,24,1,312,68,2,32,22,24,American,East,SS,86,150,15,70,AE,4.248495242
"Ramirez, Rafael",Atlanta,496,119,8,57,33,21,7,3358,882,36,365,280,165,National,West,S3,155,371,29,875,NW,6.7742238864
"Reynolds, R.J.",Pittsburgh,402,108,9,63,48,40,4,1034,278,16,135,125,79,National,East,LF,190,2,9,190,NE,5.2470240722
"Roenicke, Ron",Philadelphia,275,68,5,42,42,61,6,961,238,16,128,104,172,National,East,OF,181,3,2,191,NE,5.252273428
"Sandberg, Ryne",Chicago,627,178,14,68,76,46,6,3146,902,74,494,345,242,National,East,2B,309,492,5,740,NE,6.6066501862
"Santana, Rafael",New York,394,86,1,38,28,36,4,1089,267,3,94,71,76,National,East,SS,203,369,16,250,NE,5.5214609179
"Schu, Rick",Philadelphia,208,57,8,32,25,18,3,653,170,17,98,54,62,National,East,3B,42,94,13,140,NE,4.9416424226
"Sierra, Ruben",Texas,382,101,16,50,55,22,1,382,101,16,50,55,22,American,West,OF,200,7,6,97.5,AW,4.579852378
"Smalley, Roy",Minneapolis,459,113,20,59,57,68,12,5348,1369,155,713,660,735,American,West,DH,0,0,0,740,AW,6.6066501862
"Thompson, Robby",San Francisco,549,149,7,73,47,42,1,549,149,7,73,47,42,National,West,2B,255,450,17,140,NW,4.9416424226
"Wilfong, Rob",California,288,63,3,25,33,16,10,2682,667,38,315,259,204,American,West,2B,135,257,7,341.667,AW,5.8338365785
"Williams, Reggie",Los Angeles,303,84,4,35,32,23,2,312,87,4,39,32,23,National,West,CF,179,5,3,,NW,
"Yount, Robin",Milwaukee,522,163,9,82,46,62,13,7037,2019,153,1043,827,535,American,East,CF,352,9,1,1000,AE,6.907755279
"Balboni, Steve",Kansas City,512,117,29,54,88,43,6,1750,412,100,204,276,155,American,West,1B,1236,98,18,100,AW,4.605170186
"Bradley, Scott",Seattle,220,66,5,20,28,13,3,290,80,5,27,31,15,American,West,C,281,21,3,90,AW,4.4998096703
"Bream, Sid",Pittsburgh,522,140,16,73,77,60,4,730,185,22,93,106,86,National,East,1B,1320,166,17,200,NE,5.2983173665
"Buechele, Steve",Texas,461,112,18,54,54,35,2,680,160,24,76,75,49,American,West,3B,111,226,11,135,AW,4.9052747784
"Dunston, Shawon",Chicago,581,145,17,66,68,21,2,831,210,21,106,86,40,National,East,SS,320,465,32,155,NE,5.0434251169
"Fletcher, Scott",Texas,530,159,3,82,50,47,6,1619,426,11,218,149,163,American,West,SS,196,354,15,475,AW,6.163314804
"Garvey, Steve",San Diego,557,142,21,58,81,23,18,8759,2583,271,1138,1299,478,National,West,1B,1160,53,7,1450,NW,7.2793188354
"Jeltz, Steve",Philadelphia,439,96,0,44,36,65,4,711,148,1,68,56,99,National,East,SS,229,406,22,150,NE,5.0106352941
"Lombardozzi, Steve",Minneapolis,453,103,8,53,33,52,2,507,123,8,63,39,58,American,West,2B,289,407,6,105,AW,4.6539603502
"Owen, Spike",Seattle,528,122,1,67,45,51,4,1716,403,12,211,146,155,American,West,SS,209,372,17,350,AW,5.8579331545
"Sax, Steve",Los Angeles,633,210,6,91,56,59,6,3070,872,19,420,230,274,National,West,2B,367,432,16,90,NW,4.4998096703
"Armas, Tony",Boston,425,112,11,40,58,24,11,4513,1134,224,542,727,230,American,East,CF,247,4,8,,AE,
"Bernazard, Tony",Cleveland,562,169,17,88,73,53,8,3181,841,61,450,342,373,American,East,2B,351,442,17,530,AE,6.2728770065
"Brookens, Tom",Detroit,281,76,3,42,25,20,8,2658,657,48,324,300,179,American,East,UT,106,144,7,341.667,AE,5.8338365785
"Brunansky, Tom",Minneapolis,593,152,23,69,75,53,6,2765,686,133,369,384,321,American,West,RF,315,10,6,940,AW,6.8458798753
"Fernandez, Tony",Toronto,687,213,10,91,65,27,4,1518,448,15,196,137,89,American,East,SS,294,445,13,350,AE,5.8579331545
"Flannery, Tim",San Diego,368,103,3,48,28,54,8,1897,493,9,207,162,198,National,West,2B,209,246,3,326.667,NW,5.7889413034
"Foley, Tom",Montreal,263,70,1,26,23,30,4,888,220,9,83,82,86,National,East,UT,81,147,4,250,NE,5.5214609179
"Gwynn, Tony",San Diego,642,211,14,107,59,52,5,2364,770,27,352,230,193,National,West,RF,337,19,4,740,NW,6.6066501862
"Harper, Terry",Atlanta,265,68,8,26,30,29,7,1337,339,32,135,163,128,National,West,OF,92,5,3,425,NW,6.0520891689
"Harrah, Toby",Texas,289,63,7,36,41,44,17,7402,1954,195,1115,919,1153,American,West,2B,166,211,7,,AW,
"Herr, Tommy",St Louis,559,141,2,48,61,73,8,3162,874,16,421,349,359,National,East,2B,352,414,9,925,NE,6.8297937375
"Hulett, Tim",Chicago,520,120,17,53,44,21,4,927,227,22,106,80,52,American,West,3B,70,144,11,185,AW,5.2203558251
"Kennedy, Terry",San Diego,432,114,12,46,57,37,9,3373,916,82,347,477,238,National,West,C,692,70,8,920,NW,6.82437367
"Landrum, Tito",St Louis,205,43,2,24,17,20,7,854,219,12,105,99,71,National,East,OF,131,6,1,286.667,NE,5.6583212634
"Laudner, Tim",Minneapolis,193,47,10,21,29,24,6,1136,256,42,129,139,106,American,West,C,299,13,5,245,AW,5.5012582105
"O'Malley, Tom",Baltimore,181,46,1,19,18,17,5,937,238,9,88,95,104,American,East,3B,37,98,9,,AE,
"Paciorek, Tom",Texas,213,61,4,17,22,3,17,4061,1145,83,488,491,244,American,West,UT,178,45,4,235,AW,5.4595855141
"Pena, Tony",Pittsburgh,510,147,10,56,52,53,7,2872,821,63,307,340,174,National,East,C,810,99,18,1150,NE,7.0475172214
"Pendleton, Terry",St Louis,578,138,1,56,59,34,3,1399,357,7,149,161,87,National,East,3B,133,371,20,160,NE,5.0751738152
"Perez, Tony",Cincinnati,200,51,2,14,29,25,23,9778,2732,379,1272,1652,925,National,West,1B,398,29,7,,NW,
"Phillips, Tony",Oakland,441,113,5,76,52,76,5,1546,397,17,226,149,191,American,West,2B,160,290,11,425,AW,6.0520891689
"Puhl, Terry",Houston,172,42,3,17,14,15,10,4086,1150,57,579,363,406,National,West,OF,65,0,0,900,NW,6.8023947633
"Raines, Tim",Montreal,580,194,9,91,62,78,8,3372,1028,48,604,314,469,National,East,LF,270,13,6,,NE,
"Simmons, Ted",Atlanta,127,32,4,14,25,12,19,8396,2402,242,1048,1348,819,National,West,UT,167,18,6,500,NW,6.2146080984
"Teufel, Tim",New York,279,69,4,35,31,32,4,1359,355,31,180,148,158,National,East,2B,133,173,9,277.5,NE,5.6258209332
"Wallach, Tim",Montreal,480,112,18,50,71,44,7,3031,771,110,338,406,239,National,East,3B,94,270,16,750,NE,6.6200732065
"Coleman, Vince",St Louis,600,139,0,94,29,60,2,1236,309,1,201,69,110,National,East,LF,300,12,9,160,NE,5.0751738152
"Hayes, Von",Philadelphia,610,186,19,107,98,74,6,2728,753,69,399,366,286,National,East,1B,1182,96,13,1300,NE,7.1701195434
"Law, Vance",Montreal,360,81,5,37,44,37,7,2268,566,41,279,257,246,National,East,2B,170,284,3,525,NE,6.2633982626
"Backman, Wally",New York,387,124,1,67,27,36,7,1775,506,6,272,125,194,National,East,2B,186,290,17,550,NE,6.3099182782
"Boggs, Wade",Boston,580,207,8,107,71,105,5,2778,978,32,474,322,417,American,East,3B,121,267,19,1600,AE,7.3777589082
"Clark, Will",San Francisco,408,117,11,66,41,34,1,408,117,11,66,41,34,National,West,1B,942,72,11,120,NW,4.7874917428
"Joyner, Wally",California,593,172,22,82,100,57,1,593,172,22,82,100,57,American,West,1B,1222,139,15,165,AW,5.1059454739
"Krenchicki, Wayne",Montreal,221,53,2,21,23,22,8,1063,283,15,107,124,106,National,East,13,325,58,6,,NE,
"McGee, Willie",St Louis,497,127,7,65,48,37,5,2703,806,32,379,311,138,National,East,CF,325,9,3,700,NE,6.551080335
"Randolph, Willie",New York,492,136,5,76,50,94,12,5511,1511,39,897,451,875,American,East,2B,313,381,20,875,AE,6.7742238864
"Tolleson, Wayne",Chicago,475,126,3,61,43,52,6,1700,433,7,217,93,146,American,West,3B,37,113,7,385,AW,5.9532433343
"Upshaw, Willie",Toronto,573,144,9,85,60,78,8,3198,857,97,470,420,332,American,East,1B,1314,131,12,960,AE,6.8669332845
"Wilson, Willie",Kansas City,631,170,9,77,44,31,11,4908,1457,30,775,357,249,American,West,CF,408,4,3,1000,AW,6.907755279
;;;;
data certadv.Stock6Mon;
   infile datalines dsd truncover;
   input Stock:$14.
         Date
		 Open
		 Close
;
format Date mmddyy10.;
datalines4;
Random Company,21609,53.98,54.25
Random Company,21612,55.69,54.6
Random Company,21613,56.19,55.93
Random Company,21614,56.2,56.12
Random Company,21615,57.67,56.23
Random Company,21616,56.68,57.38
Random Company,21619,54.58,54.64
Random Company,21620,54.74,54.52
Random Company,21621,54.8,54.61
Random Company,21622,54.8,55.02
Random Company,21623,54.92,54.96
Random Company,21626,55.28,55.69
Random Company,21627,56.12,55.4
Random Company,21628,55.42,53.49
Random Company,21629,53.16,52.1
Random Company,21630,51.59,49.7
Random Company,21633,49.61,49.31
Random Company,21634,49.56,49.64
Random Company,21635,49.86,49.3
Random Company,21636,49.4,49.9
Random Company,21637,50.37,49.99
Random Company,21640,50.39,51.65
Random Company,21641,51.54,52.08
Random Company,21642,52.6,51.93
Random Company,21643,51.96,52.34
Random Company,21644,52.4,52.11
Random Company,21647,51.89,52.59
Random Company,21648,52.28,52.39
Random Company,21649,52.33,52.49
Random Company,21650,52.59,52.63
Random Company,21651,53.4,53.72
Random Company,21654,53.98,53.275
Random Company,21655,53.38,54
Random Company,21656,54.04,54.09
Random Company,21657,54.2,53.53
Random Company,21661,53.41,53.67
Random Company,21662,53.61,54.27
Random Company,21663,52.62,51.86
Random Company,21664,51.78,52.13
Random Company,21665,52.03,51.73
Random Company,21668,51.91,52.89
Random Company,21669,53,52.58
Random Company,21670,52.62,52.57
Random Company,21671,52.68,53.43
Random Company,21672,53.6,53.48
Random Company,21675,53.05,52.65
Random Company,21676,52.89,52.56
Random Company,21677,52.25,52.82
Random Company,21678,53,53.4
Random Company,21679,53.06,53.35
Random Company,21682,52.16,51.47
Random Company,21683,51.58,52.97
Random Company,21684,52.35,51.51
Random Company,21685,51.8,52.53
Random Company,21686,52,52.71
Random Company,21689,52.49,52.7
Random Company,21690,53.2,52.52
Random Company,21691,52.25,51.99
Random Company,21692,51.41,51.28
Random Company,21693,51.58,51.98
Random Company,21697,51.89,50.76
Random Company,21698,50.32,50.73
Random Company,21699,50.98,50.71
Random Company,21700,50.38,49.75
Random Company,21703,49.61,50.01
Random Company,21704,50.85,52.02
Random Company,21705,52.13,52.35
Random Company,21706,52.21,52.36
Random Company,21707,52.05,52.11
Random Company,21710,52.66,52.5
Random Company,21711,53,52.28
Random Company,21712,52.05,50.98
Random Company,21713,51.12,51.1
Random Company,21714,51.31,50.52
Random Company,21717,50.55,49.91
Random Company,21718,49.54,50.08
Random Company,21719,50.3,49.28
Random Company,21720,49.49,49.42
Random Company,21721,49.45,49.99
Random Company,21724,49.51,48.08
Random Company,21725,48.29,48.29
Random Company,21726,48.58,48.65
Random Company,21727,48.76,49.59
Random Company,21728,49.99,49.92
Random Company,21731,50.53,50.37
Random Company,21732,50.35,49.98
Random Company,21733,50.1,50.28
Random Company,21735,50.51,51.23
Random Company,21738,50.84,50.26
Random Company,21739,50,51.25
Random Company,21740,50.9,50.01
Random Company,21741,49.96,50.7
Random Company,21742,50.63,50.97
Random Company,21745,50.99,50.54
Random Company,21746,51.05,50.94
Random Company,21747,50.76,50.37
Random Company,21748,50.45,51.03
Random Company,21749,51.15,51.59
Random Company,21752,51.59,52.4
Random Company,21753,51.1,52.28
Random Company,21754,52.19,52.45
Random Company,21755,52.5,52.02
Random Company,21756,52.01,52.05
Random Company,21759,52,51.41
Random Company,21760,51.06,51.38
Random Company,21761,51.52,51.1
Random Company,21762,50.89,49.68
Random Company,21763,49.45,49.45
Random Company,21766,48.15,46.77
Random Company,21767,47.19,47.52
Random Company,21768,46.23,45.71
Random Company,21769,46.31,46.23
Random Company,21770,45.39,44.75
Random Company,21773,44.08,43.57
Random Company,21774,43.61,44.42
Random Company,21775,43.18,43.17
Random Company,21776,43.5,43.1
Random Company,21777,43.42,43.92
Random Company,21780,44.51,43.79
Random Company,21781,43.7,43.27
Random Company,21782,43.78,43.87
Random Company,21783,44.23,43.84
Random Company,21784,43.52,42.91
Random Company,21787,43.2,42.92
Random Company,21788,43.24,42.5
Random Company,21789,42.14,42.6
Random Company,21790,43.09,43.87
Random Company,21791,44.26,44.41
ABC Company,21609,54.37,57.31
ABC Company,21612,59.53,59.39
ABC Company,21613,59.45,59.51
ABC Company,21614,57.18,56.52
ABC Company,21615,57.55,61.18
ABC Company,21616,60.68,62.4
ABC Company,21619,62.5,65.23
ABC Company,21620,65.5,65.5
ABC Company,21621,65.26,64.96
ABC Company,21622,64.56,63.55
ABC Company,21623,64.23,63.35
ABC Company,21626,63.6,65.78
ABC Company,21627,66.1,66.46
ABC Company,21628,65.29,65.82
ABC Company,21629,65.23,68.41
ABC Company,21630,67.95,63.43
ABC Company,21633,63.5,61.95
ABC Company,21634,62.15,59.88
ABC Company,21635,60,58.53
ABC Company,21636,58.56,58.41
ABC Company,21637,59.67,59.65
ABC Company,21640,59.89,59.99
ABC Company,21641,59.82,59.59
ABC Company,21642,60.83,60.1
ABC Company,21643,59.91,63.62
ABC Company,21644,63.62,62.09
ABC Company,21647,62.4,59.8
ABC Company,21648,59.5,58.24
ABC Company,21649,58.35,58.2
ABC Company,21650,58.06,58.08
ABC Company,21651,58.46,57.95
ABC Company,21654,57.82,56.84
ABC Company,21655,56.88,56.59
ABC Company,21656,56.59,54.62
ABC Company,21657,54.78,53.7
ABC Company,21661,53.39,52.76
ABC Company,21662,52.91,55.06
ABC Company,21663,55.08,54.7
ABC Company,21664,54.63,56.45
ABC Company,21665,56.63,57.35
ABC Company,21668,54.15,56.64
ABC Company,21669,56.33,56.19
ABC Company,21670,56.36,57.1
ABC Company,21671,57.5,58.19
ABC Company,21672,58.62,58.74
ABC Company,21675,57.83,60.27
ABC Company,21676,60.04,58.68
ABC Company,21677,58.84,58.75
ABC Company,21678,57.48,57.28
ABC Company,21679,58.92,61.1
ABC Company,21682,59.5,57.68
ABC Company,21683,58.13,58
ABC Company,21684,57.27,58.51
ABC Company,21685,58.63,61.27
ABC Company,21686,60.93,59.74
ABC Company,21689,59.74,61.08
ABC Company,21690,61.37,63.49
ABC Company,21691,63.05,62.02
ABC Company,21692,61.22,62.69
ABC Company,21693,63.3,62.99
ABC Company,21697,63.04,61.79
ABC Company,21698,61.07,60.43
ABC Company,21699,60.66,57.51
ABC Company,21700,56.68,59.31
ABC Company,21703,60.85,64.64
ABC Company,21704,65.32,70.74
ABC Company,21705,71.17,74.2
ABC Company,21706,74.54,72
ABC Company,21707,72.3,75.55
ABC Company,21710,75.31,74.98
ABC Company,21711,75.64,65.97
ABC Company,21712,66.71,69.91
ABC Company,21713,69.89,71.21
ABC Company,21714,70.87,72.55
ABC Company,21717,79.01,81.14
ABC Company,21718,79.98,78.01
ABC Company,21719,77.89,77.44
ABC Company,21720,78.71,80.86
ABC Company,21721,80.86,82.19
ABC Company,21724,78.08,74.61
ABC Company,21725,74.8,75
ABC Company,21726,75.23,74.64
ABC Company,21727,74.39,75.24
ABC Company,21728,75.75,78.15
ABC Company,21731,77.07,76.8
ABC Company,21732,76.79,75.15
ABC Company,21733,75.56,75.5
ABC Company,21735,75.15,75.77
ABC Company,21738,75.07,74.04
ABC Company,21739,72.73,73.15
ABC Company,21740,73.68,70.26
ABC Company,21741,70.03,68.65
ABC Company,21742,68.81,70.32
ABC Company,21745,69.97,69.65
ABC Company,21746,69.68,69.61
ABC Company,21747,69.88,72.44
ABC Company,21748,72.02,74.59
ABC Company,21749,75.08,72.37
ABC Company,21752,72.1,70.92
ABC Company,21753,71.15,68.46
ABC Company,21754,68.49,67.66
ABC Company,21755,67.8,66.97
ABC Company,21756,66.7,65.56
ABC Company,21759,64.75,62.03
ABC Company,21760,60.7,59.96
ABC Company,21761,59.86,58.65
ABC Company,21762,58.6,60.6
ABC Company,21763,60.3,59.58
ABC Company,21766,58.16,56.27
ABC Company,21767,56.95,56
ABC Company,21768,55.31,56.61
ABC Company,21769,57,56.06
ABC Company,21770,55.75,54.48
ABC Company,21773,53.74,53.01
ABC Company,21774,52.26,56.24
ABC Company,21775,55.1,55.91
ABC Company,21776,55.62,56.02
ABC Company,21777,56.51,56.9
ABC Company,21780,57.41,56.85
ABC Company,21781,56.51,56.38
ABC Company,21782,56.89,56.47
ABC Company,21783,56.47,56.21
ABC Company,21784,56.12,53.13
ABC Company,21787,54.02,53.14
ABC Company,21788,53.49,53.14
ABC Company,21789,53.11,54.33
ABC Company,21790,54.97,54.84
ABC Company,21791,55.19,54.25
;;;;
data certadv.patdata;
infile datalines dsd truncover;
input Name:$16. Age Weight:$6. Temp:$6. Pulse:$6. Resp:$6. BP:$6.;
datalines4;
Luka Poisson,30,High,Normal,High,Normal,High
Grant Farrell,40,Avg,Normal,High,High,Normal
Knight Cross,29,High,Normal,Normal,High,Normal
Rik Hooper,38,Normal,Normal,High,Normal,High
Mae Hagraves,58,Normal,High,High,Normal,High
Lauri Knowles,44,Normal,Normal,High,Normal,High
Geovanni Gallego,37,High,Normal,Normal,High,High
Paolo Vives,25,High,Normal,High,Normal,High
Amargo Leclercq,47,Normal,High,High,Normal,High
Morvyn Merle,24,High,Normal,High,High,Normal
;;;;
data certadv.salary;
infile datalines dsd truncover;
format Salary1 dollar8. ;
format Salary2 dollar8. ;
format Salary3 dollar8. ;
format Salary4 dollar8. ;
input
Salary1
Salary2
Salary3
Salary4;

datalines4;
110664,98011,154767,144845,
140662,155235,148867,46229
114546,102034,67834,75416
53177,167071,33134,174879
30344,57672,162500,43597
141042,148845,52136,46566
147819,58913,142018,158280
60733,131744,130969,141397
199755,85736,86241,140417
40970,35107,156646,125516
107142,194481,170933,130319
161552,174068,105198,161896
31739,67697,175494,142782
186543,197631,159349,134361
56544,101367,92641,87277
33110,193611,198674,32865
79346,84915,143282,90316
90023,99928,185833,167165
94409,156765,97484,55960
130832,172682,87857,132572
40379,163350,75354,196922
160981,34702,131283,187525
106069,193924,74801,109179
187534,73475,112044,66880
128390,55326,127196,188413
125254,113028,155578,189663
69793,53062,45623,170626
195744,33479,103197,36123
166830,148552,33045,127810
153254,134328,115334,59322
128252,160135,138502,115786
33610,50545,152666,132000
75872,79861,120413,90290
171126,162890,75991,160789
32682,99053,176413,173309
94797,179892,76506,100920
146721,195058,103965,74530
148311,38293,159865,177633
136545,120000,116134,52330
123610,136680,174997,55610
182552,54857,146023,153678
187748,192014,114467,190431
91067,90880,163739,155864
70771,40244,56783,187493
35302,130749,62023,153613
139043,191888,131246,75587
111887,47380,97918,35496,154060
72914,61107,136612,97772,177130
85520,169144,174758,75950,60211
;;;;
data certadv.qtrsales;
infile datalines dsd truncover;
input Country:$13. Year SalesQ1 SalesQ2 SalesQ3 SalesQ4;
datalines4;
United States,2014,237865.86,366939.54,423585.04,475681.25
United States,2015,285906.41,177346.51,242372.76,252514.29
United States,2016,100795.73,229364.58,158368.65,465188.32
United States,2017,120795.73,158368.65,191173.86,117554.75
United States,2018,147361.33,248934.4,177593.31,227396.62
Canada,2014,151177.14,111279.89,139821.68,181601.97
Canada,2015,137351.27,141057.19,176866.24,202385.61
Canada,2016,186667.77,180073.97,134084.88,182008.58
Canada,2017,216184.01,201065.39,215246.4,234059.45
Canada,2018,150245.52,155330.72,197912.92,201149.16
India,2014,286971.29,308673.81,181219.37,149424.31
India,2015,369117.57,430464.67,426332.57,275967.23
India,2016,335829.22,483475.62,294999.73,281204.41
India,2017,342848.33,223937.19,334324.49,224763.35
India,2018,375906.03,321798.24,296476.38,312808.91
China,2014,105043.06,126103.12,145302.33,156693.8
China,2015,126152.39,111940.48,135491.95,153654.97
China,2016,141745.52,197962.43,179304.56,157703.56
China,2017,111633.65,166556.23,158209.77,203529.27
China,2018,124788.74,197212.7,164726.95,156413.72
Saudi Arabia,2014,124370.17,177545.1,175165.91,122106.98
Saudi Arabia,2015,165534.72,181200.02,197245.33,185561.49
Saudi Arabia,2016,176776.57,197122.69,204289.38,208909.4
Saudi Arabia,2017,156781.84,191004.14,210605.28,218061.97
Saudi Arabia,2018,136508.93,116172.14,137075.27,156682.59
;;;;
data certadv.avgsales;
infile datalines dsd truncover;
input Country:$13. Year AvgSales;
format AvgSales dollar12.2;
datalines4;
United States,2014,301217.14
United States,2015,192030.99
United States,2016,191146.66
United States,2017,117928.00
United States,2018,160660.73
Canada,2014,117178.94
Canada,2015,131935.06
Canada,2016,136970.24
Canada,2017,173714.45
Canada,2018,141331.26
India,2014,185660.56
India,2015,300779.41
India,2016,279505.00
India,2017,225578.07
India,2018,261801.51
China,2014,107031.26
China,2015,105850.96
China,2016,135746.41
China,2017,128389.18
China,2018,129032.02
Saudi Arabia,2014,120240.43
Saudi Arabia,2015,146311.31
Saudi Arabia,2016,157822.81
Saudi Arabia,2017,155694.05
Saudi Arabia,2018,109691.39
;;;;
data certadv.us_goals;
infile datalines dsd truncover;
input Year QtrNum Goal;
format Goal dollar12.2;
datalines4;
2014,1,150000
2014,2,155000
2014,3,160000
2014,4,165000
2015,1,155000
2015,2,160000
2015,3,165000
2015,4,170000
2016,1,160000
2016,2,165000
2016,3,170000
2016,4,180000
2017,1,160000
2017,2,165000
2017,3,170000
2017,4,180000
2018,1,165000
2018,2,170000
2018,3,175000
2018,4,180000
;;;;
data certadv.us_sales;
infile datalines dsd truncover;
input Year SalesQ1 SalesQ2 SalesQ3 SalesQ4;
format SalesQ1-SalesQ4 dollar12.2;
datalines4;
2014,167865.86,156939.54,153585.04,160681.25
2015,165906.41,170346.51,172372.76,172514.29
2016,160795.73,169364.58,168368.65,175188.32
2017,160795.73,168368.65,171173.86,177554.75
2018,167361.33,168934.40,177593.31,184396.62
;;;;
data certadv.values;
    input UnformattedValues Multiplier;
    MultiValues=UnformattedValues*Multiplier;
    MultiValuesRound=round(MultiValues);
    FormattedValues=UnformattedValues;
    label UnformattedValues='Unformatted Values'
          MultiValues='Multiplied Values'
          MultiValuesRound='Multiplied Values*with Round'
          FormattedValues='Formatted Values';
    datalines4;
34 1
345 1
3456 .01
34567 .01
345678 .01
3456789 .00001
34567890 .00001
345678901 .00001
;;;;
data certadv.census;
input State:$20. 
      Census_Apr2010
      PopEst_Apr2010
      PopEst_Apr2011
	  PopEst_Apr2012
	  PopEst_Apr2013
      PopEst_Apr2014
      PopEst_Apr2015
      PopEst_Apr2016
      PopEst_Apr2017
      PopEst_Apr2018;
infile datalines dsd truncover;
datalines4;
Alabama,4779736,4785448,4798834,4815564,4830460,4842481,4853160,4864745,4875120,4887871
Alaska,710231,713906,722038,730399,737045,736307,737547,741504,739786,737438
Arizona,6392017,6407774,6473497,6556629,6634999,6733840,6833596,6945452,7048876,7171646
Arkansas,2915918,2921978,2940407,2952109,2959549,2967726,2978407,2990410,3002997,3013825
California,37253956,37320903,37641823,37960782,38280824,38625139,38953142,39209127,39399349,39557045
Colorado,5029196,5048281,5121771,5193721,5270482,5351218,5452107,5540921,5615902,5695564
Connecticut,3574097,3579125,3588023,3594395,3594915,3594783,3587509,3578674,3573880,3572665
Delaware,897934,899595,907316,915188,923638,932596,941413,949216,957078,967171
District of Columbia,601723,605085,619602,634725,650431,662513,675254,686575,695691,702455
Florida,18801310,18845785,19093352,19326230,19563166,19860330,20224249,20629982,20976812,21299325
Georgia,9687653,9711810,9801578,9901496,9973326,10069001,10181111,10304763,10413055,10519475
Hawaii,1360301,1363963,1379252,1394905,1408453,1414862,1422484,1428105,1424203,1420491
Idaho,1567582,1570773,1583828,1595441,1611530,1631479,1651523,1682930,1718904,1754208
Illinois,12830632,12840762,12867291,12884119,12898269,12888962,12864342,12826895,12786196,12741080
Indiana,6483802,6490436,6516045,6537640,6568367,6593533,6608296,6633344,6660082,6691878
Iowa,3046355,3050767,3066054,3076097,3093078,3109504,3121460,3131785,3143637,3156145
Kansas,2853118,2858213,2869035,2885361,2893510,2900896,2909502,2911263,2910689,2911505
Kentucky,4339367,4348200,4369488,4386381,4404817,4414483,4425999,4438229,4453874,4468402
Louisiana,4533372,4544532,4575184,4600814,4624577,4644204,4664851,4678215,4670818,4659978
Maine,1328361,1327632,1328150,1327691,1328196,1330760,1328484,1331370,1335063,1338404
Maryland,5773552,5788642,5838991,5887072,5923704,5958165,5986717,6004692,6024891,6042718
Massachusetts,6547629,6566431,6613149,6663158,6713944,6763652,6795891,6826022,6863246,6902149
Michigan,9883640,9877535,9881521,9896930,9913349,9930589,9932573,9951890,9976447,9995915
Minnesota,5303925,5310843,5345668,5376550,5413693,5451522,5482503,5523409,5568155,5611179
Mississippi,2967297,2970536,2978470,2983767,2988797,2990623,2988693,2988298,2989663,2986530
Missouri,5988927,5995976,6009641,6024081,6040658,6056293,6071745,6087203,6108612,6126452
Montana,989415,990722,997221,1003754,1013564,1021891,1030503,1040863,1053090,1062305
Nebraska,1826341,1829536,1840538,1853323,1865414,1879522,1891507,1905924,1917575,1929268
Nevada,2700551,2702464,2712799,2744566,2776972,2819012,2868666,2919772,2972405,3034392
New Hampshire,1316470,1316777,1319815,1323962,1326408,1333223,1336294,1342373,1349767,1356458
New Jersey,8791894,8799624,8827783,8845483,8858362,8866780,8870869,8874516,8888543,8908520
New Mexico,2059179,2064588,2080395,2087549,2092792,2090342,2090211,2092789,2093395,2095428
New York,19378102,19400080,19498514,19574549,19628043,19656330,19661411,19641589,19590719,19542209
North Carolina,9535483,9574293,9656754,9749123,9843599,9933944,10033079,10156679,10270800,10383620
North Dakota,672591,674710,685136,701116,721999,737382,754022,754353,755176,760077
Ohio,11536504,11539327,11543463,11548369,11576576,11602973,11617850,11635003,11664129,11689442
Oklahoma,3751351,3759632,3787821,3818600,3853205,3878367,3909831,3926769,3932640,3943079
Oregon,3831074,3837532,3871728,3899118,3922908,3964106,4016918,4091404,4146592,4190713
Pennsylvania,12702379,12711158,12744583,12766827,12776621,12789101,12785759,12783538,12790447,12807060
Rhode Island,1052567,1053938,1053536,1054601,1055122,1056017,1056173,1057063,1056486,1057315
South Carolina,4625364,4635656,4671422,4717112,4764153,4823793,4892253,4958235,5021219,5084127
South Dakota,814180,816165,823484,833496,842270,849088,853933,862890,873286,882235
Tennessee,6346105,6355301,6397410,6451281,6493432,6540826,6590808,6645011,6708794,6770010
Texas,25145561,25242679,25646227,26089620,26489464,26977142,27486814,27937492,28322717,28701845
Utah,2763885,2775334,2814216,2853467,2897927,2937399,2982497,3042613,3103118,3161105
Vermont,625741,625880,626979,626063,626212,625218,625197,623644,624525,626299
Virginia,8001024,8023680,8100469,8185229,8253053,8312076,8362907,8410946,8465207,8517685
Washington,6724540,6742902,6821655,6892876,6962906,7052439,7163543,7294680,7425432,7535591
West Virginia,1852994,1854214,1856074,1856764,1853873,1849467,1841996,1830929,1817048,1805832
Wisconsin,5686986,5690479,5704755,5719855,5736952,5751974,5761406,5772958,5792051,5813568
Wyoming,563626,564483,567224,576270,582123,582548,585668,584290,578934,577737
Puerto Rico,3725789,3721525,3678732,3634488,3593077,3534874,3473166,3406495,3325001,3195153
;;;;
data certadv.grocery;
infile datalines dsd truncover;
input Product:$33. Price;
datalines4;
Dehydrated Kelp Kombo,1.99
Chocolate - White,5.99
Sping Loaded Cup Dispenser,2.49
Cheese - Parmesan Grated,0.99
Chocolate Liqueur - Godet White,2.99
White Baguette,2.49
Cheese - Cream Cheese,0.99
Wine - Red Pelee Island Merlot,3.49
Chicken Giblets,4.49
Muffin Hinge Container 6,0.99
Milk - Skim,2.49
Flour - Fast / Rapid,3.49
Creamers - 10%,5.99
Soup Campbells Turkey Veg.,2.99
Crush - Grape 355 Ml,5.99
Pineapple - Canned Rings,1.99
Chips - Miss Vickies,1.99
Sauce - Demi Glace,2.99
Coconut - Creamed Pure,3.49
Longos - Chicken Wings,5.99
Potatoes - Idaho 80 Count,0.99
Cape Capensis - Fillet,1.99
Coffee - Ristretto Coffee Capsule,4.99
Pastry - French Mini Assorted,4.49
Chocolate - Sugar Free Semi Choc,4.99
Cheese - Brie Triple Creme,3.49
Cheese - Swiss Sliced,4.49
Syrup - Monin - Granny Smith,2.99
Fruit Salad Deluxe,4.99
Pepper - Red Bell,2.49
Bread - Wheat Baguette,5.99
Turkey - Ground. Lean,2.49
Milk - 1%,4.99
Mint - Fresh,4.99
Tea - Jasmin Green,1.99
Pear - Asian,3.49
Pasta - Orecchiette,2.49
Appetizer - Lobster Phyllo Roll,2.49
Chinese Foods - Chicken,2.49
Bacardi Breezer - Tropical,0.99
Bread - Multigrain,5.49
Soup - Campbells Pasta Fagioli,1.99
Vermacelli - Sprinkles Assorted,5.99
Pepper - Julienne Frozen,4.99
Hinge W Undercut,2.99
Pasta - Elbows Macaroni Dry,4.49
Bread - French Stick,4.99
Cheese - Roquefort Pappillon,4.99
Bay Leaf Ground,2.49
Nut - Cashews Whole Raw,4.49
Wine - Chardonnay Mondavi,1.99
Lettuce - Red Leaf,4.49
Wine - Alicanca Vinho Verde,0.99
Tortillas - Flour 8,3.49
Beans - Black Bean Canned,5.49
Petit Baguette,4.99
Crab - Blue Frozen,2.49
Beef Wellington,3.49
Chilli Paste Ginger Garlic,0.99
Juice - Apple 500 Ml,2.99
Chocolate - Compound Coating,5.49
Truffle Cups - Red,4.99
Steel Wool,5.99
Oranges - Navel 72,4.49
Oil - Sunflower,3.49
Bread Base - Goodhearth,5.49
Thyme - Lemon Fresh,5.99
Duck - Whole,5.99
Nori Sea Weed,4.49
Veal - Liver,3.49
Mushroom - Portebello,5.49
Smoked Tongue,4.49
Bread - Pita,1.99
Soup - Campbells - Chicken Noodle,1.99
Pears - Bosc,5.49
Chips - Potato Jalapeno,2.49
Coriander - Ground,4.99
Cod - Salted Boneless,1.99
Tomato - Peeled Italian Canned,5.49
Tea - Lemon Scented,4.49
Pears - Anjou,5.49
Almonds Ground Blanched,5.99
Hot Chocolate - Individual,1.99
Horseradish - Prepared,4.49
Pepper - White Whole,5.99
Bread - Crusty Italian Poly,2.49
French Kiss Vanilla,1.99
Flour - Rye,4.49
Truffle - Whole Black Peeled,5.99
Clam Nectar,2.99
Muffin Puck Ww Carrot,4.99
Eel - Smoked,2.99
Salt And Pepper Mix - Black,3.49
Lotus Rootlets - Canned,4.99
Lettuce - Radicchio,5.99
Pate - Liver,0.99
Soup - Campbells Asian Noodle,5.99
Apple - Custard,4.49
Beef Cheek Fresh,2.99
Chevril,3.49
Syrup - Chocolate,2.99
Smoked Tongue,4.99
Tortillas - Flour 12,3.49
Juice - Grape White,4.49
Cabbage Roll,4.99
Pork - Tenderloin Frozen,0.99
Beef - Outside Round,5.99
Parsley - Dried,4.99
Compound - Pear,3.49
Sugar - Individual Portions,2.99
Pop - Club Soda Can,4.99
Cheese Cloth No 60,4.49
Tart - Raisin And Pecan,2.99
Sugar - Palm,0.99
Pants Custom Dry Clean,0.99
Pepper - Red Chili,0.99
Butter - Unsalted,1.99
Assorted Desserts,2.49
Coffee - Espresso,4.49
Fish - Halibut Cold Smoked,1.99
Longos - Chicken Wings,1.99
Oil - Olive,4.99
Bread - Pita Mini,4.49
Beans - Turtle Black Dry,4.49
White Fish - Filets,5.99
Cheese - Comte,2.99
Tomatoes - Heirloom,3.49
Compound - Mocha,0.99
Nut - Walnut Pieces,1.99
Longos - Chicken Curried,3.49
Pastry - Apple Large,2.49
Vinegar - Raspberry,1.99
Sole - Dover Whole Fresh,1.99
Fudge - Chocolate Fudge,3.49
Longos - Grilled Veg Sandwiches,2.99
Sauce - Sesame Thai Dressing,5.49
Halibut - Steaks,1.99
Pecan Raisin - Tarts,5.99
Mussels - Frozen,5.99
Liners - Baking Cups,2.99
Bagel - Whole White Sesame,0.99
Pie Filling - Pumpkin,4.49
Veal - Sweetbread,0.99
Sauce - Gravy Au Jus Mix,2.49
Bread - Flat Bread,4.49
Fish - Bones,5.49
Yeast Dry - Fleischman,2.99
Cardamon Seed / Pod,2.99
Veal - Liver,3.49
Appetizer - Smoked Salmon / Dill,2.49
Cheese - Ermite Bleu,2.99
Cheese - Swiss,4.99
Danishes - Mini Raspberry,4.49
Oil - Avocado,1.99
Lemonade - Mandarin 591 Ml,4.49
Shrimp - Tiger 21/25,2.99
;;;;
data certadv.grocery;
   set certadv.grocery;
   if Price>=4.99 then CustomDiscount=15;
      else if Price>=2.99 then CustomDiscount=10;
	  else CustomDiscount=5;
run;
data certadv.ORDERFACT;
  infile datalines dsd truncover;
  input CustomerID:12. EmployeeID:12. StreetID:12. OrderDate:DATE9. DeliveryDate:DATE9. OrderID:12. OrderType:32. ProductID:12. Quantity:32. TotalRetailPrice:DOLLAR13.2 CostPricePerUnit:DOLLAR13.2 Discount:PERCENT.;
  format CustomerID 12. EmployeeID 12. StreetID 12. OrderDate DATE9. DeliveryDate DATE9. OrderID 12. ProductID 12. TotalRetailPrice DOLLAR13.2 CostPricePerUnit DOLLAR13.2 Discount PERCENT.;
  label CustomerID="Customer ID" EmployeeID="Employee ID" StreetID="Street ID" OrderDate="Date Order was placed by Customer" DeliveryDate="Date Order was Delivered" OrderID="Order ID" OrderType="Order Type" ProductID="Product ID" Quantity="Quantity Ordered" TotalRetailPrice="Total Retail Price for This Product" CostPricePerUnit="Cost Price Per Unit" Discount="Discount in percent of Normal Total Retail Price";
datalines4;
63,121039,9260125492,11JAN2007,11JAN2007,1230058123,1,220101300017,1,$16.50,$7.45,
41,120174,1600101527,28JAN2007,28JAN2007,1230147441,1,240600100010,2,$32.00,$6.50,
183,120134,1600100760,27FEB2007,27FEB2007,1230315085,1,240200200039,3,$63.60,$8.80,
56,121059,9260111871,15MAR2007,15MAR2007,1230404278,1,220200300002,2,$75.00,$17.05,
183,120149,1600100760,22MAR2007,22MAR2007,1230440481,1,230100600005,1,$129.80,$63.20,
183,120134,1600100760,25MAR2007,25MAR2007,1230455630,1,240200100233,2,$91.80,$22.45,
20,121066,9260118934,01APR2007,01APR2007,1230498538,1,230100300006,1,$68.50,$34.35,
79,121045,9260101874,18APR2007,18APR2007,1230591684,1,240200100076,4,"$1,796.00",$246.55,
71,121060,9260124130,16MAY2007,16MAY2007,1230745294,1,220200100179,1,$134.50,$67.35,
12,121039,9260103713,18MAY2007,18MAY2007,1230754828,1,220100100272,3,$68.40,$11.50,
12,121039,9260103713,18MAY2007,18MAY2007,1230754828,1,220101400269,4,$268.00,$29.80,
111,120148,1600102072,23MAY2007,23MAY2007,1230778996,1,230100500096,1,$35.50,$17.25,
71,121064,9260124130,31MAY2007,31MAY2007,1230825762,1,230100500093,2,$265.60,$55.85,
75,121094,9260108068,03JUN2007,03JUN2007,1230841466,1,240500100062,2,$109.20,$23.85,
75,121094,9260108068,03JUN2007,03JUN2007,1230841466,1,240500200130,2,$56.00,$11.70,
56,121043,9260111871,11JUN2007,11JUN2007,1230885738,1,220101300017,2,$33.00,$7.45,
56,121043,9260111871,11JUN2007,11JUN2007,1230885738,1,220101400098,3,$97.20,$14.85,
18,121086,9260112361,16JUN2007,16JUN2007,1230912536,1,240500200121,2,$50.80,$12.10,
215,120145,1600102721,07JUL2007,07JUL2007,1231023774,1,230100500024,1,$22.90,$10.85,
215,120145,1600102721,07JUL2007,07JUL2007,1231023774,1,230100600015,1,$78.20,$39.20,
12,121064,9260103713,16JUL2007,16JUL2007,1231077006,1,230100500095,2,$193.80,$40.00,
79,121027,9260101874,27JUL2007,27JUL2007,1231135703,1,210200900004,2,$92.00,$16.05,
79,121027,9260101874,27JUL2007,27JUL2007,1231135703,1,210201000050,2,$39.00,$8.95,
31,121059,9260128428,02AUG2007,02AUG2007,1231169108,1,220200300157,3,$220.20,$36.65,
215,120164,1600102721,04AUG2007,04AUG2007,1231176288,1,240500200100,2,$45.40,$10.85,
71,120732,9260124130,08AUG2007,08AUG2007,1231204878,1,230100600017,2,$111.40,$27.95,
215,120134,1600102721,09AUG2007,09AUG2007,1231206746,1,240200100232,1,$28.20,$14.20,
20,121040,9260118934,13AUG2007,13AUG2007,1231231220,1,220101400306,2,$145.20,$33.10,
45,121045,9260104847,18AUG2007,18AUG2007,1231259703,1,240200100051,3,$420.90,$72.00,
12,121037,9260103713,24AUG2007,24AUG2007,1231292064,1,220101400060,3,$96.30,$14.70,
12,121037,9260103713,24AUG2007,24AUG2007,1231292064,1,220101400117,2,$91.20,$20.85,
20,121109,9260118934,28AUG2007,28AUG2007,1231314893,1,240700200024,2,$32.00,$6.35,
71,121057,9260124130,02SEP2007,02SEP2007,1231341359,1,220200200018,2,$132.80,$30.25,
52,121044,9260116235,25SEP2007,30SEP2007,1231468750,1,220100100153,1,$50.00,$25.10,
88,121043,9260100179,01OCT2007,01OCT2007,1231501254,1,220100700052,1,$106.10,$50.50,
63,121061,9260125492,29OCT2007,02NOV2007,1231657078,1,220200300116,1,$84.20,$38.35,
5,121025,9260114570,30OCT2007,30OCT2007,1231663230,1,240100100433,1,$3.00,$1.15,
17,121037,9260123306,16NOV2007,16NOV2007,1231757107,1,220100100568,1,$84.10,$42.15,
71,121025,9260124130,20NOV2007,20NOV2007,1231780610,1,240100400080,1,$219.90,$109.90,
45,121060,9260104847,04DEC2007,04DEC2007,1231858937,1,220200300079,2,$128.60,$28.65,
71,121043,9260124130,10DEC2007,10DEC2007,1231891098,1,220101400091,2,$65.60,$15.00,
88,120733,9260100179,11DEC2007,11DEC2007,1231896710,1,230100500087,1,$93.80,$39.05,
183,120127,1600100760,12DEC2007,12DEC2007,1231898348,1,220101400289,4,$240.80,$27.40,
215,120132,1600102721,14DEC2007,14DEC2007,1231908237,1,240200100180,2,$243.20,$62.90,
17,121020,9260123306,17DEC2007,17DEC2007,1231928627,1,240100400070,1,$175.90,$127.95,
111,120127,1600102072,18DEC2007,18DEC2007,1231930216,1,220100300008,4,$342.80,$34.35,
111,120127,1600102072,19DEC2007,19DEC2007,1231936241,1,220101400017,2,$22.20,$5.00,
5,121037,9260114570,22DEC2007,22DEC2007,1231956902,1,220101400276,2,$136.80,$31.20,
183,120158,1600100760,27DEC2007,27DEC2007,1231982684,1,240400300033,3,$107.10,$14.35,
195,120148,1600101663,28DEC2007,28DEC2007,1231986335,1,230100500008,1,$38.00,$16.80,
45,121066,9260104847,31DEC2007,31DEC2007,1232007700,1,230100100045,2,$249.60,$53.60,
45,121066,9260104847,31DEC2007,31DEC2007,1232007700,1,230100200019,2,$398.20,$95.65,
45,121066,9260104847,31DEC2007,31DEC2007,1232007700,1,230100500056,1,$8.00,$3.50,
53,120143,1600103258,13JAN2008,13JAN2008,1232087464,1,230100600022,4,$336.40,$42.15,
49,121039,9260104510,13JAN2008,13JAN2008,1232092527,1,220100200004,1,$6.50,$2.60,
49,121039,9260104510,13JAN2008,13JAN2008,1232092527,1,220100900006,1,$88.40,$35.45,
49,121039,9260104510,13JAN2008,13JAN2008,1232092527,1,220101400150,1,$28.20,$12.90,
34,121040,9260111379,23JAN2008,23JAN2008,1232161564,1,220100100197,1,$101.30,$50.75,
195,120150,1600101663,05FEB2008,05FEB2008,1232240447,1,230100200059,2,$77.60,$16.65,
171,120148,1600101555,15FEB2008,15FEB2008,1232307056,1,230100500081,2,$146.00,$30.35,
20,121039,9260118934,15FEB2008,15FEB2008,1232311932,1,220100300025,2,$206.00,$42.40,
4,121100,9260106519,09MAR2008,09MAR2008,1232455720,1,240600100017,1,$53.00,$23.25,
49,121037,9260104510,20MAR2008,20MAR2008,1232530393,1,220100100125,1,$33.40,$16.80,
49,121037,9260104510,20MAR2008,20MAR2008,1232530393,1,220100100513,1,$63.90,$32.05,
49,121037,9260104510,20MAR2008,20MAR2008,1232530393,1,220100300019,1,$35.60,$16.70,
92,121068,9260117676,24MAR2008,24MAR2008,1232554759,1,230100600022,1,$84.10,$42.15,
195,120160,1600101663,30MAR2008,30MAR2008,1232590052,1,240400300013,1,$51.80,$21.60,
195,120160,1600101663,30MAR2008,30MAR2008,1232590052,1,240400300035,1,$19.10,$7.70,
49,121031,9260104510,07APR2008,15APR2008,1232648239,1,210201000126,1,$6.50,$2.30,
4,121041,9260106519,16APR2008,16APR2008,1232709099,1,220101400145,1,$16.70,$7.75,
34,121105,9260111379,16APR2008,16APR2008,1232709115,1,240700100001,3,$70.80,$12.30,
215,120151,1600102721,27APR2008,27APR2008,1232777080,1,230100500012,1,$73.90,$33.25,
215,120151,1600102721,27APR2008,27APR2008,1232777080,1,230100600023,1,$73.40,$36.80,
195,120143,1600101663,29APR2008,29APR2008,1232790793,1,230100200074,1,$50.10,$24.50,
34,121021,9260111379,14MAY2008,14MAY2008,1232897220,1,240100400129,3,$712.20,$111.00,
171,120145,1600101555,26MAY2008,26MAY2008,1232972274,1,230100200054,1,$135.80,$61.80,
171,120145,1600101555,26MAY2008,26MAY2008,1232972274,1,230100500056,1,$8.00,$3.50,
183,120122,1600100760,28MAY2008,28MAY2008,1232985693,1,240100100186,1,$273.00,$122.80,
4,121109,9260106519,29MAY2008,29MAY2008,1232998740,1,240700100011,3,$80.97,$10.23,
34,121025,9260111379,30MAY2008,30MAY2008,1233003688,1,240100100535,1,$28.60,$12.95,
215,120148,1600102721,09JUN2008,09JUN2008,1233066745,1,230100600022,1,$84.10,$42.15,
49,121060,9260104510,10JUN2008,10JUN2008,1233078086,1,220200200071,2,$200.20,$43.50,
12,121054,9260103713,12JUN2008,12JUN2008,1233092596,1,240300100048,1,$15.50,$6.70,
45,121084,9260104847,18JUN2008,18JUN2008,1233131266,1,240400300039,2,$39.20,$7.90,
171,120121,1600101555,24JUN2008,24JUN2008,1233166411,1,240100100734,1,$10.10,$4.15,
49,121109,9260104510,05JUL2008,05JUL2008,1233243603,1,240700200004,2,$8.40,$2.20,
75,121029,9260108068,09JUL2008,09JUL2008,1233270605,1,210200600085,2,$75.20,$17.00,
5,121053,9260114570,16JUL2008,16JUL2008,1233315988,1,240300200018,1,$87.20,$39.70,
5,121053,9260114570,16JUL2008,16JUL2008,1233315988,1,240300300071,1,$138.00,$60.10,
34,121105,9260111379,10AUG2008,10AUG2008,1233482761,1,240700200021,2,$38.80,$10.35,
215,120123,1600102721,18AUG2008,18AUG2008,1233531965,1,240100400112,1,$114.00,$54.80,
41,120134,1600101527,20AUG2008,20AUG2008,1233545775,1,240200100007,2,$49.40,$11.80,
41,120134,1600101527,20AUG2008,20AUG2008,1233545775,1,240200100020,1,$189.60,$100.60,
215,120150,1600102721,20AUG2008,20AUG2008,1233545781,1,230100500020,1,$6.20,$2.85,
215,120177,1600102721,31AUG2008,31AUG2008,1233618453,1,240700400020,1,$73.40,$38.25,
49,121053,9260104510,10SEP2008,10SEP2008,1233689304,1,240300300070,3,"$1,514.40",$229.65,
195,120148,1600101663,03OCT2008,03OCT2008,1233837302,1,230100500026,4,$990.00,$109.55,
195,120148,1600101663,03OCT2008,03OCT2008,1233837302,1,230100600036,3,$309.60,$50.40,
34,121030,9260111379,15OCT2008,15OCT2008,1233920786,1,210200400020,1,$38.00,$19.10,
34,121030,9260111379,15OCT2008,15OCT2008,1233920786,1,210200400070,1,$41.60,$20.90,
52,121135,9260116235,15OCT2008,15OCT2008,1233920795,1,240800200010,1,$120.40,$48.10,
52,121064,9260116235,15OCT2008,15OCT2008,1233920805,1,230100500056,1,$8.00,$3.50,
92,121039,9260117676,01NOV2008,01NOV2008,1234033037,1,220100700022,1,$53.70,$22.75,
75,121069,9260108068,10NOV2008,10NOV2008,1234092222,1,230100500023,1,$7.20,$3.10,
195,120123,1600101663,17NOV2008,17NOV2008,1234133789,1,240100400046,1,$328.30,$165.95,
53,120121,1600103258,25NOV2008,25NOV2008,1234186330,1,240100400095,1,$200.10,$97.75,
49,121035,9260104510,26NOV2008,26NOV2008,1234198497,1,210200100017,1,$39.00,$17.35,
49,121042,9260104510,03DEC2008,03DEC2008,1234247283,1,220100400023,2,$187.20,$40.75,
17,121135,9260123306,04DEC2008,04DEC2008,1234255111,1,240800100039,3,$257.40,$39.90,
92,121109,9260117676,11DEC2008,11DEC2008,1234301319,1,240700200010,4,$105.60,$10.10,
4,121069,9260106519,18DEC2008,18DEC2008,1234348668,1,230100100053,2,$92.60,$20.90,
17,121071,9260123306,20DEC2008,20DEC2008,1234360543,1,230100100033,2,$110.20,$25.40,
12,121069,9260103713,22DEC2008,22DEC2008,1234373539,1,230100100013,2,$226.20,$58.90,
111,120123,1600102072,29DEC2008,29DEC2008,1234414529,1,240100100654,2,$90.40,$18.15,
111,120123,1600102072,29DEC2008,29DEC2008,1234414529,1,240100400136,2,$181.80,$45.40,
17,121109,9260123306,29DEC2008,29DEC2008,1234419240,1,240700100013,5,$119.95,$9.75,
195,120150,1600101663,02JAN2009,02JAN2009,1234437760,1,230100600028,2,$193.40,$48.45,
183,120121,1600100760,12JAN2009,12JAN2009,1234537441,1,240100200001,1,$16.00,$6.35,
183,120179,1600100760,31JAN2009,31JAN2009,1234727966,1,240700400004,1,$13.20,$5.95,
18,121021,9260112361,16FEB2009,16FEB2009,1234897732,1,240100100672,1,$197.90,$84.90,
215,120160,1600102721,21MAR2009,21MAR2009,1235236723,1,240400200094,1,$254.20,$115.60,
89,121043,9260116551,24MAR2009,24MAR2009,1235275513,1,220100100241,1,$29.70,$14.95,
111,120122,1600102072,28MAR2009,28MAR2009,1235306679,1,240100200014,1,$55.40,$22.80,
63,121109,9260125492,04APR2009,04APR2009,1235384426,1,240700100012,1,$21.99,$9.10,
171,120127,1600101555,21MAY2009,21MAY2009,1235856852,1,220100100019,1,$27.70,$13.95,
171,120127,1600101555,21MAY2009,21MAY2009,1235856852,1,220101400152,1,$13.10,$5.90,
49,121040,9260104510,26MAY2009,26MAY2009,1235913793,1,220101200025,1,$26.70,$11.60,
183,120127,1600100760,06JUN2009,06JUN2009,1236017640,1,220101400092,1,$57.70,$25.70,
10,121136,9260129395,09JUN2009,09JUN2009,1236055696,1,240800100041,1,$292.50,$121.75,
41,120131,1600101527,26JUN2009,26JUN2009,1236216065,1,240200100118,1,$175.50,$89.55,
92,121051,9260117676,08JUL2009,08JUL2009,1236349115,1,240200100221,4,$396.00,$49.60,
92,121051,9260117676,08JUL2009,08JUL2009,1236349115,1,240200200024,2,$250.80,$12.50,
111,120123,1600102072,11JUL2009,11JUL2009,1236369939,1,240100100365,1,$191.60,$87.40,
111,120123,1600102072,11JUL2009,11JUL2009,1236369939,1,240100400037,1,$231.00,$113.65,
34,121027,9260111379,12AUG2009,12AUG2009,1236701935,1,210200300052,2,$43.80,$11.05,
183,120136,1600100760,21AUG2009,21AUG2009,1236783056,1,240300200058,2,$183.60,$41.70,
183,120136,1600100760,21AUG2009,21AUG2009,1236783056,1,240300300090,3,"$1,561.80",$237.05,
215,120170,1600102721,28AUG2009,28AUG2009,1236852196,1,240600100016,1,$55.30,$21.90,
111,120143,1600102072,03OCT2009,03OCT2009,1237218771,1,230100500072,1,$26.10,$11.90,
195,120124,1600101663,08OCT2009,08OCT2009,1237272696,1,240100400069,2,$186.60,$39.95,
195,120124,1600101663,08OCT2009,08OCT2009,1237272696,1,240100400142,2,$338.80,$84.85,
10,121043,9260129395,13OCT2009,13OCT2009,1237327705,1,220100100298,1,$52.90,$26.55,
10,121043,9260129395,13OCT2009,13OCT2009,1237327705,1,220100100617,1,$37.30,$18.75,
41,120145,1600101527,18OCT2009,18OCT2009,1237370327,1,230100600031,1,$88.50,$42.45,
79,121081,9260101874,01NOV2009,01NOV2009,1237517484,1,240400300013,1,$54.30,$22.60,
53,120190,1600103258,19NOV2009,19NOV2009,1237695520,1,220200100129,3,$240.00,$39.45,
56,121027,9260111871,28NOV2009,28NOV2009,1237789102,1,210200300007,1,$50.40,$25.30,
5,121041,9260114570,08DEC2009,08DEC2009,1237890730,1,220101400265,2,$74.20,$16.55,
5,121041,9260114570,08DEC2009,08DEC2009,1237890730,1,220101400387,4,$50.40,$5.85,
41,120158,1600101527,17DEC2009,17DEC2009,1237974997,1,240400300013,3,$162.90,$22.60,
63,121064,9260125492,06JAN2010,06JAN2010,1238168538,1,230100200073,1,$46.90,$20.20,
10,121106,9260129395,14JAN2010,14JAN2010,1238231237,1,240700200021,1,$19.60,$10.55,
88,121039,9260100179,17JAN2010,17JAN2010,1238255107,1,220100100581,1,$38.70,$19.45,
215,120127,1600102721,20JAN2010,20JAN2010,1238273927,1,220100700022,3,$170.70,$24.10,
52,121025,9260116235,25JAN2010,25JAN2010,1238319276,1,240100100305,1,$8.90,$4.10,
89,121106,9260116551,25JAN2010,25JAN2010,1238319281,1,240700100007,1,$22.85,$9.30,
111,120127,1600102072,30JAN2010,30JAN2010,1238353296,1,220101300001,2,$67.20,$14.95,
111,120127,1600102072,30JAN2010,30JAN2010,1238353296,1,220101400138,3,$140.10,$23.45,
31,121044,9260128428,31JAN2010,31JAN2010,1238367238,1,220100800001,1,$38.60,$18.35,
41,120151,1600101527,02FEB2010,02FEB2010,1238377562,1,230100600016,2,$154.00,$38.60,
10,121073,9260129395,03FEB2010,03FEB2010,1238393448,1,230100500094,1,$86.60,$34.10,
52,121042,9260116235,09FEB2010,09FEB2010,1238440880,1,220100100530,1,$52.20,$26.20,
71,121054,9260124130,18FEB2010,18FEB2010,1238510159,1,240300200009,1,$48.70,$18.15,
71,121054,9260124130,18FEB2010,18FEB2010,1238510159,1,240300300024,1,$54.10,$23.00,
88,121033,9260100179,02MAR2010,02MAR2010,1238605995,1,210201100004,1,$47.90,$20.90,
88,121023,9260100179,06MAR2010,06MAR2010,1238637449,1,240100400151,1,$419.00,$209.45,
12,121069,9260103713,07MAR2010,07MAR2010,1238646479,1,230100200043,1,$56.70,$27.25,
90,121072,9260111614,07MAR2010,07MAR2010,1238646484,1,230100300013,1,$24.80,$5.00,
53,120121,1600103258,11MAR2010,11MAR2010,1238674844,1,240100100508,1,$48.30,$19.25,
12,121051,9260103713,11MAR2010,11MAR2010,1238678581,1,240200100181,1,$109.30,$56.60,
12,121051,9260103713,11MAR2010,11MAR2010,1238678581,1,240200200080,2,$187.60,$9.40,
10,121044,9260129395,12MAR2010,12MAR2010,1238686430,1,220101400201,1,$40.60,$18.05,
53,120127,1600103258,16MAR2010,16MAR2010,1238712056,1,220100100185,1,$97.60,$48.90,
53,120127,1600103258,16MAR2010,16MAR2010,1238712056,1,220100700002,1,$186.80,$89.10,
195,120177,1600101663,19MAR2010,19MAR2010,1238735750,1,240700400020,2,$155.60,$40.50,
52,121024,9260116235,27MAR2010,27MAR2010,1238805678,1,240100100714,1,$92.80,$39.85,
52,121024,9260116235,27MAR2010,27MAR2010,1238805678,1,240100400006,1,$229.10,$113.25,
89,121039,9260116551,27MAR2010,27MAR2010,1238805703,1,220101400285,1,$59.40,$27.05,
88,121056,9260100179,01APR2010,01APR2010,1238846184,1,220200100035,1,$62.60,$31.40,
39,121105,9260123099,04APR2010,04APR2010,1238870441,1,240700200007,1,$5.10,$2.20,
89,121042,9260116551,09APR2010,09APR2010,1238910092,1,220100100309,2,$192.60,$48.25,
89,121042,9260116551,09APR2010,09APR2010,1238910092,1,220101400363,2,$78.00,$16.95,
215,120172,1600102721,12APR2010,12APR2010,1238928257,1,240600100181,1,$37.40,$16.30,
12,121030,9260103713,27APR2010,27APR2010,1239057268,1,210200500006,2,$48.00,$11.95,
52,121040,9260116235,14MAY2010,14MAY2010,1239194032,1,220100100192,1,$27.40,$13.80,
90,121020,9260111614,15MAY2010,15MAY2010,1239201604,1,240100400129,3,$712.20,$111.00,
63,121087,9260125492,21MAY2010,21MAY2010,1239248786,1,240500100015,3,$174.30,$25.80,
63,121087,9260125492,21MAY2010,21MAY2010,1239248786,1,240500200093,1,$41.70,$19.75,
41,120152,1600101527,23MAY2010,23MAY2010,1239258470,1,240400200003,1,$6.20,$3.00,
53,120143,1600103258,24MAY2010,24MAY2010,1239266107,1,230100600038,1,$112.50,$54.95,
45,121075,9260104847,29MAY2010,29MAY2010,1239312711,1,230100600016,3,$231.00,$38.60,
45,121075,9260104847,29MAY2010,29MAY2010,1239312711,1,230100700011,3,$849.90,$116.85,
52,121037,9260116235,02JUN2010,02JUN2010,1239346133,1,220100100273,3,$116.40,$19.50,
52,121037,9260116235,02JUN2010,02JUN2010,1239346133,1,220100300042,1,$208.60,$84.35,
183,120143,1600100760,04JUN2010,04JUN2010,1239353855,1,230100500066,1,$12.70,$6.10,
89,121105,9260116551,05JUN2010,05JUN2010,1239368476,1,240700100012,3,$65.97,$9.10,
52,121105,9260116235,10JUN2010,10JUN2010,1239408849,1,240700100017,2,$53.20,$11.40,
88,121036,9260100179,11JUN2010,11JUN2010,1239416627,1,220100800040,2,$248.20,$59.05,
195,120127,1600101663,12JUN2010,12JUN2010,1239418524,1,220100100536,2,$408.80,$102.30,
90,121040,9260111614,27JUN2010,27JUN2010,1239543223,1,220100100635,2,$172.80,$43.30,
90,121040,9260111614,27JUN2010,27JUN2010,1239543223,1,220101300012,2,$38.60,$8.75,
45,121127,9260104847,06JUL2010,06JUL2010,1239615368,1,240800200002,1,$178.88,$71.55,
88,121040,9260100179,16JUL2010,16JUL2010,1239693951,1,220100900035,2,$83.60,$19.45,
71,121073,9260124130,21JUL2010,21JUL2010,1239735632,1,230100700009,2,"$1,136.20",$289.95,
60,121036,9260101262,25JUL2010,25JUL2010,1239765451,1,220101400004,2,$211.40,$48.15,
60,121036,9260101262,25JUL2010,25JUL2010,1239765451,1,220101400148,2,$21.00,$4.75,
12,121090,9260103713,03AUG2010,03AUG2010,1239836937,1,240500100043,2,$52.40,$8.85,
12,121042,9260103713,08AUG2010,08AUG2010,1239874523,1,220101400047,2,$48.40,$11.10,
52,120732,9260116235,19AUG2010,19AUG2010,1239962634,1,230100500080,2,$50.00,$12.20,
90,121060,9260111614,23AUG2010,23AUG2010,1239994933,1,220200300082,3,$213.00,$32.30,
60,121066,9260101262,31AUG2010,31AUG2010,1240060066,1,230100100062,1,$141.70,$61.00,
10,121039,9260129395,18SEP2010,18SEP2010,1240201886,1,220101400339,1,$32.30,$14.75,
52,121051,9260116235,28SEP2010,28SEP2010,1240283215,1,240200100118,1,$175.50,$89.55,
52,121051,9260116235,28SEP2010,28SEP2010,1240283215,1,240200100164,2,$112.20,$28.15,
52,121051,9260116235,28SEP2010,28SEP2010,1240283215,1,240200100227,2,$323.80,$75.90,
90,121071,9260111614,01OCT2010,01OCT2010,1240306942,1,230100500056,1,$8.00,$3.50,
90,121071,9260111614,01OCT2010,01OCT2010,1240306942,1,230100600018,1,$64.20,$32.20,
17,121074,9260123306,02OCT2010,02OCT2010,1240314956,1,230100500094,1,$86.60,$34.10,
10,121063,9260129395,07OCT2010,07OCT2010,1240355393,1,230100600022,1,$84.10,$42.15,
63,120733,9260125492,10OCT2010,10OCT2010,1240379679,1,230100200004,1,$99.90,$50.05,
63,120733,9260125492,10OCT2010,10OCT2010,1240379679,1,230100500077,1,$173.00,$72.75,
89,121140,9260116551,11OCT2010,11OCT2010,1240387741,1,240800200020,1,$187.20,$85.15,
183,120153,1600100760,17OCT2010,17OCT2010,1240430921,1,240400200093,1,$155.80,$64.95,
10,121036,9260129395,20OCT2010,20OCT2010,1240461993,1,220100300020,1,$11.30,$4.55,
10,121036,9260129395,20OCT2010,20OCT2010,1240461993,1,220100800009,1,$52.50,$24.95,
10,121036,9260129395,20OCT2010,20OCT2010,1240461993,1,220101400276,1,$68.40,$31.20,
63,121033,9260125492,26OCT2010,26OCT2010,1240509842,1,210200500007,1,$39.40,$17.80,
89,121061,9260116551,31OCT2010,31OCT2010,1240549230,1,220200100012,1,$58.70,$28.25,
215,120192,1600102721,05NOV2010,05NOV2010,1240581932,1,210201000199,3,$124.20,$18.85,
63,121071,9260125492,07NOV2010,07NOV2010,1240604971,1,230100600030,1,$86.30,$41.40,
20,121069,9260118934,08NOV2010,08NOV2010,1240613362,1,230100100017,1,$175.30,$74.95,
88,121086,9260100179,18NOV2010,18NOV2010,1240692950,1,240500100039,1,$34.50,$15.40,
52,121030,9260116235,12DEC2010,12DEC2010,1240886449,1,210200200023,1,$19.80,$8.25,
52,121044,9260116235,14DEC2010,14DEC2010,1240903120,1,220100100592,2,$62.20,$15.65,
52,121044,9260116235,14DEC2010,14DEC2010,1240903120,1,220100100629,4,$213.20,$26.75,
89,121135,9260116551,03JAN2011,04JAN2011,1241063739,1,240800200035,6,$160.80,$12.15,
171,120134,1600101555,04JAN2011,04JAN2011,1241066216,1,240200100225,2,$306.20,$77.85,
53,120131,1600103258,13JAN2011,13JAN2011,1241147641,1,240200200091,2,$362.60,$72.60,
171,120136,1600101555,23JAN2011,30JAN2011,1241235281,1,240300100001,1,$72.60,$36.25,
111,120164,1600102072,24JAN2011,24JAN2011,1241244297,1,240500100041,2,$258.20,$51.70,
111,120164,1600102072,24JAN2011,24JAN2011,1241244297,1,240500200042,2,$81.20,$19.35,
111,120164,1600102072,24JAN2011,24JAN2011,1241244297,1,240500200101,3,$358.20,$49.75,
12,121043,9260103713,05FEB2011,05FEB2011,1241359997,1,220100100105,1,$117.60,$58.90,
171,120124,1600101555,07FEB2011,07FEB2011,1241371145,1,240100400046,2,$656.60,$165.95,
171,120124,1600101555,07FEB2011,07FEB2011,1241371145,1,240100400085,2,$129.00,$30.95,
41,120131,1600101527,09FEB2011,09FEB2011,1241390440,1,240200100046,2,$36.20,$9.15,
18,121042,9260112361,16FEB2011,17FEB2011,1241461856,1,220100100523,1,$29.40,$14.80,
171,120127,1600101555,28FEB2011,28FEB2011,1241561055,1,220101400088,5,$192.00,$17.50,
10,121040,9260129395,13MAR2011,19MAR2011,1241686210,1,220100100235,1,$32.60,$16.40,
92,121106,9260117676,16MAR2011,16MAR2011,1241715610,1,240700200019,1,$16.90,$8.60,
31,121025,9260128428,18MAR2011,18MAR2011,1241731828,1,240100100410,1,$22.70,$10.40,
31,121025,9260128428,18MAR2011,18MAR2011,1241731828,1,240100100665,1,$41.50,$17.25,
56,121051,9260111871,05APR2011,09APR2011,1241895594,1,240200100034,2,$24.40,$4.45,
56,121051,9260111871,05APR2011,09APR2011,1241895594,1,240200100050,1,$13.50,$6.65,
171,120152,1600101555,15APR2011,15APR2011,1241977403,1,240400300035,1,$19.10,$7.70,
10,121040,9260129395,18APR2011,18APR2011,1242012259,1,220100300037,2,$231.60,$48.70,
10,121040,9260129395,18APR2011,18APR2011,1242012259,1,220101400032,2,$19.20,$4.85,
45,121040,9260104847,18APR2011,18APR2011,1242012269,1,220100300019,4,$142.40,$16.70,
45,121040,9260104847,18APR2011,18APR2011,1242012269,1,220101400216,3,$73.80,$11.30,
183,120132,1600100760,21APR2011,21APR2011,1242035131,1,240200200061,1,$147.10,$58.85,
92,121086,9260117676,01MAY2011,01MAY2011,1242130888,1,240500100017,3,$160.50,$23.75,
90,121032,9260111614,03MAY2011,03MAY2011,1242149082,1,210200300006,1,$14.30,$7.70,
90,121032,9260111614,03MAY2011,03MAY2011,1242149082,1,210200900033,4,$56.80,$6.45,
41,120136,1600101527,08MAY2011,08MAY2011,1242185055,1,240300100049,1,$19.90,$8.90,
171,120127,1600101555,13MAY2011,13MAY2011,1242229985,1,220100100189,2,$189.40,$47.45,
10,121105,9260129395,16MAY2011,16MAY2011,1242265757,1,240700100004,3,$79.80,$13.75,
10,121071,9260129395,06JUN2011,06JUN2011,1242458099,1,230100400007,1,$12.20,$4.90,
5,121056,9260114570,10JUN2011,10JUN2011,1242493791,1,220200100009,2,$126.80,$30.50,
31,121067,9260128428,11JUN2011,11JUN2011,1242502670,1,230100500056,2,$16.00,$3.50,
31,121067,9260128428,11JUN2011,11JUN2011,1242502670,1,230100500087,2,$195.00,$40.55,
171,120130,1600101555,18JUN2011,18JUN2011,1242559569,1,220100700023,1,$73.99,$44.25,30%
12,121037,9260103713,23JUN2011,23JUN2011,1242610991,1,220101400047,2,$48.40,$11.10,
45,121109,9260104847,27JUN2011,27JUN2011,1242647539,1,240700200009,2,$56.00,$11.35,
90,121037,9260111614,28JUN2011,28JUN2011,1242657273,1,220100100410,3,$33.60,$5.70,
10,121107,9260129395,07JUL2011,07JUL2011,1242736731,1,240700200010,3,$80.70,$10.30,
10,121105,9260129395,17JUL2011,17JUL2011,1242827683,1,240700300002,1,$21.99,$7.25,
10,121027,9260129395,18JUL2011,18JUL2011,1242836878,1,210201000067,2,$60.60,$13.50,
41,120195,1600101527,19JUL2011,19JUL2011,1242838815,1,210200500007,1,$39.40,$17.80,
41,120195,1600101527,19JUL2011,19JUL2011,1242838815,1,210200600056,1,$50.40,$22.75,
171,120124,1600101555,30JUL2011,30JUL2011,1242938120,1,240100200004,1,$35.20,$14.80,
10,120733,9260129395,08AUG2011,08AUG2011,1243026971,1,230100500082,2,$252.20,$58.60,
41,120143,1600101527,10AUG2011,10AUG2011,1243039354,1,230100600003,1,$17.60,$7.75,
10,121032,9260129395,17AUG2011,17AUG2011,1243110343,1,210200600067,2,$134.00,$28.90,
10,121032,9260129395,17AUG2011,17AUG2011,1243110343,1,210200900038,3,$60.90,$9.30,
171,120159,1600101555,20AUG2011,20AUG2011,1243127549,1,240400300035,1,$19.10,$7.70,
45,120734,9260104847,22AUG2011,23AUG2011,1243152030,1,230100400010,1,$40.20,$16.85,
90,121089,9260111614,22AUG2011,22AUG2011,1243152039,1,240500200003,2,$47.60,$11.40,
10,121061,9260129395,27AUG2011,27AUG2011,1243198099,1,220200200018,3,$199.20,$30.25,
10,121061,9260129395,27AUG2011,27AUG2011,1243198099,1,220200300154,3,$256.20,$39.80,
171,120141,1600101555,31AUG2011,10SEP2011,1243227745,1,230100500004,2,$6.40,$1.35,
31,121057,9260128428,06SEP2011,06SEP2011,1243290080,1,220200100137,1,$50.30,$25.25,
45,121065,9260104847,06SEP2011,06SEP2011,1243290089,1,230100600015,1,$78.20,$39.20,
5,121026,9260114570,09SEP2011,09SEP2011,1243315613,1,210200500016,1,$52.50,$22.25,
12,121051,9260103713,18SEP2011,18SEP2011,1243398628,1,240200100053,1,$87.20,$44.95,
69,121029,9260116402,20SEP2011,20SEP2011,1243417726,1,210200700016,1,$23.50,$9.20,
41,120195,1600101527,26SEP2011,26SEP2011,1243465031,1,210200600067,2,$134.00,$28.90,
89,121024,9260116551,01OCT2011,01OCT2011,1243515588,1,240100400098,1,$251.80,$125.85,
89,121024,9260116551,01OCT2011,01OCT2011,1243515588,1,240100400125,1,$114.20,$44.60,
31,121060,9260128428,07OCT2011,07OCT2011,1243568955,1,220200300096,1,$172.50,$78.50,
171,120138,1600101555,16OCT2011,16OCT2011,1243643970,1,220200200035,1,$101.50,$46.25,
41,120124,1600101527,18OCT2011,18OCT2011,1243661763,1,240100100463,2,$29.40,$6.05,
69,121065,9260116402,18OCT2011,18OCT2011,1243670182,1,230100500004,1,$3.20,$1.35,
31,121061,9260128428,19OCT2011,19OCT2011,1243680376,1,220200100190,1,$63.50,$29.95,
10,121053,9260129395,01NOV2011,01NOV2011,1243797399,1,240300100028,2,"$1,066.40",$251.35,
10,121053,9260129395,01NOV2011,01NOV2011,1243797399,1,240300300065,1,$321.50,$146.35,
41,120128,1600101527,02NOV2011,02NOV2011,1243799681,1,220100100354,1,$17.00,$8.45,
41,120128,1600101527,02NOV2011,02NOV2011,1243799681,1,220100800096,3,$222.30,$35.30,
10,120732,9260129395,03NOV2011,03NOV2011,1243815198,1,230100500092,4,$471.20,$49.05,
10,120732,9260129395,03NOV2011,03NOV2011,1243815198,1,230100500096,1,$35.50,$17.25,
171,120127,1600101555,04NOV2011,04NOV2011,1243817278,1,220101400328,1,$19.00,$8.85,
34,121068,9260111379,18NOV2011,18NOV2011,1243951648,1,230100600030,1,$86.30,$41.40,
90,121028,9260111614,19NOV2011,19NOV2011,1243960910,1,210200100009,2,$69.40,$15.50,
215,120175,1600102721,20NOV2011,20NOV2011,1243963366,1,240600100080,2,$60.80,$9.20,
171,120124,1600101555,23NOV2011,23NOV2011,1243991721,1,240100100354,1,$29.90,$14.30,
45,121107,9260104847,05DEC2011,05DEC2011,1244107612,1,240700100001,5,$118.00,$12.30,
45,121107,9260104847,05DEC2011,05DEC2011,1244107612,1,240700400031,2,$126.00,$31.60,
45,121109,9260104847,06DEC2011,06DEC2011,1244117101,1,240700100007,2,$45.70,$9.30,
45,121109,9260104847,06DEC2011,06DEC2011,1244117101,1,240700100017,2,$19.98,$11.40,40%
49,121117,9260104510,06DEC2011,06DEC2011,1244117109,1,240700400003,2,$24.80,$5.60,
31,121121,9260128428,12DEC2011,12DEC2011,1244171290,1,240800100042,3,$760.80,$105.30,
10,121092,9260129395,13DEC2011,13DEC2011,1244181114,1,240500200016,3,$95.10,$14.50,
10,121092,9260129395,13DEC2011,13DEC2011,1244181114,1,240500200122,2,$48.20,$11.50,
89,121118,9260116551,15DEC2011,15DEC2011,1244197366,1,240700200018,4,$75.20,$10.30,
5,121040,9260114570,26DEC2011,26DEC2011,1244296274,1,220101400130,2,$33.80,$5.70,
5,99999999,9260114570,15JAN2007,19JAN2007,1230080101,2,230100500026,1,$247.50,$109.55,
45,99999999,9260104847,20JAN2007,22JAN2007,1230106883,2,240600100080,1,$28.30,$8.55,
79,99999999,9260101874,02MAR2007,03MAR2007,1230333319,2,240100400005,1,$234.60,$115.95,
23,99999999,9260126679,03MAR2007,08MAR2007,1230338566,2,240800200062,1,$35.40,$16.15,
23,99999999,9260126679,03MAR2007,08MAR2007,1230338566,2,240800200063,2,$73.80,$16.85,
45,99999999,9260104847,09MAR2007,11MAR2007,1230371142,2,240500100004,2,$127.00,$28.00,
45,99999999,9260104847,09MAR2007,11MAR2007,1230371142,2,240500200003,1,$23.20,$11.10,
16,99999999,3940105865,24MAR2007,26MAR2007,1230450371,2,230100600018,2,$128.40,$32.20,
79,99999999,9260101874,24MAR2007,25MAR2007,1230453723,2,240500200056,1,$24.10,$11.55,
2788,99999999,9050100001,28MAR2007,30MAR2007,1230478006,2,230100100025,2,$60.60,$13.15,
12386,99999999,4750100001,02APR2007,03APR2007,1230503155,2,220101400310,1,$31.80,$14.20,
23,99999999,9260126679,18APR2007,23APR2007,1230591673,2,220200200024,3,$178.50,$32.25,
61,99999999,3940108887,24APR2007,29APR2007,1230619748,2,220200100092,1,$83.00,$41.60,
61,99999999,3940108887,24APR2007,29APR2007,1230619748,2,220200300005,3,$345.00,$52.35,
13,99999999,3940105189,28APR2007,03MAY2007,1230642273,2,230100500082,1,$126.10,$58.60,
14703,99999999,4750100002,08MAY2007,11MAY2007,1230699509,2,220100100044,1,$102.10,$48.65,
14703,99999999,4750100002,08MAY2007,11MAY2007,1230699509,2,220100400005,1,$81.30,$40.75,
79,99999999,9260101874,08MAY2007,09MAY2007,1230700421,2,230100100006,1,$176.00,$74.55,
79,99999999,9260101874,08MAY2007,09MAY2007,1230700421,2,230100500045,2,$2.60,$0.60,
79,99999999,9260101874,08MAY2007,09MAY2007,1230700421,2,230100500068,2,$3.40,$0.80,
928,99999999,9050100016,15MAY2007,19MAY2007,1230738723,2,230100600026,2,$237.20,$59.40,
19444,99999999,4750100001,16MAY2007,21MAY2007,1230744524,2,220100700024,1,$99.70,$47.45,
19444,99999999,4750100001,16MAY2007,21MAY2007,1230744524,2,220101000002,1,$17.70,$8.00,
544,99999999,9050100008,21MAY2007,22MAY2007,1230771337,2,230100500012,3,$221.70,$33.25,
88,99999999,9260100179,25MAY2007,28MAY2007,1230793366,2,240400200097,3,"$1,250.40",$124.20,
23,99999999,9260126679,27MAY2007,01JUN2007,1230804171,2,240500200073,3,$148.50,$20.65,
23,99999999,9260126679,03JUN2007,08JUN2007,1230841456,2,240700400024,2,$127.20,$33.15,
70108,99999999,2600100046,04JUL2007,05JUL2007,1231008713,2,240200200039,2,$42.40,$8.80,
2806,99999999,8010100089,04JUL2007,08JUL2007,1231014780,2,240100400043,4,"$1,064.00",$131.50,
13,99999999,3940105189,09JUL2007,14JUL2007,1231035308,2,230100600023,2,$146.80,$36.80,
61,99999999,3940108887,20JUL2007,25JUL2007,1231094514,2,230100500074,4,$544.00,$51.30,
61,99999999,3940108887,20JUL2007,25JUL2007,1231094514,2,230100600005,2,$259.60,$63.20,
111,99999999,1600102072,06AUG2007,08AUG2007,1231188317,2,220100900029,1,$30.80,$12.35,
70187,99999999,2600100035,13AUG2007,18AUG2007,1231227910,2,240200200013,3,"$1,266.00",$42.20,
16,99999999,3940105865,27AUG2007,04SEP2007,1231305521,2,220200100035,2,$125.20,$31.40,
16,99999999,3940105865,27AUG2007,29AUG2007,1231305531,2,220200100090,2,$177.20,$44.40,
2806,99999999,8010100089,28AUG2007,01SEP2007,1231316727,2,240100400076,2,$224.60,$68.60,
2806,99999999,8010100089,28AUG2007,01SEP2007,1231316727,2,240100400143,2,$330.00,$82.60,
61,99999999,3940108887,29AUG2007,03SEP2007,1231317443,2,230100700002,2,$440.00,$135.00,
19444,99999999,4750100001,01OCT2007,06OCT2007,1231500373,2,220101200006,1,$52.20,$20.95,
14703,99999999,4750100002,09OCT2007,12OCT2007,1231544990,2,220101400385,1,$24.80,$12.35,
70108,99999999,2600100046,22OCT2007,23OCT2007,1231614059,2,220101200020,1,$55.90,$24.20,
61,99999999,3940108887,23OCT2007,28OCT2007,1231619928,2,230100600036,1,$103.20,$50.40,
544,99999999,9050100008,12NOV2007,13NOV2007,1231734609,2,230100500091,1,$191.00,$80.45,
14703,99999999,4750100002,19NOV2007,22NOV2007,1231773634,2,220101400018,2,$45.60,$10.45,
5,99999999,9260114570,01DEC2007,03DEC2007,1231842118,2,240700300002,2,$43.98,$7.25,
70187,99999999,2600100035,05DEC2007,10DEC2007,1231861295,2,240200100154,2,$53.20,$11.95,
5,99999999,9260114570,21DEC2007,23DEC2007,1231950921,2,230100500093,2,$265.60,$55.85,
5,99999999,9260114570,21DEC2007,23DEC2007,1231950921,2,230100600030,1,$86.30,$41.40,
111,99999999,1600102072,22DEC2007,24DEC2007,1231952752,2,220100100298,2,$105.80,$26.55,
5,99999999,9260114570,31DEC2007,04JAN2008,1232007693,2,240100400044,1,$353.60,$174.75,
5,99999999,9260114570,31DEC2007,04JAN2008,1232007693,2,240100400049,1,$421.20,$212.95,
89,99999999,9260116551,01FEB2008,04FEB2008,1232217725,2,230100100062,2,$283.40,$61.00,
23,99999999,9260126679,18FEB2008,22FEB2008,1232331499,2,230100100051,2,$369.80,$78.15,
13,99999999,3940105189,25FEB2008,28FEB2008,1232373481,2,220200100229,1,$165.50,$82.85,
89,99999999,9260116551,31MAR2008,03APR2008,1232601472,2,230100500094,2,$173.20,$34.10,
54655,99999999,2600100013,03APR2008,06APR2008,1232618023,2,240200100183,1,$95.70,$47.95,
5,99999999,9260114570,19APR2008,23APR2008,1232728634,2,240100100403,1,$168.70,$76.55,
45,99999999,9260104847,08MAY2008,12MAY2008,1232857157,2,230100600030,2,$172.60,$41.40,
908,99999999,9050100023,13MAY2008,17MAY2008,1232889267,2,230100200054,3,$407.40,$61.80,
544,99999999,9050100008,20MAY2008,21MAY2008,1232936635,2,230100600030,2,$172.60,$41.40,
111,99999999,1600102072,22MAY2008,24MAY2008,1232946301,2,220101400061,2,$102.00,$23.30,
70187,99999999,2600100035,24JUN2008,29JUN2008,1233167161,2,240200100095,2,$237.00,$52.55,
19444,99999999,4750100001,06JUL2008,11JUL2008,1233248920,2,220100700042,2,$171.20,$36.35,
19444,99999999,4750100001,06JUL2008,11JUL2008,1233248920,2,220101400387,3,$37.80,$5.85,
13,99999999,3940105189,26JUL2008,29JUL2008,1233378724,2,240300100046,1,$14.10,$6.90,
89,99999999,9260116551,27AUG2008,30AUG2008,1233597637,2,240700400002,2,$67.20,$14.65,
5,99999999,9260114570,09SEP2008,13SEP2008,1233682051,2,240100100676,1,$43.40,$18.65,
111,99999999,1600102072,12OCT2008,14OCT2008,1233895201,2,220100100371,1,$25.60,$12.90,
111,99999999,1600102072,12OCT2008,14OCT2008,1233895201,2,220101400238,2,$113.80,$25.95,
544,99999999,9050100008,14OCT2008,15OCT2008,1233913196,2,230100400012,1,$29.30,$11.75,
19873,99999999,4750100001,27OCT2008,03NOV2008,1233998114,2,220100100101,1,$59.70,$29.95,
19873,99999999,4750100001,27OCT2008,03NOV2008,1233998114,2,220100400022,1,$98.90,$47.70,
54655,99999999,2600100013,02DEC2008,05DEC2008,1234235150,2,240200200060,2,$369.00,$73.85,
23,99999999,9260126679,08DEC2008,12DEC2008,1234279341,2,230100500092,1,$116.70,$48.60,
16,99999999,3940105865,12JAN2009,14JAN2009,1234538390,2,220200300015,1,$115.00,$52.40,
16,99999999,3940105865,17JAN2009,19JAN2009,1234588648,2,230100500101,1,$138.70,$62.50,
16,99999999,3940105865,17JAN2009,19JAN2009,1234588648,2,230100600024,1,$76.10,$38.15,
16,99999999,3940105865,24JAN2009,26JAN2009,1234659163,2,230100700008,1,$504.20,$245.80,
63,99999999,9260125492,24JAN2009,25JAN2009,1234665265,2,240100100063,2,$48.40,$9.75,
24,99999999,9260115784,22FEB2009,27FEB2009,1234958242,2,230100500016,1,$11.90,$5.40,
16,99999999,3940105865,24FEB2009,26FEB2009,1234972570,2,230100200048,1,$68.70,$34.45,
16,99999999,3940105865,25APR2009,27APR2009,1235591214,2,240400200022,1,$93.40,$38.95,
16,99999999,3940105865,25APR2009,27APR2009,1235591214,2,240400200036,1,$55.50,$25.10,
16,99999999,3940105865,27APR2009,29APR2009,1235611754,2,240400300033,2,$71.40,$14.35,
16,99999999,3940105865,27APR2009,29APR2009,1235611754,2,240400300035,2,$38.20,$7.70,
16,99999999,3940105865,10MAY2009,12MAY2009,1235744141,2,230100500081,2,$146.00,$30.35,
16,99999999,3940105865,10MAY2009,12MAY2009,1235744141,2,230100700009,3,"$1,687.50",$287.10,
24,99999999,9260115784,18MAY2009,24MAY2009,1235830338,2,220200100202,1,$92.00,$46.10,
24,99999999,9260115784,18MAY2009,24MAY2009,1235830338,2,220200200073,1,$145.90,$66.35,
12386,99999999,4750100001,31MAY2009,01JUN2009,1235963427,2,220100700024,3,$313.80,$49.80,
12386,99999999,4750100001,31MAY2009,01JUN2009,1235963427,2,220100900029,1,$31.40,$12.55,
908,99999999,9050100023,10JUN2009,14JUN2009,1236066649,2,230100300010,1,$46.70,$18.75,
26148,99999999,2600100010,17JUN2009,19JUN2009,1236128445,2,240200100053,2,$174.40,$44.95,
16,99999999,3940105865,17JUN2009,19JUN2009,1236128456,2,230100500006,2,$16.80,$3.45,
16,99999999,3940105865,17JUN2009,19JUN2009,1236128456,2,230100600016,2,$154.00,$38.60,
23,99999999,9260126679,22JUN2009,27JUN2009,1236183578,2,240500100026,2,$110.40,$24.50,
23,99999999,9260126679,22JUN2009,27JUN2009,1236183578,2,240500200007,3,$28.50,$4.55,
70108,99999999,2600100046,22JUL2009,02AUG2009,1236483576,2,240200200071,4,$74.80,$10.00,
908,99999999,9050100023,28OCT2009,01NOV2009,1237478988,2,230100200004,1,$99.90,$50.05,
1100,99999999,9050100008,31OCT2009,02NOV2009,1237507462,2,230100400025,3,$51.00,$6.60,
1100,99999999,9050100008,31OCT2009,02NOV2009,1237507462,2,230100700009,1,$568.10,$289.95,
10,99999999,9260129395,16NOV2009,21NOV2009,1237670443,2,240800200034,1,$74.80,$34.00,
10,99999999,9260129395,24NOV2009,29NOV2009,1237751376,2,240100400043,1,$279.30,$138.10,
29,99999999,1600103020,09DEC2009,14DEC2009,1237894107,2,220100700027,2,$119.00,$29.85,
70187,99999999,2600100035,09DEC2009,14DEC2009,1237894966,2,240200100050,2,$19.98,$6.65,30%
23,99999999,9260126679,12DEC2009,17DEC2009,1237928021,2,240800100074,3,$949.80,$126.70,
23,99999999,9260126679,12DEC2009,17DEC2009,1237928021,2,240800200037,3,$164.40,$23.75,
41,99999999,1600101527,06JAN2010,10JAN2010,1238161695,2,240100100477,2,$17.00,$3.30,
50,99999999,3940105781,14FEB2010,15FEB2010,1238474357,2,230100700011,2,$566.60,$116.85,
2806,99999999,8010100089,13MAR2010,17MAR2010,1238696385,2,240100100312,2,$36.20,$7.70,
928,99999999,9050100016,26MAR2010,30MAR2010,1238797437,2,230100100063,2,$767.80,$176.05,
14703,99999999,4750100002,28MAR2010,31MAR2010,1238812262,2,220100100309,1,$96.30,$48.25,
14703,99999999,4750100002,28MAR2010,31MAR2010,1238812262,2,220101400373,1,$51.80,$23.65,
70187,99999999,2600100035,03APR2010,08APR2010,1238856867,2,220101000002,1,$17.70,$8.00,
29,99999999,1600103020,17APR2010,21APR2010,1238968334,2,220100100025,1,$17.40,$8.80,
29,99999999,1600103020,19APR2010,23APR2010,1238985782,2,240100100703,1,$79.90,$34.30,
29,99999999,1600103020,12MAY2010,16MAY2010,1239172417,2,240100100148,2,$51.60,$10.95,
39,99999999,9260123099,12MAY2010,17MAY2010,1239179935,2,240700300002,1,$21.99,$7.25,
29,99999999,1600103020,18MAY2010,22MAY2010,1239220388,2,240100100184,1,$190.40,$88.80,
1100,99999999,9050100008,30MAY2010,01JUN2010,1239320891,2,230100200006,3,$279.30,$46.65,
29,99999999,1600103020,11JUN2010,15JUN2010,1239410348,2,220100800071,1,$32.80,$15.70,
41,99999999,1600101527,15JUN2010,19JUN2010,1239442095,2,210201000198,2,$120.20,$26.80,
16,99999999,3940105865,19JUL2010,20JUL2010,1239713046,2,230100500058,4,$66.80,$7.25,
16,99999999,3940105865,19JUL2010,20JUL2010,1239713046,2,230100500082,2,$252.20,$58.60,
16,99999999,3940105865,19JUL2010,20JUL2010,1239713046,2,230100600031,2,$177.00,$42.45,
13,99999999,3940105189,23JUL2010,28JUL2010,1239744161,2,240400200003,1,$6.20,$3.00,
13,99999999,3940105189,23JUL2010,28JUL2010,1239744161,2,240400300035,2,$38.20,$7.70,
1684,99999999,9050100008,01AUG2010,04AUG2010,1239821232,2,230100500013,2,$18.80,$4.75,
54655,99999999,2600100013,02AUG2010,05AUG2010,1239823829,2,240200200081,2,$214.60,$10.75,
16,99999999,3940105865,16AUG2010,17AUG2010,1239932984,2,220200200079,2,$285.80,$64.85,
16,99999999,3940105865,16AUG2010,17AUG2010,1239932984,2,220200300129,5,$406.00,$37.05,
53,99999999,1600103258,21AUG2010,23AUG2010,1239972644,2,220101400237,1,$102.90,$46.90,
544,99999999,9050100008,10SEP2010,11SEP2010,1240137702,2,230100300023,1,$36.00,$15.00,
29,99999999,1600103020,17SEP2010,21SEP2010,1240187143,2,240100400100,1,$154.60,$116.60,
908,99999999,9050100023,02OCT2010,06OCT2010,1240314947,2,230100600028,1,$96.70,$48.45,
29,99999999,1600103020,19OCT2010,23OCT2010,1240446608,2,220100100553,1,$35.00,$17.60,
29,99999999,1600103020,19OCT2010,23OCT2010,1240446608,2,220100700046,2,$305.80,$72.90,
50,99999999,3940105781,19OCT2010,20OCT2010,1240447572,2,230100200056,1,$270.00,$125.65,
29,99999999,1600103020,24OCT2010,28OCT2010,1240485814,2,220101400290,1,$74.80,$34.10,
50,99999999,3940105781,27OCT2010,28OCT2010,1240512744,2,240300100046,2,$28.80,$7.05,
2788,99999999,9050100001,05NOV2010,07NOV2010,1240588370,2,230100500082,1,$126.10,$58.60,
16,99999999,3940105865,07NOV2010,08NOV2010,1240599396,2,230100700002,1,$220.00,$135.00,
16,99999999,3940105865,07NOV2010,08NOV2010,1240599396,2,230100700004,1,$360.00,$199.00,
544,99999999,9050100008,29NOV2010,30NOV2010,1240782710,2,230100500066,1,$12.70,$6.10,
544,99999999,9050100008,29NOV2010,30NOV2010,1240782710,2,230100600005,1,$129.80,$63.20,
544,99999999,9050100008,08DEC2010,09DEC2010,1240856801,2,230100600028,2,$193.40,$48.45,
544,99999999,9050100008,08DEC2010,09DEC2010,1240856801,2,230100600039,1,$124.70,$59.65,
1100,99999999,9050100008,10DEC2010,12DEC2010,1240870047,2,230100100015,2,$213.80,$45.50,
16,99999999,3940105865,22DEC2010,23DEC2010,1240961599,2,230100200025,4,"$1,103.60",$125.25,
16,99999999,3940105865,22DEC2010,23DEC2010,1240961599,2,230100600015,1,$78.20,$39.20,
2806,99999999,8010100089,29JAN2011,08FEB2011,1241298131,2,240100400058,1,$37.40,$29.65,
70100,99999999,2600100015,09MAR2011,13MAR2011,1241645664,2,240200200020,1,$150.10,$14.00,
90,99999999,9260111614,02MAY2011,04MAY2011,1242140009,2,240100100434,1,$16.40,$8.05,
90,99999999,9260111614,02MAY2011,04MAY2011,1242140009,2,240100400128,1,$192.40,$89.90,
70187,99999999,2600100035,16MAY2011,21MAY2011,1242259863,2,240200100157,2,$706.20,$196.15,
89,99999999,9260116551,17JUN2011,21JUN2011,1242557584,2,240500200083,2,$134.60,$28.00,
2806,99999999,8010100089,18JUN2011,22JUN2011,1242568696,2,240100100029,2,$239.00,$51.70,
2806,99999999,8010100089,18JUN2011,22JUN2011,1242568696,2,240100400098,3,$755.40,$125.85,
70100,99999999,2600100015,20JUN2011,24JUN2011,1242578860,2,240200100173,4,"$1,937.20",$247.70,
90,99999999,9260111614,02JUL2011,04JUL2011,1242691897,2,240500100062,2,$110.20,$24.05,
2806,99999999,8010100089,19JUL2011,23JUL2011,1242848557,2,240100100312,3,$54.30,$7.70,
65,99999999,3940100176,03AUG2011,07AUG2011,1242977743,2,240400200012,2,$351.40,$75.95,
2806,99999999,8010100089,06AUG2011,10AUG2011,1243012144,2,240100100615,2,$25.80,$5.45,
2806,99999999,8010100089,06AUG2011,10AUG2011,1243012144,2,240100400083,2,$219.00,$54.70,
928,99999999,9050100016,04SEP2011,08SEP2011,1243269405,2,230100600030,1,$86.30,$41.40,
908,99999999,9050100023,11NOV2011,15NOV2011,1243887390,2,230100700008,1,$519.30,$253.20,
70187,99999999,2600100035,23NOV2011,28NOV2011,1243992813,2,220100100421,1,$8.20,$4.15,
2806,99999999,8010100089,30NOV2011,04DEC2011,1244066194,2,240100100159,1,$31.40,$13.90,
2806,99999999,8010100089,30NOV2011,04DEC2011,1244066194,2,240100100605,3,$144.60,$20.75,
70046,99999999,2600100017,02APR2007,03APR2007,1230500669,3,240200100131,2,$148.60,$41.35,
36,99999999,9260128237,18APR2007,20APR2007,1230591675,3,240500100039,1,$34.50,$15.40,
171,99999999,1600101555,01MAY2007,04MAY2007,1230657844,3,240100100646,1,$109.90,$46.80,
11171,99999999,2600100032,07MAY2007,09MAY2007,1230690733,3,240200100043,2,$282.40,$69.40,
17023,99999999,2600100021,20JUN2007,25JUN2007,1230931366,3,240200200007,2,$166.80,$8.35,
17023,99999999,2600100021,20JUN2007,25JUN2007,1230931366,3,240200200061,2,$261.80,$52.45,
171,99999999,1600101555,03JUL2007,06JUL2007,1231002241,3,220101200029,1,$52.30,$22.65,
36,99999999,9260128237,15JUL2007,17JUL2007,1231071449,3,240400200057,2,$257.00,$58.05,
36,99999999,9260128237,15JUL2007,17JUL2007,1231071449,3,240400200066,2,$27.60,$6.30,
3959,99999999,8010100151,06AUG2007,07AUG2007,1231194004,3,240100100610,2,$122.00,$27.55,
3959,99999999,8010100151,06AUG2007,07AUG2007,1231194004,3,240100400143,2,$330.00,$82.60,
52,99999999,9260116235,20AUG2007,26AUG2007,1231270767,3,230100600022,2,$168.20,$42.15,
36,99999999,9260128237,11SEP2007,13SEP2007,1231392762,3,230100600023,2,$146.80,$36.80,
36,99999999,9260128237,15SEP2007,17SEP2007,1231414059,3,240800200008,1,$150.25,$60.10,
70046,99999999,2600100017,23SEP2007,24SEP2007,1231453831,3,240200100052,1,$99.70,$51.40,
70046,99999999,2600100017,23SEP2007,24SEP2007,1231453831,3,240200200015,1,$24.00,$10.55,
52,99999999,9260116235,05OCT2007,11OCT2007,1231522431,3,240100100065,1,$34.70,$13.80,
11,99999999,3940108592,29OCT2007,03NOV2007,1231653765,3,230100200047,1,$72.70,$35.20,
1033,99999999,9050100001,12NOV2007,16NOV2007,1231734615,3,230100600005,1,$129.80,$63.20,
70210,99999999,2600100015,22DEC2007,23DEC2007,1231953192,3,240200100052,2,$199.40,$51.40,
19,99999999,3940106547,26DEC2007,30DEC2007,1231976710,3,240300100020,4,$56.40,$6.05,
19,99999999,3940106547,26DEC2007,30DEC2007,1231976710,3,240300100032,2,"$1,200.20",$300.00,
70046,99999999,2600100017,31DEC2007,01JAN2008,1232003930,3,240200100124,2,$49.00,$12.35,
2618,99999999,8010100125,25JAN2008,30JAN2008,1232173841,3,240100100581,1,$28.00,$11.55,
2618,99999999,8010100125,25JAN2008,30JAN2008,1232173841,3,240100400147,1,$248.30,$122.75,
70046,99999999,2600100017,05FEB2008,06FEB2008,1232241009,3,240200200039,1,$22.20,$9.20,
4,99999999,9260106519,02MAR2008,03MAR2008,1232410925,3,240800200030,1,$47.70,$18.80,
70201,99999999,2600100012,19MAR2008,24MAR2008,1232517885,3,240200100226,1,$183.90,$86.65,
4,99999999,9260106519,20MAR2008,21MAR2008,1232530384,3,240700200019,1,$16.90,$8.60,
4,99999999,9260106519,08APR2008,09APR2008,1232654929,3,240500100017,4,$214.00,$23.75,
4,99999999,9260106519,08APR2008,09APR2008,1232654929,3,240500100029,1,$58.90,$26.10,
11171,99999999,2600100032,11APR2008,13APR2008,1232672914,3,240200100101,2,$38.80,$10.20,
11171,99999999,2600100032,11APR2008,13APR2008,1232672914,3,240200200011,2,$271.40,$13.00,
9,99999999,3940106659,15APR2008,20APR2008,1232698281,3,230100600035,1,$29.40,$14.15,
41,99999999,1600101527,19APR2008,23APR2008,1232723799,3,210200600112,1,$21.80,$9.25,
52,99999999,9260116235,23MAY2008,24MAY2008,1232956741,3,230100500008,2,$76.00,$16.80,
14104,99999999,4750100001,06JUN2008,09JUN2008,1233049735,3,220101400216,2,$48.80,$11.20,
70059,99999999,2600100047,11JUL2008,15JUL2008,1233280857,3,220100100609,3,$173.70,$29.05,
2550,99999999,8010100009,10AUG2008,15AUG2008,1233484749,3,240100400098,2,$503.60,$125.85,
2550,99999999,8010100009,10AUG2008,15AUG2008,1233484749,3,240100400136,3,$272.70,$45.40,
70201,99999999,2600100012,15AUG2008,20AUG2008,1233514453,3,240200200060,3,$553.50,$73.85,
4,99999999,9260106519,19AUG2008,20AUG2008,1233543560,3,240500200083,3,$201.90,$28.00,
70210,99999999,2600100015,15DEC2008,16DEC2008,1234323012,3,240200100098,2,$29.20,$6.75,
70210,99999999,2600100015,15DEC2008,16DEC2008,1234323012,3,240200100101,2,$39.00,$10.30,
70210,99999999,2600100015,15DEC2008,16DEC2008,1234323012,3,240200200035,2,$196.00,$39.30,
36,99999999,9260128237,11JAN2009,14JAN2009,1234534069,3,240800100026,4,$525.20,$58.55,
171,99999999,1600101555,29JAN2009,02FEB2009,1234709803,3,220100100304,2,$122.60,$30.75,
70221,99999999,2600100019,16FEB2009,18FEB2009,1234891576,3,240200100226,1,$183.90,$86.65,
11171,99999999,2600100032,15MAR2009,17MAR2009,1235176942,3,240200100021,1,$2.70,$1.20,
11171,99999999,2600100032,15MAR2009,17MAR2009,1235176942,3,240200100246,1,$16.20,$7.90,
36,99999999,9260128237,23MAY2009,26MAY2009,1235881915,3,240700400004,2,$26.40,$5.95,
79,99999999,9260101874,27MAY2009,03JUN2009,1235926178,3,210200200022,2,$36.00,$7.05,
9,99999999,3940106659,07JUN2009,12JUN2009,1236028541,3,230100500056,2,$16.00,$3.50,
36,99999999,9260128237,15JUN2009,18JUN2009,1236113431,3,230100200066,2,$25.80,$5.45,
9,99999999,3940106659,10AUG2009,15AUG2009,1236673732,3,230100700008,3,"$1,542.60",$250.70,
9,99999999,3940106659,10AUG2009,15AUG2009,1236673732,3,230100700011,2,$550.20,$113.45,
70221,99999999,2600100019,12AUG2009,14AUG2009,1236694462,3,240200100056,2,$82.40,$19.90,
3959,99999999,8010100151,03SEP2009,04SEP2009,1236923123,3,240100100031,1,$3.70,$1.30,
70165,99999999,2600100006,08SEP2009,18SEP2009,1236965430,3,240200100050,2,$27.00,$6.65,
79,99999999,9260101874,27SEP2009,08OCT2009,1237165927,3,240500100057,2,$76.80,$17.10,
2618,99999999,8010100125,13OCT2009,18OCT2009,1237331045,3,240100100366,1,$16.30,$7.80,
171,99999999,1600101555,26OCT2009,30OCT2009,1237450174,3,220100800001,2,$77.20,$18.35,
171,99999999,1600101555,26OCT2009,30OCT2009,1237450174,3,220101400349,1,$11.90,$4.80,
65,99999999,3940100176,16NOV2009,22NOV2009,1237664026,3,230100200004,1,$99.90,$50.05,
9,99999999,3940106659,02DEC2009,07DEC2009,1237825036,3,240400300039,2,$39.20,$7.90,
36,99999999,9260128237,18DEC2009,21DEC2009,1237989406,3,230100100018,2,$318.20,$67.40,
46966,99999999,2600100011,21DEC2009,22DEC2009,1238013821,3,240200200026,3,$312.00,$41.65,
9,99999999,3940106659,25DEC2009,30DEC2009,1238053337,3,230100700008,1,$514.20,$250.70,
70210,99999999,2600100015,24JAN2010,25JAN2010,1238305578,3,240200100246,1,$16.20,$7.90,
19,99999999,3940106547,01FEB2010,06FEB2010,1238370259,3,230100600028,1,$96.70,$48.45,
19,99999999,3940106547,08FEB2010,13FEB2010,1238426415,3,230100700011,1,$283.30,$116.85,
19,99999999,3940106547,24FEB2010,01MAR2010,1238553101,3,240400200091,1,$217.00,$90.40,
3959,99999999,8010100151,04APR2010,06APR2010,1238872273,3,240100100434,1,$16.40,$8.05,
19,99999999,3940106547,21APR2010,26APR2010,1239003827,3,230100600016,1,$77.00,$38.60,
70221,99999999,2600100019,23APR2010,25APR2010,1239018454,3,240200100073,1,$22.30,$12.60,
70221,99999999,2600100019,23APR2010,25APR2010,1239018454,3,240200200068,1,$313.80,$159.15,
20,99999999,9260118934,18MAY2010,24MAY2010,1239226632,3,220200100190,3,$190.50,$29.95,
17023,99999999,2600100021,22JUN2010,27JUN2010,1239498112,3,240200200044,2,$97.80,$19.60,
65,99999999,3940100176,28JUL2010,03AUG2010,1239785436,3,230100600031,4,$354.00,$42.45,
71,99999999,9260124130,30AUG2010,05SEP2010,1240051245,3,230100100028,1,$250.90,$104.20,
71,99999999,9260124130,30AUG2010,05SEP2010,1240051245,3,230100200022,3,$359.10,$56.90,
70165,99999999,2600100006,15SEP2010,16SEP2010,1240173354,3,240200100225,2,$306.20,$77.85,
19,99999999,3940106547,03NOV2010,08NOV2010,1240568966,3,220200100226,1,$133.20,$66.70,
24,99999999,9260115784,02JAN2011,05JAN2011,1241054779,3,240800200021,2,$195.60,$42.45,
53,99999999,1600103258,06JAN2011,09JAN2011,1241086052,3,210200500002,3,$37.80,$5.70,
3959,99999999,8010100151,25JAN2011,26JAN2011,1241263172,3,240100400004,1,$102.40,$51.15,
3959,99999999,8010100151,25JAN2011,26JAN2011,1241263172,3,240100400062,1,$113.20,$54.00,
27,99999999,9260105670,28JAN2011,02FEB2011,1241286432,3,240800200009,2,$174.40,$34.90,
24,99999999,9260115784,06MAR2011,09MAR2011,1241623505,3,240700400017,1,$46.90,$21.95,
27,99999999,9260105670,09MAR2011,14MAR2011,1241652707,3,240700400017,3,$140.70,$21.95,
17023,99999999,2600100021,25MAR2011,30MAR2011,1241789227,3,240200100211,1,$121.00,$60.65,
46966,99999999,2600100011,07APR2011,08APR2011,1241909303,3,240200200081,1,$107.30,$10.75,
27,99999999,9260105670,09APR2011,14APR2011,1241930625,3,220200100012,1,$58.70,$28.25,
27,99999999,9260105670,09APR2011,14APR2011,1241930625,3,220200100171,1,$56.30,$31.05,
27,99999999,9260105670,09APR2011,14APR2011,1241930625,3,220200200014,1,$90.00,$40.90,
31,99999999,9260128428,25APR2011,29APR2011,1242076538,3,220200200022,1,$57.30,$33.90,
5,99999999,9260114570,02MAY2011,07MAY2011,1242140006,3,240100100159,1,$31.40,$13.90,
5,99999999,9260114570,04MAY2011,09MAY2011,1242159212,3,230100200029,2,$446.60,$101.65,
2550,99999999,8010100009,04MAY2011,09MAY2011,1242161468,3,240100100232,3,$9.60,$1.30,
2550,99999999,8010100009,04MAY2011,09MAY2011,1242161468,3,240100400080,1,$222.00,$110.95,
46966,99999999,2600100011,05MAY2011,06MAY2011,1242162201,3,240200100053,2,$174.40,$44.95,
1033,99999999,9050100001,06MAY2011,10MAY2011,1242173926,3,230100600026,3,$355.80,$59.40,
70079,99999999,2600100039,11MAY2011,14MAY2011,1242214574,3,240200100230,2,$29.40,$6.65,
27,99999999,9260105670,05JUN2011,10JUN2011,1242449327,3,240100100679,2,$91.60,$19.50,
34,99999999,9260111379,07JUN2011,13JUN2011,1242467585,3,240100100690,2,$403.00,$86.10,
34,99999999,9260111379,07JUN2011,13JUN2011,1242467585,3,240100100737,5,$239.50,$20.65,
31,99999999,9260128428,08JUN2011,12JUN2011,1242477751,3,220200200036,2,$120.40,$27.40,
31,99999999,9260128428,08JUN2011,12JUN2011,1242477751,3,220200200077,2,$277.60,$63.15,
17023,99999999,2600100021,13JUN2011,18JUN2011,1242515373,3,240200100057,4,$168.00,$20.25,
70165,99999999,2600100006,15JUN2011,22JUN2011,1242534503,3,240200100118,4,$702.00,$89.55,
24,99999999,9260115784,11JUL2011,14JUL2011,1242773202,3,240600100185,2,$70.20,$15.60,
27,99999999,9260105670,12JUL2011,17JUL2011,1242782701,3,240500200081,3,$403.50,$56.05,
70165,99999999,2600100006,28JUL2011,29JUL2011,1242923327,3,240200100081,2,$16.60,$3.65,
53,99999999,1600103258,11AUG2011,14AUG2011,1243049938,3,220100300001,2,$180.40,$38.30,
70201,99999999,2600100012,24AUG2011,29AUG2011,1243165497,3,240200100052,2,$201.20,$51.90,
70201,99999999,2600100012,24AUG2011,29AUG2011,1243165497,3,240200100116,3,$658.50,$124.90,
70201,99999999,2600100012,24AUG2011,29AUG2011,1243165497,3,240200100207,2,$215.80,$53.35,
27,99999999,9260105670,05SEP2011,10SEP2011,1243279343,3,240500200082,2,$78.40,$16.45,
24,99999999,9260115784,25SEP2011,28SEP2011,1243462945,3,240600100102,1,$46.10,$19.70,
11,99999999,3940108592,28SEP2011,02OCT2011,1243485097,3,220200100002,2,$78.20,$19.65,
70079,99999999,2600100039,16OCT2011,19OCT2011,1243644877,3,240200100098,1,$14.60,$6.75,
14104,99999999,4750100001,03DEC2011,06DEC2011,1244086685,3,220100100516,2,$80.40,$20.20,
14104,99999999,4750100001,03DEC2011,06DEC2011,1244086685,3,220100100631,2,$114.20,$28.65,
;;;;
proc sort data=certadv.orderfact out=certadv.stcoup nodupkey;
by CustomerID;
run;
data certadv.stcoup;
   set certadv.stcoup;
   keep CustomerID OrderDate DeliveryDate OrderID OrderType ProductID Quantity TotalRetailPrice CostPricePerUnit;
run;
data certadv.col1;
input X @3 A $3-4;
datalines;
1 a
1 a
1 b
2 c
3 v
4 e
6 g
;;;;
data certadv.col2;
input X @3 B $3-4;
datalines;
1 x
2 y
3 z
3 v
5 w
;;;;
data certadv.flightcrewnew;
    infile datalines dsd truncover;
	input EmpID:$4. MonthsofService:32.;
	label EmpID='Emp ID';
datalines;
1928,3
1407,5
1574,6
1777,2
;;;;
data certadv.STAFF;
  infile datalines dsd truncover;
  input EmployeeID:12. StartDate:DATE9. EndDate:DATE9. JobTitle:$25. Salary:DOLLAR12. Gender:$1. BirthDate:DATE9. EmpHireDate:DATE9. EmpTermDate:DATE9. ManagerID:12.;
  format EmployeeID 12. StartDate DATE9. EndDate DATE9. Salary DOLLAR12. BirthDate DATE9. EmpHireDate DATE9. EmpTermDate DATE9. ManagerID 12.;
  label EmployeeID="Employee ID" StartDate="Start Date" EndDate="End Date" JobTitle="Employee Job Title" Salary="Employee Annual Salary" Gender="Employee Gender" BirthDate="Employee Birth Date" EmpHireDate="Employee Hire Date" EmpTermDate="Employee Termination Date" ManagerID="Manager for Employee";
datalines4;
120101,01JUL2007,31DEC9999,Director,"$163,040",M,18AUG1980,01JUL2007,,120261
120102,01JUN1993,31DEC9999,Sales Manager,"$108,255",M,11AUG1973,01JUN1993,,120101
120103,01JAN1978,31DEC9999,Sales Manager,"$87,975",M,22JAN1953,01JAN1978,,120101
120104,01JAN1985,31DEC9999,Administration Manager,"$46,230",F,11MAY1958,01JAN1985,,120101
120105,01MAY2003,31DEC9999,Secretary I,"$27,110",F,21DEC1978,01MAY2003,,120101
120106,01JAN1978,31DEC9999,Office Assistant II,"$26,960",M,23DEC1948,01JAN1978,,120104
120107,01FEB1978,31DEC9999,Office Assistant III,"$30,475",F,21JAN1953,01FEB1978,,120104
120108,01AUG2010,31DEC9999,Warehouse Assistant II,"$27,660",F,23FEB1988,01AUG2010,,120104
120109,01OCT2010,31DEC9999,Warehouse Assistant I,"$26,495",F,15DEC1990,01OCT2010,,120104
120110,01NOV1983,31DEC9999,Warehouse Assistant III,"$28,615",M,20NOV1953,01NOV1983,,120104
120111,01NOV1978,31DEC9999,Security Guard II,"$26,895",M,23JUL1953,01NOV1978,,120104
120112,01JUL1994,31DEC9999,Security Guard I,"$26,550",F,17FEB1973,01JUL1994,,120104
120113,01JAN1978,31DEC9999,Security Guard II,"$26,870",F,10MAY1948,01JAN1978,,120104
120114,01JAN1978,31DEC9999,Security Manager,"$31,285",F,08FEB1948,01JAN1978,,120104
120115,01AUG2009,31DEC9999,Service Assistant I,"$26,500",M,08MAY1988,01AUG2009,,120104
120116,01FEB1984,31DEC9999,Service Assistant II,"$29,250",M,13JUN1963,01FEB1984,,120104
120117,01APR1990,31DEC9999,Cabinet Maker III,"$31,670",M,11SEP1968,01APR1990,,120104
120118,01JUL1988,31DEC9999,Cabinet Maker II,"$28,090",M,03JUN1963,01JUL1988,,120104
120119,01JAN2002,31DEC9999,Electrician IV,"$30,255",M,21DEC1973,01JAN2002,,120104
120120,01JAN1978,31DEC9999,Electrician II,"$27,645",F,05MAY1948,01JAN1978,,120104
120121,01JAN1978,31DEC9999,Sales Rep. II,"$26,600",F,02AUG1948,01JAN1978,,120102
120122,01JUL1982,31DEC9999,Sales Rep. II,"$27,475",F,27JUL1958,01JUL1982,,120102
120123,01OCT1989,31JAN2009,Sales Rep. I,"$26,190",F,28SEP1968,01OCT1989,31JAN2009,120102
120124,01MAR1983,31DEC9999,Sales Rep. I,"$26,480",M,13MAY1963,01MAR1983,,120102
120125,01MAR1983,31JUL2008,Sales Rep. IV,"$32,040",M,06DEC1958,01MAR1983,31JUL2008,120102
120126,01AUG2010,31DEC9999,Sales Rep. II,"$26,780",M,20SEP1992,01AUG2010,,120102
120127,01NOV2002,31DEC9999,Sales Rep. II,"$28,100",F,04JAN1983,01NOV2002,,120102
120128,01NOV2010,31DEC9999,Sales Rep. IV,"$30,890",F,14JUL1990,01NOV2010,,120102
120129,01OCT1989,31MAR2007,Sales Rep. III,"$30,070",M,22NOV1968,01OCT1989,31MAR2007,120102
120130,01MAY2010,31DEC9999,Sales Rep. I,"$26,955",M,14DEC1988,01MAY2010,,120102
120131,01JAN2007,31DEC9999,Sales Rep. I,"$26,910",M,25SEP1983,01JAN2007,,120102
120132,01OCT1982,31DEC9999,Sales Rep. III,"$28,525",F,05APR1953,01OCT1982,,120102
120133,01OCT2010,31DEC9999,Sales Rep. II,"$27,440",F,22APR1990,01OCT2010,,120102
120134,01JAN1978,30JUN2010,Sales Rep. II,"$28,015",M,06JUN1953,01JAN1978,30JUN2010,120102
120135,01OCT2001,30APR2008,Sales Rep. IV,"$32,490",M,26JAN1973,01OCT2001,30APR2008,120102
120136,01FEB2007,31DEC9999,Sales Rep. I,"$26,605",M,16SEP1983,01FEB2007,,120102
120137,01MAR2010,31DEC9999,Sales Rep. III,"$29,715",F,12MAR1983,01MAR2010,,120102
120138,01JUL2010,31DEC9999,Sales Rep. I,"$25,795",F,11JUL1983,01JUL2010,,120102
120139,01SEP2010,31DEC9999,Sales Rep. II,"$26,810",F,18AUG1990,01SEP2010,,120102
120140,01OCT2010,31DEC9999,Sales Rep. I,"$26,970",M,03AUG1992,01OCT2010,,120103
120141,01MAY2010,31DEC9999,Sales Rep. II,"$27,465",F,12MAR1992,01MAY2010,,120103
120142,01JUL2010,31DEC9999,Sales Rep. III,"$29,695",M,14JUN1990,01JUL2010,,120103
120143,01OCT1986,31DEC9999,Sales Rep. II,"$26,790",M,17MAY1963,01OCT1986,,120103
120144,01OCT2010,31DEC9999,Sales Rep. III,"$30,265",M,07MAR1990,01OCT2010,,120103
120145,01JUN1989,31DEC9999,Sales Rep. II,"$26,060",M,22JAN1968,01JUN1989,,120103
120146,01AUG1984,30SEP2009,Sales Rep. I,"$25,985",M,02OCT1963,01AUG1984,30SEP2009,120103
120147,01OCT2010,31DEC9999,Sales Rep. II,"$26,580",F,19JAN1992,01OCT2010,,120103
120148,01JUN1982,31DEC9999,Sales Rep. III,"$28,480",M,13SEP1953,01JUN1982,,120103
120149,01JAN1997,31DEC9999,Sales Rep. I,"$26,390",F,21NOV1978,01JAN1997,,120103
120150,01AUG1986,30APR2008,Sales Rep. III,"$29,965",M,09JUL1958,01AUG1986,30APR2008,120103
120151,01JAN1978,31DEC9999,Sales Rep. II,"$26,520",F,21NOV1948,01JAN1978,,120103
120152,01APR2009,31DEC9999,Sales Rep. I,"$26,515",M,01MAY1983,01APR2009,,120102
120153,01JAN2002,31JAN2010,Sales Rep. I,"$27,260",F,07MAY1983,01JAN2002,31JAN2010,120102
120154,01JAN1978,31DEC9999,Sales Rep. III,"$30,490",F,20JUL1948,01JAN1978,,120102
120155,01APR2010,31DEC9999,Sales Rep. III,"$29,990",F,22APR1988,01APR2010,,120102
120156,01MAR2010,31DEC9999,Sales Rep. I,"$26,445",F,01SEP1992,01MAR2010,,120102
120157,01DEC2010,31DEC9999,Sales Rep. II,"$27,860",M,21FEB1990,01DEC2010,,120102
120158,01JUL1991,31AUG2009,Sales Rep. III,"$36,605",M,14JUL1968,01JUL1991,31AUG2009,120102
120159,01JUL1990,31DEC9999,Sales Rep. IV,"$30,765",F,24FEB1968,01JUL1990,,120102
120160,01OCT1978,31DEC9999,Sales Rep. I,"$27,115",M,09SEP1958,01OCT1978,,120102
120161,01OCT2010,31DEC9999,Sales Rep. III,"$30,785",F,07MAR1992,01OCT2010,,120102
120162,01FEB2010,31DEC9999,Sales Rep. I,"$27,215",M,05SEP1992,01FEB2010,,120102
120163,01JAN1995,31DEC9999,Sales Rep. II,"$26,735",M,22MAY1968,01JAN1995,,120102
120164,01FEB1986,31DEC9999,Sales Rep. II,"$27,450",F,26NOV1963,01FEB1986,,120102
120165,01MAR2010,31DEC9999,Sales Rep. I,"$27,050",M,19MAR1988,01MAR2010,,120102
120166,01JAN1978,31AUG2010,Sales Rep. IV,"$30,660",M,14JUN1948,01JAN1978,31AUG2010,120102
120167,01FEB1978,31MAR2010,Sales Rep. I,"$25,185",F,04MAY1958,01FEB1978,31MAR2010,120102
120168,01NOV2010,31DEC9999,Sales Rep. I,"$25,275",F,24MAR1988,01NOV2010,,120102
120169,01MAY2010,31DEC9999,Sales Rep. III,"$28,135",M,02JAN1988,01MAY2010,,120102
120170,01OCT1996,31OCT2010,Sales Rep. III,"$28,830",M,25FEB1978,01OCT1996,31OCT2010,120102
120171,01SEP2010,31DEC9999,Sales Rep. II,"$26,205",F,19JUL1988,01SEP2010,,120102
120172,01JAN1978,31DEC9999,Sales Rep. III,"$28,345",M,01APR1948,01JAN1978,,120102
120173,01JUN1981,31JUL2008,Sales Rep. I,"$26,715",M,23FEB1958,01JUN1981,31JUL2008,120102
120174,01JAN1978,30OCT2009,Sales Rep. I,"$26,850",F,10JAN1948,01JAN1978,30OCT2009,120102
120175,01OCT2010,31DEC9999,Sales Rep. I,"$25,745",M,18AUG1992,01OCT2010,,120102
120176,01NOV2010,31DEC9999,Sales Rep. I,"$26,095",M,09NOV1990,01NOV2010,,120102
120177,01FEB2002,31DEC9999,Sales Rep. III,"$28,745",F,05APR1983,01FEB2002,,120102
120178,01APR1978,31DEC9999,Sales Rep. II,"$26,165",M,23NOV1958,01APR1978,,120102
120179,01JAN2008,31AUG2008,Sales Rep. III,"$28,510",M,15MAR1978,01JAN2008,31AUG2008,120102
120180,01DEC1982,31DEC9999,Sales Rep. II,"$26,970",M,27JUN1958,01DEC1982,,120102
120181,01DEC2010,31MAR2011,Temp. Sales Rep.,"$27,065",F,28NOV1992,01DEC2010,31MAR2011,120103
120182,01DEC2010,31DEC2010,Temp. Sales Rep.,"$25,020",M,05OCT1988,01DEC2010,31DEC2010,120103
120183,01DEC2010,31DEC2010,Temp. Sales Rep.,"$26,910",M,10SEP1973,01DEC2010,31DEC2010,120103
120184,01DEC2010,30APR2011,Temp. Sales Rep.,"$25,820",M,01DEC1953,01DEC2010,30APR2011,120103
120185,01DEC2010,31JAN2011,Temp. Sales Rep.,"$25,080",F,07APR1978,01DEC2010,31JAN2011,120103
120186,01DEC2010,30JUN2011,Temp. Sales Rep.,"$26,795",F,19APR1983,01DEC2010,30JUN2011,120103
120187,01DEC2010,31MAY2011,Temp. Sales Rep.,"$26,665",F,10DEC1988,01DEC2010,31MAY2011,120103
120188,01DEC2010,31DEC2010,Temp. Sales Rep.,"$26,715",F,01MAR1958,01DEC2010,31DEC2010,120103
120189,01DEC2010,31MAR2011,Temp. Sales Rep.,"$25,180",M,03JUL1988,01DEC2010,31MAR2011,120103
120190,01NOV2008,30APR2009,Trainee,"$24,100",M,05DEC1988,01NOV2008,30APR2009,120103
120191,01JAN2007,30JUN2007,Trainee,"$24,015",F,17JAN1963,01JAN2007,30JUN2007,120103
120192,01JUN2009,30NOV2009,Trainee,"$26,185",M,08MAY1988,01JUN2009,30NOV2009,120103
120193,01SEP2009,28FEB2010,Trainee,"$24,515",M,06DEC1988,01SEP2009,28FEB2010,120103
120194,01FEB2009,31JUL2009,Trainee,"$25,985",M,23SEP1988,01FEB2009,31JUL2009,120103
120195,01JUL2010,31DEC2010,Trainee,"$24,990",F,25DEC1988,01JUL2010,31DEC2010,120103
120196,01JAN2007,30JUN2007,Trainee,"$24,025",F,31JAN1988,01JAN2007,30JUN2007,120103
120197,01JAN2007,30JUN2007,Trainee,"$25,580",F,08AUG1958,01JAN2007,30JUN2007,120103
120198,01DEC2010,31DEC9999,Sales Rep. III,"$28,025",F,21JAN1992,01DEC2010,,120103
120259,01SEP1993,31DEC9999,Chief Executive Officer,"$433,800",M,25JAN1968,01SEP1993,,
120260,01NOV1988,31DEC9999,Chief Marketing Officer,"$207,885",F,02DEC1968,01NOV1988,,120259
120261,01AUG1991,31DEC9999,Chief Sales Officer,"$243,190",M,21FEB1973,01AUG1991,,120259
120262,01SEP1992,31DEC9999,Chief Financial Officer,"$268,455",M,21OCT1973,01SEP1992,,120259
120263,01OCT1987,31DEC2007,Financial Analyst III,"$42,605",M,10FEB1968,01OCT1987,31DEC2007,120262
120264,01DEC2010,31DEC9999,Financial Analyst II,"$37,510",F,23JAN1988,01DEC2010,,120262
120265,01JAN1978,31DEC2006,Auditor III,"$51,950",F,04OCT1948,01JAN1978,31DEC2006,120262
120266,01APR1993,31DEC9999,Secretary IV,"$31,750",F,01JUL1973,01APR1993,,120259
120267,01FEB2007,31DEC9999,Secretary III,"$28,585",F,02JUN1990,01FEB2007,,120259
120268,01MAY2001,31DEC9999,Senior Strategist,"$76,105",M,01SEP1978,01MAY2001,,120260
120269,01JAN1978,30APR2008,Strategist II,"$52,540",F,27SEP1948,01JAN1978,30APR2008,120260
120270,01JAN1978,31DEC9999,Concession Director,"$48,435",M,25MAR1958,01JAN1978,,120261
120271,01SEP1990,31DEC9999,Concession Manager,"$43,635",F,06AUG1968,01SEP1990,,120270
120272,01JAN1978,31DEC9999,Concession Consultant II,"$34,390",M,15MAR1948,01JAN1978,,120271
120273,01MAR2010,31DEC9999,Concession Assistant III,"$28,455",F,07JUN1990,01MAR2010,,120271
120274,01DEC1997,31DEC9999,Concession Assistant I,"$26,840",F,09JAN1968,01DEC1997,,120271
120275,01OCT1988,31DEC9999,Concession Consultant II,"$32,195",F,27DEC1963,01OCT1988,,120271
120276,01JAN1978,31MAY2007,Concession Assistant II,"$28,090",M,16DEC1948,01JAN1978,31MAY2007,120271
120277,01MAY2008,31MAY2009,Concession Consultant I,"$32,645",F,16AUG1992,01MAY2008,31MAY2009,120271
120278,01AUG2010,31DEC9999,Concession Assistant III,"$27,685",M,17DEC1990,01AUG2010,,120271
120279,01MAY2000,31DEC9999,Concession Consultant I,"$32,925",F,20OCT1973,01MAY2000,,120271
120280,01MAY1992,30JUN2006,Concession Consultant III,"$36,930",F,11NOV1968,01MAY1992,30JUN2006,120271
120656,01MAR2003,31DEC9999,Logistics Coordinator II,"$42,570",F,28JAN1978,01MAR2003,,120660
120657,01NOV1994,31DEC9999,Logistics Coordinator I,"$36,110",F,07JAN1968,01NOV1994,,120660
120658,01FEB1985,31DEC9999,Logistics Coordinator II,"$42,485",M,20DEC1958,01FEB1985,,120660
120659,01JAN1978,31DEC9999,Director,"$161,290",M,16JUL1953,01JAN1978,,120259
120660,01MAR2009,31DEC9999,Logistics Manager,"$61,125",M,06JUN1982,01MAR2009,,120659
120661,01JAN1988,30JUN2007,Senior Logistics Manager,"$85,495",F,27NOV1958,01JAN1988,30JUN2007,120659
120662,01NOV2010,31DEC9999,Secretary II,"$27,045",M,25JUN1992,01NOV2010,,120659
120663,01MAR2001,31DEC9999,Pricing Manager,"$56,385",F,26MAR1973,01MAR2001,,120659
120664,01MAY1979,31DEC9999,Pricing Specialist,"$47,605",M,18FEB1958,01MAY1979,,120663
120665,01MAR2006,31DEC9999,Senior Logistics Manager,"$80,070",F,24OCT1978,01MAR2006,,120659
120666,01DEC1995,30APR2008,Logistics Manager,"$64,555",M,22JUN1973,01DEC1995,30APR2008,120659
120667,01FEB2010,31DEC9999,Office Assistant III,"$29,980",M,21JUN1983,01FEB2010,,120666
120668,01DEC1982,31DEC9999,Services Manager,"$47,785",M,23OCT1953,01DEC1982,,120659
120669,01JAN1978,31DEC9999,Services Assistant IV,"$36,370",M,23JUL1948,01JAN1978,,120668
120670,01JAN1978,31DEC2006,Shipping Manager,"$65,420",M,26MAR1948,01JAN1978,31DEC2006,120659
120671,01FEB1987,31DEC9999,Shipping Agent III,"$40,080",M,27MAY1958,01FEB1987,,120670
120672,01MAR1996,31DEC9999,Shipping Manager,"$60,980",M,25AUG1968,01MAR1996,,120659
120673,01JAN1978,31DEC9999,Shipping Agent II,"$35,935",F,27JUN1948,01JAN1978,,120672
120677,01FEB1997,31DEC9999,Shipping Manager,"$65,555",F,02SEP1973,01FEB1997,,120659
120678,01MAY1982,31AUG2007,Shipping Agent III,"$40,035",F,12JAN1953,01MAY1982,31AUG2007,120677
120679,01JUL2006,31DEC9999,Shipping Manager,"$46,190",F,07NOV1980,01JUL2006,,120659
120680,01MAY1995,31DEC9999,Shipping Agent I,"$27,295",F,25AUG1973,01MAY1995,,120679
120681,01APR2008,31DEC9999,Shipping Agent II,"$30,950",M,12AUG1983,01APR2008,,120679
120682,01APR2000,31DEC9999,Shipping Agent I,"$26,760",F,20DEC1973,01APR2000,,120679
120683,01JAN1978,28FEB2007,Shipping Agent III,"$36,315",F,12NOV1958,01JAN1978,28FEB2007,120679
120684,01NOV2010,31DEC9999,Warehouse Assistant I,"$26,960",F,26NOV1990,01NOV2010,,120679
120685,01NOV2010,31DEC9999,Warehouse Assistant I,"$25,130",F,01MAR1988,01NOV2010,,120679
120686,01JAN1978,31DEC9999,Warehouse Assistant II,"$26,690",F,07MAY1948,01JAN1978,,120679
120687,01AUG2008,31JAN2009,Warehouse Assistant I,"$26,800",F,25MAY1983,01AUG2008,31JAN2009,120679
120688,01JAN1978,31AUG2006,Warehouse Assistant I,"$25,905",F,25DEC1953,01JAN1978,31AUG2006,120679
120689,01JUL2010,31DEC9999,Warehouse Assistant III,"$27,780",F,20JUL1983,01JUL2010,,120679
120690,01DEC2008,31DEC9999,Warehouse Assistant I,"$25,185",F,17JAN1988,01DEC2008,,120679
120691,01JAN1978,31DEC9999,Shipping Manager,"$49,240",M,15SEP1948,01JAN1978,,120659
120692,01APR1986,31DEC9999,Shipping Agent II,"$32,485",M,22NOV1958,01APR1986,,120691
120693,01JUN1983,31DEC9999,Shipping Agent I,"$26,625",M,02MAY1963,01JUN1983,,120691
120694,01APR2010,31DEC9999,Warehouse Assistant I,"$27,365",F,16AUG1992,01APR2010,,120691
120695,01JUL1993,31JUL2010,Warehouse Assistant II,"$28,180",M,13JUL1968,01JUL1993,31JUL2010,120691
120696,01MAR1978,31MAR2010,Warehouse Assistant I,"$26,615",M,14AUG1958,01MAR1978,31MAR2010,120691
120697,01JUN2010,31DEC9999,Warehouse Assistant IV,"$29,625",F,27JUN1992,01JUN2010,,120691
120698,01AUG1980,28FEB2009,Warehouse Assistant I,"$26,160",M,17MAY1958,01AUG1980,28FEB2009,120691
120710,01JAN2002,31DEC9999,Business Analyst II,"$54,840",M,24NOV1978,01JAN2002,,120719
120711,01MAR1998,31DEC9999,Business Analyst III,"$59,130",F,28MAY1973,01MAR1998,,120719
120712,01JAN1978,31DEC9999,Marketing Manager,"$63,640",F,12JUN1953,01JAN1978,,120719
120713,01JAN1978,31DEC9999,Marketing Assistant III,"$31,630",M,23FEB1948,01JAN1978,,120712
120714,01SEP2002,31DEC9999,Marketing Manager,"$62,625",M,04APR1980,01SEP2002,,120719
120715,01FEB2009,31DEC9999,Marketing Assistant II,"$28,535",F,12JUN1983,01FEB2009,,120714
120716,01AUG1997,31DEC9999,Events Manager,"$53,015",M,24JUL1978,01AUG1997,,120719
120717,01AUG1985,31DEC9999,Marketing Assistant II,"$30,155",M,09JAN1958,01AUG1985,,120716
120718,01MAY1994,31DEC9999,Marketing Assistant II,"$29,190",M,08JUL1968,01MAY1994,,120716
120719,01FEB2000,31DEC9999,Senior Marketing Manager,"$87,420",F,22JAN1973,01FEB2000,,120260
120720,01APR1996,31DEC9999,Corp. Comm. Manager,"$46,580",M,07MAY1968,01APR1996,,120719
120721,01JAN1978,31DEC9999,Marketing Assistant II,"$29,870",F,21OCT1948,01JAN1978,,120720
120722,01OCT1989,31DEC9999,Corp. Comm. Specialist I,"$32,460",M,22SEP1963,01OCT1989,,120720
120723,01JAN1978,31DEC9999,Corp. Comm. Specialist II,"$33,950",F,10AUG1953,01JAN1978,,120720
120724,01APR1996,31DEC9999,Marketing Manager,"$63,705",M,27JAN1968,01APR1996,,120719
120725,01JUN2008,31DEC2008,Marketing Assistant II,"$29,970",M,24OCT1983,01JUN2008,31DEC2008,120724
120726,01SEP2010,31DEC9999,Marketing Assistant I,"$27,380",F,01JUL1992,01SEP2010,,120724
120727,01JUN1990,31DEC9999,Marketing Assistant IV,"$34,925",M,25JUN1968,01JUN1990,,120724
120728,01JAN1986,31DEC9999,Purchasing Agent II,"$35,070",F,04DEC1958,01JAN1986,,120735
120729,25APR2007,23SEP2009,Purchasing Agent I,"$31,495",F,03APR1992,25APR2007,23SEP2009,120735
120730,01OCT1992,31DEC9999,Purchasing Agent I,"$30,195",M,16DEC1968,01OCT1992,,120735
120731,01SEP1987,31DEC9999,Purchasing Agent II,"$34,150",M,15MAR1963,01SEP1987,,120735
120732,01JAN1978,31DEC9999,Purchasing Agent III,"$35,870",M,14AUG1953,01JAN1978,,120736
120733,01NOV1994,31DEC9999,Purchasing Agent I,"$31,760",M,03APR1968,01NOV1994,,120736
120734,01MAR2010,31DEC9999,Purchasing Agent III,"$34,270",M,26APR1983,01MAR2010,,120736
120735,01MAY1982,31DEC9999,Purchasing Manager,"$61,985",F,13JUN1958,01MAY1982,,120261
120736,01OCT1995,31DEC9999,Purchasing Manager,"$63,985",F,27NOV1968,01OCT1995,,120261
120737,01NOV1992,31DEC9999,Purchasing Manager,"$63,605",F,28MAR1963,01NOV1992,,120261
120738,01JAN1978,31DEC9999,Purchasing Agent I,"$30,025",F,06JUL1953,01JAN1978,,120737
120739,01MAY2010,31DEC9999,Purchasing Agent III,"$36,970",M,07AUG1990,01MAY2010,,120737
120740,01JAN1978,31AUG2007,Purchasing Agent II,"$35,110",F,19OCT1953,01JAN1978,31AUG2007,120737
120741,01JAN1978,31DEC9999,Purchasing Agent III,"$36,365",F,28NOV1948,01JAN1978,,120737
120742,01JAN1978,31DEC9999,Purchasing Agent I,"$31,020",M,04FEB1948,01JAN1978,,120737
120743,01JUN2001,31DEC9999,Purchasing Agent II,"$34,620",F,01FEB1973,01JUN2001,,120737
120744,01JUL2008,30OCT2009,Purchasing Agent II,"$33,490",F,19JUN1992,01JUL2008,30OCT2009,120737
120745,01JUN2010,31DEC9999,Purchasing Agent I,"$31,365",F,05JUL1990,01JUN2010,,120737
120746,01APR2006,31DEC9999,Account Manager,"$46,090",M,10OCT1978,01APR2006,,120262
120747,01AUG1999,31DEC9999,Financial Controller I,"$43,590",F,20JUN1978,01AUG1999,,120746
120748,01MAR2007,31DEC9999,Building Admin. Manager,"$48,380",F,05JUL1980,01MAR2007,,120262
120749,01OCT2000,31DEC9999,Office Assistant II,"$26,545",M,20SEP1978,01OCT2000,,120748
120750,01FEB1983,31JAN2006,Accountant I,"$32,675",F,07JUN1958,01FEB1983,31JAN2006,120751
120751,01AUG1992,31DEC9999,Finance Manager,"$58,200",M,05APR1968,01AUG1992,,120262
120752,01AUG1979,30APR2007,Accountant I,"$30,590",M,17FEB1958,01AUG1979,30APR2007,120751
120753,01AUG1998,31DEC9999,Financial Controller II,"$47,000",M,15JUN1980,01AUG1998,,120751
120754,01MAY2010,31DEC9999,Accountant II,"$34,760",M,02JUN1992,01MAY2010,,120751
120755,01AUG1987,31DEC9999,Accountant III,"$36,440",F,24AUG1968,01AUG1987,,120751
120756,01JUL2000,31DEC9999,Financial Controller III,"$52,295",F,20FEB1978,01JUL2000,,120751
120757,01JAN1978,30JUN2008,Accountant III,"$38,545",M,18MAR1948,01JAN1978,30JUN2008,120751
120758,01OCT1996,31DEC9999,Accountant II,"$34,040",M,22OCT1968,01OCT1996,,120751
120759,01JAN1987,31DEC9999,Accountant II,"$36,230",M,04NOV1968,01JAN1987,,120746
120760,01MAY1997,31DEC9999,Financial Controller III,"$53,475",F,06JAN1973,01MAY1997,,120746
120761,01JUL2010,31DEC9999,Accountant I,"$30,960",F,28DEC1990,01JUL2010,,120746
120762,01MAR2010,31DEC9999,Accountant I,"$30,625",M,02NOV1983,01MAR2010,,120746
120763,01JAN1978,31DEC9999,Auditor II,"$45,100",M,26OCT1948,01JAN1978,,120766
120764,01DEC2006,31DEC9999,Auditor I,"$40,450",M,22DEC1978,01DEC2006,,120766
120765,01JAN1978,31DEC9999,Financial Controller III,"$51,950",F,17DEC1958,01JAN1978,,120766
120766,01MAR2005,31DEC9999,Auditing Manager,"$53,400",F,05NOV1978,01MAR2005,,120262
120767,01APR1991,31DEC9999,Accountant I,"$32,965",M,09MAY1968,01APR1991,,120766
120768,01OCT1985,30NOV2007,Accountant II,"$44,955",M,22JUL1958,01OCT1985,30NOV2007,120766
120769,01APR2000,31DEC9999,Auditor II,"$47,990",M,24MAY1978,01APR2000,,120766
120770,01APR1991,30APR2007,Auditor I,"$43,930",F,24APR1968,01APR1991,30APR2007,120766
120771,01DEC1980,31DEC9999,Accountant II,"$36,435",F,04AUG1958,01DEC1980,,120766
120772,01AUG2010,31DEC9999,HR Generalist I,"$27,365",M,08APR1992,01AUG2010,,120780
120773,01APR1985,31DEC9999,HR Generalist II,"$27,370",F,22FEB1963,01APR1985,,120780
120774,01MAR2006,31OCT2009,HR Specialist II,"$45,155",F,17SEP1982,01MAR2006,31OCT2009,120780
120775,01NOV2000,31DEC9999,HR Analyst II,"$41,580",F,11FEB1973,01NOV2000,,120780
120776,01APR2005,31DEC9999,HR Generalist III,"$32,580",M,21SEP1983,01APR2005,,120780
120777,01MAY1998,31DEC9999,HR Specialist I,"$40,955",M,26MAR1973,01MAY1998,,120780
120778,01FEB1988,31DEC9999,HR Specialist I,"$43,650",F,08DEC1958,01FEB1988,,120780
120779,01MAR2001,31DEC9999,HR Analyst II,"$43,690",F,04OCT1980,01MAR2001,,120780
120780,01OCT1995,31DEC9999,HR Manager,"$62,995",F,01SEP1973,01OCT1995,,120262
120781,01DEC2008,31DEC2009,Recruiter I,"$32,620",F,23JAN1992,01DEC2008,31DEC2009,120782
120782,01JUN2003,31DEC9999,Recruitment Manager,"$63,915",F,29NOV1978,01JUN2003,,120262
120783,01JAN2000,31DEC9999,Recruiter III,"$42,975",M,20DEC1978,01JAN2000,,120782
120784,01SEP2008,31DEC9999,Recruiter II,"$35,715",F,24APR1983,01SEP2008,,120782
120785,01JUN1997,31DEC9999,Training Manager,"$48,335",F,21JAN1973,01JUN1997,,120780
120786,01JAN1978,31DEC9999,Trainer I,"$32,650",F,18MAR1948,01JAN1978,,120785
120787,01JAN2000,31DEC9999,Trainer II,"$34,000",M,22AUG1973,01JAN2000,,120785
120788,01DEC1998,31DEC9999,Trainer I,"$33,530",M,13JUN1973,01DEC1998,,120785
120789,01DEC1986,31MAY2007,Trainer III,"$39,330",M,14JUL1968,01DEC1986,31MAY2007,120785
120790,01MAY1999,31DEC9999,ETL Specialist II,"$53,740",F,07DEC1978,01MAY1999,,120791
120791,01OCT1990,31DEC9999,Systems Architect IV,"$61,115",M,26JUL1968,01OCT1990,,120798
120792,01AUG2001,31DEC9999,Systems Architect II,"$54,760",F,19MAR1980,01AUG2001,,120791
120793,01JUN2000,31DEC9999,ETL Specialist I,"$47,155",M,08AUG1973,01JUN2000,,120791
120794,01JUL2007,31DEC9999,Applications Developer IV,"$51,265",F,31DEC1982,01JUL2007,,120800
120795,01AUG1992,31JAN2007,Applications Developer II,"$49,105",M,16JAN1973,01AUG1992,31JAN2007,120794
120796,01MAR1987,31DEC9999,Applications Developer II,"$47,030",M,12MAY1958,01MAR1987,,120794
120797,01DEC1981,31DEC9999,Applications Developer I,"$43,385",F,17NOV1958,01DEC1981,,120794
120798,01JAN1991,31DEC9999,Senior Project Manager,"$80,755",F,23JUN1963,01JAN1991,,120800
120799,01NOV2002,31DEC9999,Office Assistant III,"$29,070",M,23MAR1983,01NOV2002,,120800
120800,01JUN2001,31JAN2007,IS Director,"$80,210",M,20DEC1978,01JUN2001,31JAN2007,120262
120801,01JUL2003,31DEC9999,Applications Developer I,"$40,040",F,06MAR1978,01JUL2003,,120798
120802,01JAN1982,30JUN2008,Applications Developer IV,"$65,125",F,11MAY1953,01JAN1982,30JUN2008,120798
120803,01JAN1982,31DEC9999,Applications Developer I,"$43,630",M,06JUN1958,01JAN1982,,120798
120804,01JAN1978,31DEC9999,IS Administrator III,"$55,400",M,11FEB1948,01JAN1978,,120798
120805,01APR2004,31DEC9999,BI Administrator IV,"$58,530",M,27JUN1982,01APR2004,,120798
120806,01FEB1996,31DEC9999,IS Administrator II,"$47,285",F,25FEB1978,01FEB1996,,120798
120807,01JAN1986,31AUG2008,IS Administrator I,"$43,325",F,14DEC1963,01JAN1986,31AUG2008,120798
120808,01JUN1988,31DEC9999,BI Specialist II,"$44,425",M,01JUN1968,01JUN1988,,120798
120809,01JAN1978,31DEC9999,BI Architect II,"$47,155",F,14JAN1948,01JAN1978,,120798
120810,01MAR1984,31DEC9999,IS Architect III,"$58,375",M,04OCT1958,01MAR1984,,120798
120811,01JUL1997,31DEC9999,Applications Developer I,"$43,985",M,26SEP1973,01JUL1997,,120814
120812,01AUG2005,31DEC9999,Applications Developer II,"$45,810",M,19FEB1978,01AUG2005,,120814
120813,01JAN1997,31DEC2007,Applications Developer IV,"$50,865",M,14SEP1973,01JAN1997,31DEC2007,120814
120814,01SEP1983,31DEC9999,Project Manager,"$59,140",M,03JUN1963,01SEP1983,,120800
120815,01APR2010,31DEC9999,Service Administrator III,"$31,590",M,27DEC1992,01APR2010,,120719
120816,01AUG1997,31DEC9999,Service Administrator I,"$30,485",F,03MAY1973,01AUG1997,,120719
120992,01AUG2004,31DEC9999,Office Assistant I,"$26,940",F,17FEB1983,01AUG2004,,120996
120993,01MAR2001,31DEC9999,Office Assistant I,"$26,260",F,18DEC1973,01MAR2001,,120996
120994,01NOV1998,31DEC9999,Office Administrator I,"$31,645",F,16JUN1978,01NOV1998,,120996
120995,01AUG2010,31DEC9999,Office Administrator II,"$34,850",F,13JUN1988,01AUG2010,,120996
120996,01SEP2006,31DEC9999,Office Assistant IV,"$32,745",M,21JUL1978,01SEP2006,,121000
120997,01SEP2000,31DEC9999,Shipping Administrator I,"$27,420",F,21NOV1978,01SEP2000,,121000
120998,01APR2009,31DEC9999,Clerk I,"$26,330",F,06DEC1983,01APR2009,,120997
120999,01APR1988,31DEC9999,Clerk I,"$27,215",F,28DEC1963,01APR1988,,120997
121000,01DEC1997,31DEC9999,Administration Manager,"$48,600",M,25JAN1968,01DEC1997,,121141
121001,01SEP1981,31DEC9999,Warehouse Manager,"$43,615",M,21JAN1963,01SEP1981,,121000
121002,01DEC1983,31AUG2008,Warehouse Assistant II,"$26,650",F,18SEP1958,01DEC1983,31AUG2008,121001
121003,01JUL2010,31DEC9999,Warehouse Assistant I,"$26,000",M,05MAY1992,01JUL2010,,121001
121004,01JAN1978,31DEC9999,Security Manager,"$30,895",M,03AUG1948,01JAN1978,,121000
121005,01FEB2008,31DEC9999,Security Guard I,"$25,020",M,15JUL1988,01FEB2008,,121004
121006,01NOV2008,31OCT2009,Security Guard I,"$26,145",M,12OCT1990,01NOV2008,31OCT2009,121004
121007,01FEB1991,31DEC9999,Security Guard II,"$27,290",M,12OCT1968,01FEB1991,,121004
121008,01AUG1997,31DEC9999,Security Guard II,"$27,875",M,03JUL1973,01AUG1997,,121004
121009,01AUG2003,31DEC9999,Service Administrator I,"$32,955",M,04DEC1983,01AUG2003,,121000
121010,01MAR2010,31DEC9999,Service Assistant I,"$25,195",M,14AUG1988,01MAR2010,,121009
121011,01JAN1978,31DEC9999,Service Assistant I,"$25,735",M,11MAR1948,01JAN1978,,121009
121012,01SEP2007,30NOV2008,Service Assistant II,"$29,575",M,26JAN1990,01SEP2007,30NOV2008,121009
121013,01APR2004,31DEC9999,Electrician II,"$26,675",M,28APR1983,01APR2004,,121016
121014,01AUG2003,31DEC9999,Electrician III,"$28,510",F,01MAY1978,01AUG2003,,121016
121015,01SEP2004,31DEC9999,Technician I,"$26,140",M,13DEC1983,01SEP2004,,121016
121016,01SEP2008,31DEC9999,Technical Manager,"$48,075",F,19JAN1980,01SEP2008,,121000
121017,01MAR2009,31DEC9999,Technician II,"$29,225",M,06JAN1988,01MAR2009,,121016
121018,01JAN1978,30APR2007,Sales Rep. II,"$27,560",F,03JAN1948,01JAN1978,30APR2007,121144
121019,01JUN2008,31JUL2009,Sales Rep. IV,"$31,320",M,25JUN1990,01JUN2008,31JUL2009,121144
121020,01MAY2006,31DEC9999,Sales Rep. IV,"$31,750",F,23FEB1988,01MAY2006,,121144
121021,01MAR1998,31DEC9999,Sales Rep. IV,"$32,985",F,10DEC1978,01MAR1998,,121144
121022,01FEB2006,31AUG2008,Sales Rep. IV,"$32,210",M,28OCT1983,01FEB2006,31AUG2008,121144
121023,01MAY1993,31AUG2009,Sales Rep. I,"$26,010",M,13MAR1968,01MAY1993,31AUG2009,121144
121024,01MAY2008,31DEC9999,Sales Rep. II,"$26,600",M,21SEP1988,01MAY2008,,121144
121025,01SEP1979,31DEC9999,Sales Rep. II,"$28,295",M,10OCT1953,01SEP1979,,121144
121026,01APR2010,31DEC9999,Sales Rep. IV,"$31,515",M,08NOV1990,01APR2010,,121144
121027,01DEC1993,31DEC9999,Sales Rep. II,"$26,165",M,05MAY1968,01DEC1993,,121144
121028,01NOV2010,31DEC9999,Sales Rep. I,"$26,585",M,27APR1992,01NOV2010,,121144
121029,01DEC1993,31DEC9999,Sales Rep. I,"$27,225",M,22DEC1968,01DEC1993,,121144
121030,01FEB2005,31DEC9999,Sales Rep. I,"$26,745",M,12NOV1983,01FEB2005,,121144
121031,01AUG1989,31DEC9999,Sales Rep. III,"$28,060",M,09JUL1968,01AUG1989,,121144
121032,01MAR2010,31DEC9999,Sales Rep. IV,"$31,335",M,24FEB1992,01MAR2010,,121144
121033,01JUN2008,31DEC9999,Sales Rep. III,"$29,775",F,06NOV1990,01JUN2008,,121144
121034,01JAN2011,31DEC9999,Sales Rep. II,"$27,110",M,23AUG1992,01JAN2011,,121144
121035,01JAN1978,31DEC9999,Sales Rep. II,"$26,460",M,25MAR1948,01JAN1978,,121144
121036,01OCT2007,31OCT2009,Sales Rep. I,"$25,965",F,18JUL1992,01OCT2007,31OCT2009,121144
121037,01MAR2006,31DEC9999,Sales Rep. III,"$28,310",M,12JUN1978,01MAR2006,,121144
121038,01AUG2010,01FEB2011,Sales Rep. I,"$25,285",M,13FEB1992,01AUG2010,01FEB2011,121144
121039,01MAY1984,31DEC9999,Sales Rep. II,"$27,460",M,03JUN1958,01MAY1984,,121144
121040,01NOV1986,31DEC9999,Sales Rep. III,"$29,525",F,06JUL1963,01NOV1986,,121144
121041,01JAN1978,31DEC9999,Sales Rep. II,"$26,120",F,04FEB1948,01JAN1978,,121144
121042,01NOV2003,31DEC9999,Sales Rep. III,"$28,845",M,04APR1983,01NOV2003,,121144
121043,01MAR1996,31DEC9999,Sales Rep. II,"$28,225",F,09NOV1973,01MAR1996,,121144
121044,01AUG1979,31DEC9999,Sales Rep. I,"$25,660",M,11DEC1958,01AUG1979,,121144
121045,01JAN1998,29FEB2008,Sales Rep. II,"$28,560",F,13JUN1968,01JAN1998,29FEB2008,121143
121046,01JUL2010,01JAN2011,Sales Rep. I,"$25,845",M,07SEP1988,01JUL2010,01JAN2011,121143
121047,01SEP2010,01MAR2011,Sales Rep. I,"$25,820",F,26NOV1983,01SEP2010,01MAR2011,121143
121048,01SEP2010,01MAR2011,Sales Rep. I,"$26,560",F,24JUN1988,01SEP2010,01MAR2011,121143
121049,01DEC2010,31DEC9999,Sales Rep. I,"$26,930",F,14FEB1990,01DEC2010,,121143
121050,01DEC2010,31DEC9999,Sales Rep. II,"$26,080",F,12JAN1990,01DEC2010,,121143
121051,01NOV1982,31DEC9999,Sales Rep. I,"$26,025",F,02MAY1953,01NOV1982,,121143
121052,01NOV2010,31DEC9999,Sales Rep. II,"$26,900",M,09JAN1990,01NOV2010,,121143
121053,01FEB1978,31DEC9999,Sales Rep. III,"$29,955",F,23SEP1948,01FEB1978,,121143
121054,01NOV1980,31DEC9999,Sales Rep. III,"$29,805",M,12NOV1958,01NOV1980,,121143
121055,01AUG2010,31DEC9999,Sales Rep. III,"$30,185",M,08JAN1992,01AUG2010,,121143
121056,01MAY2007,31DEC9999,Sales Rep. II,"$28,325",F,05JUL1988,01MAY2007,,121143
121057,01DEC1984,31DEC9999,Sales Rep. I,"$25,125",M,26DEC1963,01DEC1984,,121143
121058,01OCT2006,31DEC9999,Sales Rep. I,"$26,270",M,12JUL1978,01OCT2006,,121143
121059,01APR1985,31DEC2007,Sales Rep. II,"$27,425",F,25OCT1963,01APR1985,31DEC2007,121143
121060,01JAN1978,31DEC9999,Sales Rep. III,"$28,800",F,08JUN1948,01JAN1978,,121143
121061,01JUL1988,31DEC9999,Sales Rep. III,"$29,815",M,16JUL1958,01JUL1988,,121143
121062,01AUG2010,31DEC9999,Sales Rep. IV,"$30,305",F,28OCT1988,01AUG2010,,121145
121063,01AUG2009,31DEC9999,Sales Rep. II,"$35,990",M,27JUL1983,01AUG2009,,121145
121064,01SEP1995,31DEC9999,Sales Rep. I,"$25,110",M,28JAN1968,01SEP1995,,121145
121065,01APR2010,31DEC9999,Sales Rep. III,"$28,040",F,05SEP1988,01APR2010,,121145
121066,01JAN1978,31OCT2009,Sales Rep. II,"$27,250",F,23AUG1948,01JAN1978,31OCT2009,121145
121067,01MAR2010,01SEP2010,Sales Rep. IV,"$31,865",F,18JAN1990,01MAR2010,01SEP2010,121145
121068,01SEP1996,31DEC9999,Sales Rep. II,"$27,550",M,02DEC1973,01SEP1996,,121145
121069,01OCT1994,31DEC9999,Sales Rep. II,"$26,195",M,19MAR1973,01OCT1994,,121145
121070,01FEB2010,31DEC9999,Sales Rep. III,"$29,385",F,04NOV1988,01FEB2010,,121145
121071,01SEP1981,31DEC9999,Sales Rep. III,"$28,625",M,10SEP1963,01SEP1981,,121145
121072,01SEP2008,31OCT2009,Sales Rep. I,"$26,105",M,10JAN1983,01SEP2008,31OCT2009,121145
121073,01JAN1978,31DEC9999,Sales Rep. I,"$27,100",M,15MAY1953,01JAN1978,,121145
121074,01OCT1992,31DEC9999,Sales Rep. I,"$26,990",M,01MAR1963,01OCT1992,,121145
121075,01JAN1978,31DEC9999,Sales Rep. II,"$28,395",F,23DEC1948,01JAN1978,,121145
121076,01JAN1987,31MAY2008,Sales Rep. II,"$26,685",M,09OCT1968,01JAN1987,31MAY2008,121143
121077,01OCT2010,31DEC9999,Sales Rep. III,"$28,585",M,05SEP1988,01OCT2010,,121143
121078,01NOV1982,31DEC9999,Sales Rep. I,"$27,485",M,01MAY1953,01NOV1982,,121143
121079,01NOV2001,31DEC9999,Sales Rep. I,"$25,770",M,03JUN1978,01NOV2001,,121143
121080,01SEP1991,31DEC9999,Sales Rep. I,"$32,235",M,24JAN1963,01SEP1991,,121143
121081,01APR1980,31DEC9999,Sales Rep. III,"$30,235",F,28MAR1953,01APR1980,,121143
121082,01OCT1981,31DEC9999,Sales Rep. III,"$28,510",M,05JUL1953,01OCT1981,,121143
121083,01MAR1983,31DEC9999,Sales Rep. I,"$27,245",F,11MAR1963,01MAR1983,,121143
121084,01JAN1995,31DEC9999,Sales Rep. I,"$22,710",M,16AUG1968,01JAN1995,,121143
121085,01JAN2011,31DEC9999,Sales Rep. IV,"$32,235",M,12NOV1990,01JAN2011,,121143
121086,01JAN1978,31DEC9999,Sales Rep. I,"$26,820",M,16DEC1948,01JAN1978,,121143
121087,01MAR2003,31MAR2010,Sales Rep. II,"$28,325",F,07DEC1978,01MAR2003,31MAR2010,121143
121088,01JAN2011,31DEC9999,Sales Rep. I,"$27,240",M,10JUN1992,01JAN2011,,121143
121089,01JUL1978,31OCT2010,Sales Rep. II,"$28,095",M,21AUG1958,01JUL1978,31OCT2010,121143
121090,01FEB1984,31DEC9999,Sales Rep. I,"$26,600",F,19JUN1958,01FEB1984,,121143
121091,01JAN1993,31DEC9999,Sales Rep. II,"$27,325",M,19FEB1973,01JAN1993,,121143
121092,01AUG2006,31DEC9999,Sales Rep. I,"$25,680",F,08MAR1978,01AUG2006,,121143
121093,01JAN1998,30JUN2007,Sales Rep. I,"$27,410",M,18JUL1968,01JAN1998,30JUN2007,121143
121094,01SEP1982,31DEC9999,Sales Rep. I,"$26,555",M,07JAN1958,01SEP1982,,121143
121095,01JUL1995,31DEC9999,Sales Rep. II,"$28,010",F,14APR1973,01JUL1995,,121143
121096,01MAY1999,31DEC9999,Sales Rep. I,"$26,335",M,18MAY1973,01MAY1999,,121143
121097,01OCT1999,31DEC9999,Sales Rep. II,"$26,830",F,23OCT1978,01OCT1999,,121143
121098,01MAY2010,31DEC9999,Sales Rep. I,"$27,475",M,22MAR1992,01MAY2010,,121143
121099,01MAY2004,31DEC9999,Sales Rep. IV,"$32,725",M,19MAR1983,01MAY2004,,121143
121100,01APR1980,31DEC9999,Sales Rep. II,"$28,135",M,27APR1953,01APR1980,,121143
121101,01NOV2010,31DEC9999,Sales Rep. I,"$25,390",F,28AUG1990,01NOV2010,,121143
121102,01JUN2010,31DEC9999,Sales Rep. I,"$27,115",F,26JUN1983,01JUN2010,,121143
121103,01SEP2010,31DEC9999,Sales Rep. I,"$27,260",M,28APR1992,01SEP2010,,121143
121104,01APR1990,31JAN2006,Sales Rep. II,"$28,315",F,12NOV1968,01APR1990,31JAN2006,121143
121105,01JAN2007,31DEC9999,Sales Rep. III,"$29,545",F,09MAY1983,01JAN2007,,121143
121106,01FEB2000,31DEC9999,Sales Rep. I,"$25,880",M,02FEB1973,01FEB2000,,121143
121107,01JUL2010,31DEC9999,Sales Rep. IV,"$31,380",F,24APR1990,01JUL2010,,121143
121108,01NOV2010,01MAY2011,Sales Rep. I,"$25,930",F,04JUL1992,01NOV2010,01MAY2011,121143
121109,01MAY1994,31DEC9999,Sales Rep. I,"$26,035",M,05NOV1973,01MAY1994,,121143
121110,01DEC2010,31DEC2010,Temp. Sales Rep.,"$26,370",M,14APR1948,01DEC2010,31DEC2010,121145
121111,01DEC2010,30APR2011,Temp. Sales Rep.,"$26,885",M,17JUL1948,01DEC2010,30APR2011,121145
121112,01DEC2010,31DEC2010,Temp. Sales Rep.,"$26,855",M,13DEC1990,01DEC2010,31DEC2010,121145
121113,01DEC2010,31JAN2011,Temp. Sales Rep.,"$27,480",F,21FEB1958,01DEC2010,31JAN2011,121145
121114,01DEC2010,30JUN2011,Temp. Sales Rep.,"$26,515",F,04NOV1948,01DEC2010,30JUN2011,121145
121115,01DEC2010,30APR2011,Temp. Sales Rep.,"$26,430",M,13FEB1963,01DEC2010,30APR2011,121145
121116,01DEC2010,31MAR2011,Temp. Sales Rep.,"$26,670",F,23SEP1968,01DEC2010,31MAR2011,121145
121117,01DEC2010,31DEC2010,Temp. Sales Rep.,"$26,640",F,18MAR1978,01DEC2010,31DEC2010,121145
121118,01DEC2010,31MAY2011,Temp. Sales Rep.,"$25,725",M,01MAR1983,01DEC2010,31MAY2011,121145
121119,01DEC2010,28FEB2011,Temp. Sales Rep.,"$25,205",M,03NOV1968,01DEC2010,28FEB2011,121145
121120,01DEC2010,28FEB2011,Temp. Sales Rep.,"$25,020",F,25OCT1978,01DEC2010,28FEB2011,121145
121121,01DEC2010,31MAY2011,Temp. Sales Rep.,"$25,735",F,05MAR1990,01DEC2010,31MAY2011,121145
121122,01DEC2010,31MAR2011,Temp. Sales Rep.,"$26,265",M,01MAR1990,01DEC2010,31MAR2011,121145
121123,01DEC2010,31MAR2011,Temp. Sales Rep.,"$26,410",M,27APR1948,01DEC2010,31MAR2011,121145
121124,01DEC2010,31DEC2010,Temp. Sales Rep.,"$26,925",M,15FEB1973,01DEC2010,31DEC2010,121145
121125,01JAN2007,30JUN2007,Trainee,"$25,315",M,17APR1978,01JAN2007,30JUN2007,121145
121126,01JAN2007,30JUN2007,Trainee,"$26,015",M,26OCT1958,01JAN2007,30JUN2007,121145
121127,01JUN2009,30NOV2009,Trainee,"$25,435",F,03SEP1990,01JUN2009,30NOV2009,121145
121128,01JAN2007,30JUN2007,Trainee,"$25,405",F,26JUN1978,01JAN2007,30JUN2007,121145
121129,01JAN2007,30JUN2007,Trainee,"$30,945",M,01MAY1968,01JAN2007,30JUN2007,121145
121130,01FEB2008,31JUL2008,Trainee,"$25,255",M,21JAN1988,01FEB2008,31JUL2008,121145
121131,01JAN2007,30JUN2007,Trainee,"$25,445",M,30JUN1973,01JAN2007,30JUN2007,121145
121132,01JAN2007,30JUN2007,Trainee,"$24,390",M,08FEB1958,01JAN2007,30JUN2007,121145
121133,01JAN2007,30JUN2007,Trainee,"$25,405",M,10NOV1983,01JAN2007,30JUN2007,121145
121134,01JAN2007,30JUN2007,Trainee,"$25,585",M,02JUL1968,01JAN2007,30JUN2007,121145
121135,01AUG1978,31DEC9999,Sales Rep. I,"$27,010",F,07JUN1958,01AUG1978,,121145
121136,01DEC2006,30SEP2008,Sales Rep. I,"$27,460",F,15JUL1978,01DEC2006,30SEP2008,121145
121137,01APR2010,31DEC9999,Sales Rep. I,"$27,055",M,18JAN1992,01APR2010,,121145
121138,01JAN1978,31DEC9999,Sales Rep. I,"$27,265",M,28FEB1953,01JAN1978,,121145
121139,01JUL1991,31DEC9999,Sales Rep. II,"$27,700",F,19AUG1963,01JUL1991,,121145
121140,01APR2005,31JAN2010,Sales Rep. I,"$26,335",M,23JAN1983,01APR2005,31JAN2010,121145
121141,01JAN1978,31DEC9999,Vice President,"$194,885",M,19JUN1948,01JAN1978,,120261
121142,01MAY1997,31DEC9999,Director,"$156,065",M,14FEB1973,01MAY1997,,121141
121143,01JUL2001,31DEC9999,Senior Sales Manager,"$95,090",M,26NOV1973,01JUL2001,,121142
121144,01NOV1995,31DEC9999,Sales Manager,"$83,505",F,28JUN1968,01NOV1995,,121142
121145,01APR1980,31DEC9999,Sales Manager,"$84,260",M,22NOV1953,01APR1980,,121142
121146,01APR2010,31DEC9999,Secretary III,"$29,320",F,09DEC1990,01APR2010,,121141
121147,01SEP1991,31DEC9999,Secretary II,"$29,145",F,28MAY1973,01SEP1991,,121142
121148,01JAN2002,31JAN2007,Business Analyst II,"$52,930",M,01JAN1973,01JAN2002,31JAN2007,121141
;;;;
data certadv.monsal;
infile datalines dsd truncover;
input id month salary;
datalines;
1007,1,3200
1292,1,2400
2165,1,3400
2378,1,2400
4512,1,3200
5987,1,3000
7498,1,2800
8978,1,3000
1007,2,3200
1138,2,3400
1292,2,2400
1298,2,2100
1298,2,2100
2165,2,3400
2378,2,2400
4512,2,3200
5987,2,3000
7498,2,2800
8978,2,3000
1292,13,2400
1007,3,3200
1138,3,3400
2165,3,3400
2378,3,2400
4512,3,3200
5987,3,3000
7498,3,2800
8978,3,3000
1007,4,3200
1138,4,3400
1292,4,2400
1298,4,2100
2165,4,3400
2378,4,2400
4512,4,3200
5987,4,3000
7498,4,2800
8978,4,3000
1007,5,3200
1138,5,3400
1292,5,2400
1298,5,2100
2165,5,3400
2378,5,2400
4512,5,3200
5987,5,3000
7498,5,2800
8978,5,3000
1007,6,3200
1138,6,3400
1292,6,2400
1298,6,2100
4512,16,3200
2165,6,3400
2378,6,2400
5987,6,3000
7498,6,2800
8978,6,3000
1292,17,2400
1007,7,3200
1138,7,3400
1298,7,2100
2165,7,3400
2378,7,2400
4512,7,3200
5987,7,3000
7498,7,2800
8978,7,3000
1007,8,3200
1138,8,3400
1292,8,2400
2165,88,3400
1298,8,2100
2378,8,2400
4512,8,3200
5987,8,3000
7498,8,2800
8978,8,3000
1007,9,3200
1292,9,2400
1298,9,2100
1138,99,3400
2165,9,3400
2378,9,2400
4512,9,3200
5987,9,3000
7498,9,2800
8978,9,3000
1138,10,3400
1292,10,2400
1298,10,2100
2165,10,3400
2378,10,2400
4512,10,3200
1007,100,3200
5987,10,3000
7498,10,2800
8978,10,3000
1007,11,3200
1292,11,2400
1298,11,2100
1138,111,3400
2165,11,3400
2378,11,2400
4512,11,3200
5987,11,3000
7498,11,2800
8978,11,3000
1007,12,3200
1138,12,3400
1292,12,2400
1298,12,2100
2165,12,3400
2378,12,2400
4512,12,3200
5987,12,3000
7498,12,2800
8978,12,3000
;;;;
data CERTADV.EMPPH;
  infile datalines dsd truncover;
  input EmployeeID:32. PhoneType:$4. PhoneNumber:$200.;
datalines4;
120101,Home,+61(2)5555-1849
120101,Work,+61(2)5551-0001
120102,Home,+61(3)5555-9700
120102,Work,+61(3)5551-0002
120103,Home,+61(2)5555-3998
120103,Work,+61(2)5551-0003
120104,Home,+61(2)5555-2594
120104,Work,+61(2)5551-0004
120105,Home,+61(3)5555-9215
120105,Work,+61(3)5551-0005
120106,Home,+61(2)5555-9692
120106,Work,+61(2)5551-0006
120106,Cell,+61(5)5555-5435
120107,Home,+61(3)5555-5316
120107,Work,+61(3)5551-0007
120108,Home,+61(3)5555-0498
120108,Work,+61(3)5551-0008
120109,Home,+61(2)5555-0666
120109,Work,+61(2)5551-0009
120110,Home,+61(2)5555-8192
120110,Work,+61(2)5551-0010
120111,Home,+61(2)5555-5238
120111,Work,+61(2)5551-0011
120112,Home,+61(3)5555-8533
120112,Work,+61(3)5551-0012
120112,Cell,+61(5)5555-0684
120113,Home,+61(3)5555-9569
120113,Work,+61(3)5551-0013
120114,Home,+61(2)5555-2972
120114,Work,+61(2)5551-0014
120115,Home,+61(2)5555-2726
120115,Work,+61(2)5551-0015
120116,Home,+61(2)5555-6899
120116,Work,+61(2)5551-0016
120117,Home,+61(3)5555-9767
120117,Work,+61(3)5551-0017
120118,Home,+61(2)5555-2265
120118,Work,+61(2)5551-0018
120118,Cell,+61(5)5555-6900
120119,Home,+61(2)5555-4127
120119,Work,+61(2)5551-0019
120120,Home,+61(2)5555-5585
120120,Work,+61(2)5551-0020
120121,Home,+61(2)5555-2872
120121,Work,+61(2)5551-0021
120122,Home,+61(3)5555-4757
120122,Work,+61(3)5551-0022
120123,Home,+61(2)5555-8449
120123,Work,+61(2)5551-0023
120124,Home,+61(2)5555-6345
120124,Work,+61(2)5551-0024
120124,Cell,+61(5)5555-5927
120125,Home,+61(2)5555-5825
120125,Work,+61(2)5551-0025
120126,Home,+61(2)5555-3770
120126,Work,+61(2)5551-0026
120127,Home,+61(2)5555-7283
120127,Work,+61(2)5551-0027
120128,Home,+61(3)5555-5066
120128,Work,+61(3)5551-0028
120129,Home,+61(3)5555-9311
120129,Work,+61(3)5551-0029
120130,Home,+61(2)5555-9290
120130,Work,+61(2)5551-0030
120130,Cell,+61(5)5555-5926
120131,Home,+61(2)5555-2972
120131,Work,+61(2)5551-0031
120132,Home,+61(2)5555-3910
120132,Work,+61(2)5551-0032
120133,Home,+61(3)5555-4724
120133,Work,+61(3)5551-0033
120134,Home,+61(2)5555-6795
120134,Work,+61(2)5551-0034
120135,Home,+61(2)5555-1681
120135,Work,+61(2)5551-0035
120136,Home,+61(2)5555-1665
120136,Work,+61(2)5551-0036
120136,Cell,+61(5)5555-8746
120137,Home,+61(3)5555-2988
120137,Work,+61(3)5551-0037
120138,Home,+61(3)5555-9345
120138,Work,+61(3)5551-0038
120139,Home,+61(2)5555-9004
120139,Work,+61(2)5551-0039
120140,Home,+61(2)5555-5687
120140,Work,+61(2)5551-0040
120141,Home,+61(2)5555-0495
120141,Work,+61(2)5551-0041
120142,Home,+61(3)5555-1356
120142,Work,+61(3)5551-0042
120142,Cell,+61(5)5555-5155
120143,Home,+61(2)5555-4332
120143,Work,+61(2)5551-0043
120144,Home,+61(2)5555-1761
120144,Work,+61(2)5551-0044
120145,Home,+61(3)5555-6650
120145,Work,+61(3)5551-0045
120146,Home,+61(2)5555-4048
120146,Work,+61(2)5551-0046
120147,Home,+61(2)5555-1245
120147,Work,+61(2)5551-0047
120148,Home,+61(2)5555-4534
120148,Work,+61(2)5551-0048
120148,Cell,+61(5)5555-2043
120149,Home,+61(3)5555-5748
120149,Work,+61(3)5551-0049
120150,Home,+61(3)5555-7384
120150,Work,+61(3)5551-0050
120151,Home,+61(2)5555-4398
120151,Work,+61(2)5551-0051
120152,Home,+61(2)5555-0494
120152,Work,+61(2)5551-0052
120153,Home,+61(2)5555-5223
120153,Work,+61(2)5551-0053
120154,Home,+61(2)5555-3433
120154,Work,+61(2)5551-0054
120154,Cell,+61(5)5555-0281
120155,Home,+61(3)5555-7128
120155,Work,+61(3)5551-0055
120156,Home,+61(2)5555-9370
120156,Work,+61(2)5551-0056
120157,Home,+61(2)5555-4459
120157,Work,+61(2)5551-0057
120158,Home,+61(2)5555-9468
120158,Work,+61(2)5551-0058
120159,Home,+61(2)5555-7128
120159,Work,+61(2)5551-0059
120160,Home,+61(2)5555-1033
120160,Work,+61(2)5551-0060
120160,Cell,+61(5)5555-1812
120161,Home,+61(3)5555-2689
120161,Work,+61(3)5551-0061
120162,Home,+61(3)5555-6148
120162,Work,+61(3)5551-0062
120163,Home,+61(3)5555-4207
120163,Work,+61(3)5551-0063
120164,Home,+61(3)5555-0717
120164,Work,+61(3)5551-0064
120165,Home,+61(2)5555-3585
120165,Work,+61(2)5551-0065
120166,Home,+61(2)5555-7114
120166,Work,+61(2)5551-0066
120166,Cell,+61(5)5555-1964
120167,Home,+61(2)5555-1480
120167,Work,+61(2)5551-0067
120168,Home,+61(3)5555-5618
120168,Work,+61(3)5551-0068
120169,Home,+61(3)5555-2701
120169,Work,+61(3)5551-0069
120170,Home,+61(2)5555-3252
120170,Work,+61(2)5551-0070
120171,Home,+61(2)5555-5691
120171,Work,+61(2)5551-0071
120172,Home,+61(2)5555-0426
120172,Work,+61(2)5551-0072
120172,Cell,+61(5)5555-4464
120173,Home,+61(3)5555-9173
120173,Work,+61(3)5551-0073
120174,Home,+61(3)5555-5258
120174,Work,+61(3)5551-0074
120175,Home,+61(2)5555-7317
120175,Work,+61(2)5551-0075
120176,Home,+61(3)5555-9051
120176,Work,+61(3)5551-0076
120177,Home,+61(2)5555-5759
120177,Work,+61(2)5551-0077
120178,Home,+61(2)5555-1879
120178,Work,+61(2)5551-0078
120178,Cell,+61(5)5555-3391
120179,Home,+61(3)5555-6988
120179,Work,+61(3)5551-0079
120180,Home,+61(3)5555-1216
120180,Work,+61(3)5551-0080
120181,Home,+61(2)5555-1806
120181,Work,+61(2)5551-0081
120182,Home,+61(2)5555-2706
120182,Work,+61(2)5551-0082
120183,Home,+61(3)5555-6531
120183,Work,+61(3)5551-0083
120184,Home,+61(2)5555-4213
120184,Work,+61(2)5551-0084
120184,Cell,+61(5)5555-0464
120185,Home,+61(2)5555-2708
120185,Work,+61(2)5551-0085
120186,Home,+61(2)5555-4277
120186,Work,+61(2)5551-0086
120187,Home,+61(3)5555-8200
120187,Work,+61(3)5551-0087
120188,Home,+61(2)5555-8434
120188,Work,+61(2)5551-0088
120189,Home,+61(2)5555-8768
120189,Work,+61(2)5551-0089
120190,Home,+61(2)5555-2672
120190,Work,+61(2)5551-0090
120190,Cell,+61(5)5555-3150
120191,Home,+61(3)5555-3970
120191,Work,+61(3)5551-0091
120192,Home,+61(2)5555-3490
120192,Work,+61(2)5551-0092
120193,Home,+61(3)5555-7659
120193,Work,+61(3)5551-0093
120194,Home,+61(3)5555-5433
120194,Work,+61(3)5551-0094
120195,Home,+61(3)5555-6125
120195,Work,+61(3)5551-0095
120196,Home,+61(3)5555-5529
120196,Work,+61(3)5551-0096
120196,Cell,+61(5)5555-7454
120197,Home,+61(3)5555-3718
120197,Work,+61(3)5551-0097
120198,Home,+61(2)5555-6456
120198,Work,+61(2)5551-0098
120259,Work,+1(305)555-5571
120259,Home,+1(305)551-0099
120260,Work,+1(619)555-8750
120260,Home,+1(619)551-0100
120261,Work,+1(305)555-5712
120261,Home,+1(305)551-0101
120262,Work,+1(215)555-7567
120262,Home,+1(215)551-0102
120262,Cell,+1(215)444-0102
120263,Work,+1(619)555-1484
120263,Home,+1(619)551-0103
120264,Work,+1(619)555-0254
120264,Home,+1(619)551-0104
120265,Work,+1(215)555-8171
120265,Home,+1(215)551-0105
120266,Work,+1(619)555-6582
120266,Home,+1(619)551-0106
120267,Work,+1(619)555-0295
120267,Home,+1(619)551-0107
120268,Work,+1(215)555-8533
120268,Home,+1(215)551-0108
120268,Cell,+1(215)444-0108
120269,Work,+1(215)555-3628
120269,Home,+1(215)551-0109
120270,Work,+1(305)555-3773
120270,Home,+1(305)551-0110
120271,Work,+1(305)555-5105
120271,Home,+1(305)551-0111
120272,Work,+1(215)555-7119
120272,Home,+1(215)551-0112
120273,Work,+1(305)555-3753
120273,Home,+1(305)551-0113
120274,Work,+1(215)555-2295
120274,Home,+1(215)551-0114
120274,Cell,+1(215)444-0114
120275,Work,+1(619)555-6861
120275,Home,+1(619)551-0115
120276,Work,+1(215)555-5524
120276,Home,+1(215)551-0116
120277,Work,+1(305)555-5818
120277,Home,+1(305)551-0117
120278,Work,+1(619)555-1747
120278,Home,+1(619)551-0118
120279,Work,+1(619)555-0461
120279,Home,+1(619)551-0119
120280,Work,+1(215)555-6437
120280,Home,+1(215)551-0120
120280,Cell,+1(215)444-0120
120656,Work,+1(619)555-6454
120656,Home,+1(619)551-0121
120657,Work,+1(619)555-0932
120657,Home,+1(619)551-0122
120658,Work,+1(619)555-6200
120658,Home,+1(619)551-0123
120659,Work,+1(215)555-0784
120659,Home,+1(215)551-0124
120660,Work,+1(305)555-6892
120660,Home,+1(305)551-0125
120661,Work,+1(619)555-1840
120661,Home,+1(619)551-0126
120661,Cell,+1(619)444-0126
120662,Work,+1(305)555-6204
120662,Home,+1(305)551-0127
120663,Work,+1(305)555-1934
120663,Home,+1(305)551-0128
120664,Work,+1(215)555-2953
120664,Home,+1(215)551-0129
120665,Work,+1(619)555-6309
120665,Home,+1(619)551-0130
120666,Work,+1(619)555-3848
120666,Home,+1(619)551-0131
120667,Work,+1(305)555-6864
120667,Home,+1(305)551-0132
120667,Cell,+1(305)444-0132
120668,Work,+1(305)555-4919
120668,Home,+1(305)551-0133
120669,Work,+1(215)555-8299
120669,Home,+1(215)551-0134
120670,Work,+1(215)555-0444
120670,Home,+1(215)551-0135
120671,Work,+1(215)555-2034
120671,Home,+1(215)551-0136
120672,Home,+61(2)5555-0790
120672,Work,+61(2)5551-0137
120673,Home,+61(3)5555-1451
120673,Work,+61(3)5551-0138
120673,Cell,+61(5)5555-2382
120677,Work,+1(305)555-3475
120677,Home,+1(305)551-0139
120678,Work,+1(619)555-7021
120678,Home,+1(619)551-0140
120679,Work,+1(619)555-4914
120679,Home,+1(619)551-0141
120680,Work,+1(215)555-6313
120680,Home,+1(215)551-0142
120681,Work,+1(305)555-9063
120681,Home,+1(305)551-0143
120682,Work,+1(215)555-3040
120682,Home,+1(215)551-0144
120682,Cell,+1(215)444-0144
120683,Work,+1(215)555-9258
120683,Home,+1(215)551-0145
120684,Work,+1(305)555-4406
120684,Home,+1(305)551-0146
120685,Work,+1(215)555-6083
120685,Home,+1(215)551-0147
120686,Work,+1(619)555-7818
120686,Home,+1(619)551-0148
120687,Work,+1(305)555-4263
120687,Home,+1(305)551-0149
120688,Work,+1(619)555-1253
120688,Home,+1(619)551-0150
120688,Cell,+1(619)444-0150
120689,Work,+1(215)555-7404
120689,Home,+1(215)551-0151
120690,Work,+1(215)555-1948
120690,Home,+1(215)551-0152
120691,Home,+61(2)5555-8166
120691,Work,+61(2)5551-0153
120692,Home,+61(2)5555-0855
120692,Work,+61(2)5551-0154
120693,Home,+61(2)5555-1837
120693,Work,+61(2)5551-0155
120694,Home,+61(2)5555-3326
120694,Work,+61(2)5551-0156
120694,Cell,+61(5)5555-7211
120695,Home,+61(3)5555-9275
120695,Work,+61(3)5551-0157
120696,Home,+61(3)5555-2964
120696,Work,+61(3)5551-0158
120697,Home,+61(3)5555-2240
120697,Work,+61(3)5551-0159
120698,Home,+61(2)5555-1472
120698,Work,+61(2)5551-0160
120710,Work,+1(215)555-5906
120710,Home,+1(215)551-0161
120711,Work,+1(215)555-4632
120711,Home,+1(215)551-0162
120711,Cell,+1(215)444-0162
120712,Work,+1(305)555-4186
120712,Home,+1(305)551-0163
120713,Work,+1(619)555-2563
120713,Home,+1(619)551-0164
120714,Work,+1(305)555-2304
120714,Home,+1(305)551-0165
120715,Work,+1(619)555-0803
120715,Home,+1(619)551-0166
120716,Work,+1(215)555-4355
120716,Home,+1(215)551-0167
120717,Work,+1(305)555-6701
120717,Home,+1(305)551-0168
120717,Cell,+1(305)444-0168
120718,Work,+1(215)555-4227
120718,Home,+1(215)551-0169
120719,Work,+1(619)555-4982
120719,Home,+1(619)551-0170
120720,Work,+1(215)555-8554
120720,Home,+1(215)551-0171
120721,Work,+1(215)555-6000
120721,Home,+1(215)551-0172
120722,Work,+1(305)555-5122
120722,Home,+1(305)551-0173
120723,Work,+1(215)555-5958
120723,Home,+1(215)551-0174
120723,Cell,+1(215)444-0174
120724,Work,+1(619)555-0440
120724,Home,+1(619)551-0175
120725,Work,+1(619)555-5169
120725,Home,+1(619)551-0176
120726,Work,+1(215)555-6888
120726,Home,+1(215)551-0177
120727,Work,+1(619)555-4533
120727,Home,+1(619)551-0178
120728,Work,+1(305)555-8356
120728,Home,+1(305)551-0179
120729,Work,+1(305)555-2974
120729,Home,+1(305)551-0180
120729,Cell,+1(305)444-0180
120730,Work,+1(619)555-4032
120730,Home,+1(619)551-0181
120731,Work,+1(619)555-9567
120731,Home,+1(619)551-0182
120732,Work,+1(305)555-4219
120732,Home,+1(305)551-0183
120733,Work,+1(305)555-7807
120733,Home,+1(305)551-0184
120734,Work,+1(215)555-3310
120734,Home,+1(215)551-0185
120735,Work,+1(305)555-1721
120735,Home,+1(305)551-0186
120735,Cell,+1(305)444-0186
120736,Work,+1(305)555-9105
120736,Home,+1(305)551-0187
120737,Work,+1(619)555-2689
120737,Home,+1(619)551-0188
120738,Work,+1(215)555-9559
120738,Home,+1(215)551-0189
120739,Work,+1(305)555-1372
120739,Home,+1(305)551-0190
120740,Work,+1(305)555-2719
120740,Home,+1(305)551-0191
120741,Work,+1(215)555-5569
120741,Home,+1(215)551-0192
120741,Cell,+1(215)444-0192
120742,Work,+1(215)555-6582
120742,Home,+1(215)551-0193
120743,Work,+1(619)555-6846
120743,Home,+1(619)551-0194
120744,Work,+1(619)555-0143
120744,Home,+1(619)551-0195
120745,Work,+1(215)555-7676
120745,Home,+1(215)551-0196
120746,Work,+1(215)555-6082
120746,Home,+1(215)551-0197
120747,Work,+1(619)555-5377
120747,Home,+1(619)551-0198
120747,Cell,+1(619)444-0198
120748,Work,+1(305)555-0201
120748,Home,+1(305)551-0199
120749,Work,+1(619)555-6446
120749,Home,+1(619)551-0200
120750,Work,+1(305)555-9640
120750,Home,+1(305)551-0201
120751,Work,+1(305)555-1805
120751,Home,+1(305)551-0202
120752,Work,+1(305)555-6010
120752,Home,+1(305)551-0203
120753,Work,+1(305)555-9727
120753,Home,+1(305)551-0204
120753,Cell,+1(305)444-0204
120754,Work,+1(305)555-3511
120754,Home,+1(305)551-0205
120755,Work,+1(619)555-1527
120755,Home,+1(619)551-0206
120756,Work,+1(215)555-6657
120756,Home,+1(215)551-0207
120757,Work,+1(619)555-0623
120757,Home,+1(619)551-0208
120758,Work,+1(305)555-5818
120758,Home,+1(305)551-0209
120759,Work,+1(619)555-7062
120759,Home,+1(619)551-0210
120759,Cell,+1(619)444-0210
120760,Work,+1(619)555-4247
120760,Home,+1(619)551-0211
120761,Work,+1(215)555-0527
120761,Home,+1(215)551-0212
120762,Work,+1(215)555-4854
120762,Home,+1(215)551-0213
120763,Work,+1(619)555-9387
120763,Home,+1(619)551-0214
120764,Work,+1(619)555-6436
120764,Home,+1(619)551-0215
120765,Work,+1(619)555-5356
120765,Home,+1(619)551-0216
120765,Cell,+1(619)444-0216
120766,Work,+1(305)555-6341
120766,Home,+1(305)551-0217
120767,Work,+1(215)555-3071
120767,Home,+1(215)551-0218
120768,Work,+1(215)555-2212
120768,Home,+1(215)551-0219
120769,Work,+1(305)555-5573
120769,Home,+1(305)551-0220
120770,Work,+1(305)555-6063
120770,Home,+1(305)551-0221
120771,Work,+1(305)555-6011
120771,Home,+1(305)551-0222
120771,Cell,+1(305)444-0222
120772,Work,+1(305)555-0359
120772,Home,+1(305)551-0223
120773,Work,+1(305)555-7982
120773,Home,+1(305)551-0224
120774,Work,+1(215)555-3857
120774,Home,+1(215)551-0225
120775,Work,+1(305)555-7812
120775,Home,+1(305)551-0226
120776,Work,+1(305)555-2707
120776,Home,+1(305)551-0227
120777,Work,+1(619)555-2023
120777,Home,+1(619)551-0228
120777,Cell,+1(619)444-0228
120778,Work,+1(215)555-7547
120778,Home,+1(215)551-0229
120779,Work,+1(305)555-4515
120779,Home,+1(305)551-0230
120780,Work,+1(215)555-3722
120780,Home,+1(215)551-0231
120781,Work,+1(619)555-4046
120781,Home,+1(619)551-0232
120782,Work,+1(215)555-7783
120782,Home,+1(215)551-0233
120783,Work,+1(215)555-3040
120783,Home,+1(215)551-0234
120783,Cell,+1(215)444-0234
120784,Work,+1(215)555-9058
120784,Home,+1(215)551-0235
120785,Work,+1(619)555-3072
120785,Home,+1(619)551-0236
120786,Work,+1(305)555-6201
120786,Home,+1(305)551-0237
120787,Work,+1(619)555-7545
120787,Home,+1(619)551-0238
120788,Work,+1(619)555-5030
120788,Home,+1(619)551-0239
120789,Work,+1(305)555-4286
120789,Home,+1(305)551-0240
120789,Cell,+1(305)444-0240
120790,Work,+1(215)555-7662
120790,Home,+1(215)551-0241
120791,Work,+1(619)555-9901
120791,Home,+1(619)551-0242
120792,Work,+1(215)555-5717
120792,Home,+1(215)551-0243
120793,Work,+1(305)555-8000
120793,Home,+1(305)551-0244
120794,Work,+1(305)555-5119
120794,Home,+1(305)551-0245
120795,Work,+1(305)555-2007
120795,Home,+1(305)551-0246
120795,Cell,+1(305)444-0246
120796,Work,+1(215)555-9463
120796,Home,+1(215)551-0247
120797,Work,+1(305)555-8106
120797,Home,+1(305)551-0248
120798,Work,+1(305)555-2908
120798,Home,+1(305)551-0249
120799,Work,+1(215)555-3111
120799,Home,+1(215)551-0250
120800,Work,+1(619)555-5188
120800,Home,+1(619)551-0251
120801,Work,+1(215)555-7998
120801,Home,+1(215)551-0252
120801,Cell,+1(215)444-0252
120802,Work,+1(215)555-5158
120802,Home,+1(215)551-0253
120803,Work,+1(619)555-9578
120803,Home,+1(619)551-0254
120804,Work,+1(305)555-4751
120804,Home,+1(305)551-0255
120805,Work,+1(215)555-9486
120805,Home,+1(215)551-0256
120806,Work,+1(305)555-6399
120806,Home,+1(305)551-0257
120807,Work,+1(619)555-4830
120807,Home,+1(619)551-0258
120807,Cell,+1(619)444-0258
120808,Work,+1(619)555-6505
120808,Home,+1(619)551-0259
120809,Work,+1(305)555-5192
120809,Home,+1(305)551-0260
120810,Work,+1(305)555-2339
120810,Home,+1(305)551-0261
120811,Work,+1(305)555-8993
120811,Home,+1(305)551-0262
120812,Work,+1(305)555-6921
120812,Home,+1(305)551-0263
120813,Work,+1(305)555-4269
120813,Home,+1(305)551-0264
120813,Cell,+1(305)444-0264
120814,Work,+1(619)555-1460
120814,Home,+1(619)551-0265
120815,Work,+1(305)555-2251
120815,Home,+1(305)551-0266
120816,Work,+1(305)555-1987
120816,Home,+1(305)551-0267
120992,Work,+1(305)555-7722
120992,Home,+1(305)551-0268
120993,Work,+1(619)555-9907
120993,Home,+1(619)551-0269
120994,Work,+1(619)555-3507
120994,Home,+1(619)551-0270
120994,Cell,+1(619)444-0270
120995,Work,+1(215)555-4533
120995,Home,+1(215)551-0271
120996,Work,+1(619)555-2820
120996,Home,+1(619)551-0272
120997,Work,+1(215)555-0695
120997,Home,+1(215)551-0273
120998,Work,+1(619)555-5402
120998,Home,+1(619)551-0274
120999,Work,+1(619)555-1982
120999,Home,+1(619)551-0275
121000,Work,+1(305)555-0408
121000,Home,+1(305)551-0276
121000,Cell,+1(305)444-0276
121001,Work,+1(305)555-6853
121001,Home,+1(305)551-0277
121002,Work,+1(619)555-9232
121002,Home,+1(619)551-0278
121003,Work,+1(215)555-4378
121003,Home,+1(215)551-0279
121004,Work,+1(619)555-2394
121004,Home,+1(619)551-0280
121005,Work,+1(305)555-2082
121005,Home,+1(305)551-0281
121006,Work,+1(619)555-0569
121006,Home,+1(619)551-0282
121006,Cell,+1(619)444-0282
121007,Work,+1(215)555-4700
121007,Home,+1(215)551-0283
121008,Work,+1(215)555-6754
121008,Home,+1(215)551-0284
121009,Work,+1(619)555-6680
121009,Home,+1(619)551-0285
121010,Work,+1(305)555-8120
121010,Home,+1(305)551-0286
121011,Work,+1(305)555-1878
121011,Home,+1(305)551-0287
121012,Work,+1(305)555-9119
121012,Home,+1(305)551-0288
121012,Cell,+1(305)444-0288
121013,Work,+1(215)555-9450
121013,Home,+1(215)551-0289
121014,Work,+1(305)555-3565
121014,Home,+1(305)551-0290
121015,Work,+1(619)555-6445
121015,Home,+1(619)551-0291
121016,Work,+1(305)555-7515
121016,Home,+1(305)551-0292
121017,Work,+1(619)555-2281
121017,Home,+1(619)551-0293
121018,Work,+1(305)555-9454
121018,Home,+1(305)551-0294
121018,Cell,+1(305)444-0294
121019,Work,+1(215)555-4428
121019,Home,+1(215)551-0295
121020,Work,+1(215)555-6526
121020,Home,+1(215)551-0296
121021,Work,+1(619)555-8604
121021,Home,+1(619)551-0297
121022,Work,+1(619)555-6536
121022,Home,+1(619)551-0298
121023,Work,+1(619)555-5469
121023,Home,+1(619)551-0299
121024,Work,+1(619)555-2166
121024,Home,+1(619)551-0300
121024,Cell,+1(619)444-0300
121025,Work,+1(305)555-3846
121025,Home,+1(305)551-0301
121026,Work,+1(215)555-7016
121026,Home,+1(215)551-0302
121027,Work,+1(619)555-2873
121027,Home,+1(619)551-0303
121028,Work,+1(305)555-2755
121028,Home,+1(305)551-0304
121029,Work,+1(619)555-9474
121029,Home,+1(619)551-0305
121030,Work,+1(305)555-7013
121030,Home,+1(305)551-0306
121030,Cell,+1(305)444-0306
121031,Work,+1(215)555-7866
121031,Home,+1(215)551-0307
121032,Work,+1(619)555-8594
121032,Home,+1(619)551-0308
121033,Work,+1(215)555-8085
121033,Home,+1(215)551-0309
121034,Work,+1(305)555-2139
121034,Home,+1(305)551-0310
121035,Work,+1(619)555-8874
121035,Home,+1(619)551-0311
121036,Work,+1(215)555-9767
121036,Home,+1(215)551-0312
121036,Cell,+1(215)444-0312
121037,Work,+1(305)555-7231
121037,Home,+1(305)551-0313
121038,Work,+1(305)555-6394
121038,Home,+1(305)551-0314
121039,Work,+1(305)555-7540
121039,Home,+1(305)551-0315
121040,Work,+1(215)555-1584
121040,Home,+1(215)551-0316
121041,Work,+1(619)555-2090
121041,Home,+1(619)551-0317
121042,Work,+1(619)555-5518
121042,Home,+1(619)551-0318
121042,Cell,+1(619)444-0318
121043,Work,+1(215)555-9718
121043,Home,+1(215)551-0319
121044,Work,+1(305)555-5678
121044,Home,+1(305)551-0320
121045,Work,+1(619)555-1819
121045,Home,+1(619)551-0321
121046,Work,+1(215)555-1981
121046,Home,+1(215)551-0322
121047,Work,+1(619)555-7383
121047,Home,+1(619)551-0323
121048,Work,+1(305)555-9560
121048,Home,+1(305)551-0324
121048,Cell,+1(305)444-0324
121049,Work,+1(619)555-3981
121049,Home,+1(619)551-0325
121050,Work,+1(619)555-2865
121050,Home,+1(619)551-0326
121051,Work,+1(619)555-2275
121051,Home,+1(619)551-0327
121052,Work,+1(215)555-7625
121052,Home,+1(215)551-0328
121053,Work,+1(619)555-3618
121053,Home,+1(619)551-0329
121054,Work,+1(619)555-0147
121054,Home,+1(619)551-0330
121054,Cell,+1(619)444-0330
121055,Work,+1(305)555-4208
121055,Home,+1(305)551-0331
121056,Work,+1(619)555-0098
121056,Home,+1(619)551-0332
121057,Work,+1(215)555-1679
121057,Home,+1(215)551-0333
121058,Work,+1(619)555-5751
121058,Home,+1(619)551-0334
121059,Work,+1(619)555-9407
121059,Home,+1(619)551-0335
121060,Work,+1(305)555-4132
121060,Home,+1(305)551-0336
121060,Cell,+1(305)444-0336
121061,Work,+1(305)555-9635
121061,Home,+1(305)551-0337
121062,Work,+1(619)555-8226
121062,Home,+1(619)551-0338
121063,Work,+1(305)555-0288
121063,Home,+1(305)551-0339
121064,Work,+1(619)555-7308
121064,Home,+1(619)551-0340
121065,Work,+1(619)555-4528
121065,Home,+1(619)551-0341
121066,Work,+1(215)555-3376
121066,Home,+1(215)551-0342
121066,Cell,+1(215)444-0342
121067,Work,+1(619)555-9780
121067,Home,+1(619)551-0343
121068,Work,+1(619)555-9814
121068,Home,+1(619)551-0344
121069,Work,+1(619)555-4929
121069,Home,+1(619)551-0345
121070,Work,+1(305)555-4038
121070,Home,+1(305)551-0346
121071,Work,+1(305)555-9529
121071,Home,+1(305)551-0347
121072,Work,+1(215)555-6799
121072,Home,+1(215)551-0348
121072,Cell,+1(215)444-0348
121073,Work,+1(305)555-0051
121073,Home,+1(305)551-0349
121074,Work,+1(619)555-0096
121074,Home,+1(619)551-0350
121075,Work,+1(619)555-1772
121075,Home,+1(619)551-0351
121076,Work,+1(215)555-6398
121076,Home,+1(215)551-0352
121077,Work,+1(305)555-9878
121077,Home,+1(305)551-0353
121078,Work,+1(305)555-0932
121078,Home,+1(305)551-0354
121078,Cell,+1(305)444-0354
121079,Work,+1(215)555-4543
121079,Home,+1(215)551-0355
121080,Work,+1(305)555-9941
121080,Home,+1(305)551-0356
121081,Work,+1(619)555-7939
121081,Home,+1(619)551-0357
121082,Work,+1(305)555-6967
121082,Home,+1(305)551-0358
121083,Work,+1(305)555-1791
121083,Home,+1(305)551-0359
121084,Work,+1(619)555-7593
121084,Home,+1(619)551-0360
121084,Cell,+1(619)444-0360
121085,Work,+1(619)555-1777
121085,Home,+1(619)551-0361
121086,Work,+1(305)555-3637
121086,Home,+1(305)551-0362
121087,Work,+1(305)555-6213
121087,Home,+1(305)551-0363
121088,Work,+1(215)555-0703
121088,Home,+1(215)551-0364
121089,Work,+1(305)555-9141
121089,Home,+1(305)551-0365
121090,Work,+1(619)555-8402
121090,Home,+1(619)551-0366
121090,Cell,+1(619)444-0366
121091,Work,+1(215)555-9375
121091,Home,+1(215)551-0367
121092,Work,+1(619)555-6418
121092,Home,+1(619)551-0368
121093,Work,+1(619)555-1087
121093,Home,+1(619)551-0369
121094,Work,+1(619)555-0102
121094,Home,+1(619)551-0370
121095,Work,+1(619)555-7907
121095,Home,+1(619)551-0371
121096,Work,+1(305)555-2270
121096,Home,+1(305)551-0372
121096,Cell,+1(305)444-0372
121097,Work,+1(215)555-6072
121097,Home,+1(215)551-0373
121098,Work,+1(215)555-6464
121098,Home,+1(215)551-0374
121099,Work,+1(215)555-2433
121099,Home,+1(215)551-0375
121100,Work,+1(619)555-8559
121100,Home,+1(619)551-0376
121101,Work,+1(619)555-4561
121101,Home,+1(619)551-0377
121102,Work,+1(619)555-0450
121102,Home,+1(619)551-0378
121102,Cell,+1(619)444-0378
121103,Work,+1(619)555-1651
121103,Home,+1(619)551-0379
121104,Work,+1(215)555-0622
121104,Home,+1(215)551-0380
121105,Work,+1(305)555-2346
121105,Home,+1(305)551-0381
121106,Work,+1(305)555-9731
121106,Home,+1(305)551-0382
121107,Work,+1(215)555-1258
121107,Home,+1(215)551-0383
121108,Work,+1(305)555-4437
121108,Home,+1(305)551-0384
121108,Cell,+1(305)444-0384
121109,Work,+1(619)555-0088
121109,Home,+1(619)551-0385
121110,Work,+1(305)555-4297
121110,Home,+1(305)551-0386
121111,Work,+1(619)555-7902
121111,Home,+1(619)551-0387
121112,Work,+1(305)555-1561
121112,Home,+1(305)551-0388
121113,Work,+1(305)555-0869
121113,Home,+1(305)551-0389
121114,Work,+1(619)555-4987
121114,Home,+1(619)551-0390
121114,Cell,+1(619)444-0390
121115,Work,+1(619)555-6537
121115,Home,+1(619)551-0391
121116,Work,+1(619)555-0264
121116,Home,+1(619)551-0392
121117,Work,+1(215)555-1234
121117,Home,+1(215)551-0393
121118,Work,+1(215)555-0034
121118,Home,+1(215)551-0394
121119,Work,+1(215)555-9732
121119,Home,+1(215)551-0395
121120,Work,+1(215)555-0834
121120,Home,+1(215)551-0396
121120,Cell,+1(215)444-0396
121121,Work,+1(215)555-2891
121121,Home,+1(215)551-0397
121122,Work,+1(305)555-2093
121122,Home,+1(305)551-0398
121123,Work,+1(215)555-7657
121123,Home,+1(215)551-0399
121124,Work,+1(305)555-4758
121124,Home,+1(305)551-0400
121125,Work,+1(215)555-8927
121125,Home,+1(215)551-0401
121126,Work,+1(215)555-3516
121126,Home,+1(215)551-0402
121126,Cell,+1(215)444-0402
121127,Work,+1(619)555-2114
121127,Home,+1(619)551-0403
121128,Work,+1(619)555-4849
121128,Home,+1(619)551-0404
121129,Work,+1(305)555-1220
121129,Home,+1(305)551-0405
121130,Work,+1(215)555-8199
121130,Home,+1(215)551-0406
121131,Work,+1(619)555-8744
121131,Home,+1(619)551-0407
121132,Work,+1(619)555-8510
121132,Home,+1(619)551-0408
121132,Cell,+1(619)444-0408
121133,Work,+1(215)555-5099
121133,Home,+1(215)551-0409
121134,Work,+1(619)555-7418
121134,Home,+1(619)551-0410
121135,Work,+1(215)555-4186
121135,Home,+1(215)551-0411
121136,Work,+1(215)555-6043
121136,Home,+1(215)551-0412
121137,Work,+1(305)555-4944
121137,Home,+1(305)551-0413
121138,Work,+1(215)555-4627
121138,Home,+1(215)551-0414
121138,Cell,+1(215)444-0414
121139,Work,+1(619)555-9898
121139,Home,+1(619)551-0415
121140,Work,+1(619)555-3558
121140,Home,+1(619)551-0416
121141,Work,+1(215)555-4111
121141,Home,+1(215)551-0417
121142,Work,+1(215)555-0964
121142,Home,+1(215)551-0418
121143,Work,+1(305)555-8022
121143,Home,+1(305)551-0419
121144,Work,+1(305)555-4598
121144,Home,+1(305)551-0420
121144,Cell,+1(305)444-0420
121145,Work,+1(305)555-1076
121145,Home,+1(305)551-0421
121146,Work,+1(215)555-0546
121146,Home,+1(215)551-0422
121147,Work,+1(305)555-5653
121147,Home,+1(305)551-0423
121148,Work,+1(305)555-4118
121148,Home,+1(305)551-0424
20683,Cell,+1(215)555-2000
21149,Work,+1(305)551-3232
21149,Home,+1(305)555-8659
21149,Cell,+1(305)555-8660
12099,Cell,+1(619)555-2022
;;;;
data CERTADV.EMPORG;
  infile datalines dsd truncover;
  input EmployeeID:32. JobTitle:$25. Department:$40. ManagerID:32.;
datalines4;
120101,Director,Sales Management,120261
120102,Sales Manager,Sales Management,120101
120103,Sales Manager,Sales Management,120101
120104,Administration Manager,Administration,120101
120105,Secretary I,Administration,120101
120106,Office Assistant II,Administration,120104
120107,Office Assistant III,Administration,120104
120108,Warehouse Assistant II,Administration,120104
120109,Warehouse Assistant I,Administration,120104
120110,Warehouse Assistant III,Administration,120104
120111,Security Guard II,Administration,120104
120112,Security Guard I,Administration,120104
120113,Security Guard II,Administration,120104
120114,Security Manager,Administration,120104
120115,Service Assistant I,Administration,120104
120116,Service Assistant II,Administration,120104
120117,Cabinet Maker III,Engineering,120104
120118,Cabinet Maker II,Engineering,120104
120119,Electrician IV,Engineering,120104
120120,Electrician II,Engineering,120104
120121,Sales Rep. II,Sales,120102
120122,Sales Rep. II,Sales,120102
120123,Sales Rep. I,Sales,120102
120124,Sales Rep. I,Sales,120102
120125,Sales Rep. IV,Sales,120102
120126,Sales Rep. II,Sales,120102
120127,Sales Rep. II,Sales,120102
120128,Sales Rep. IV,Sales,120102
120129,Sales Rep. III,Sales,120102
120130,Sales Rep. I,Sales,120102
120131,Sales Rep. I,Sales,120102
120132,Sales Rep. III,Sales,120102
120133,Sales Rep. II,Sales,120102
120134,Sales Rep. II,Sales,120102
120135,Sales Rep. IV,Sales,120102
120136,Sales Rep. I,Sales,120102
120137,Sales Rep. III,Sales,120102
120138,Sales Rep. I,Sales,120102
120139,Sales Rep. II,Sales,120102
120140,Sales Rep. I,Sales,120103
120141,Sales Rep. II,Sales,120103
120142,Sales Rep. III,Sales,120103
120143,Sales Rep. II,Sales,120103
120144,Sales Rep. III,Sales,120103
120145,Sales Rep. II,Sales,120103
120146,Sales Rep. I,Sales,120103
120147,Sales Rep. II,Sales,120103
120148,Sales Rep. III,Sales,120103
120149,Sales Rep. I,Sales,120103
120150,Sales Rep. III,Sales,120103
120151,Sales Rep. II,Sales,120103
120152,Sales Rep. I,Sales,120102
120153,Sales Rep. I,Sales,120102
120154,Sales Rep. III,Sales,120102
120155,Sales Rep. III,Sales,120102
120156,Sales Rep. I,Sales,120102
120157,Sales Rep. II,Sales,120102
120158,Sales Rep. III,Sales,120102
120159,Sales Rep. IV,Sales,120102
120160,Sales Rep. I,Sales,120102
120161,Sales Rep. III,Sales,120102
120162,Sales Rep. I,Sales,120102
120163,Sales Rep. II,Sales,120102
120164,Sales Rep. II,Sales,120102
120165,Sales Rep. I,Sales,120102
120166,Sales Rep. IV,Sales,120102
120167,Sales Rep. I,Sales,120102
120168,Sales Rep. I,Sales,120102
120169,Sales Rep. III,Sales,120102
120170,Sales Rep. III,Sales,120102
120171,Sales Rep. II,Sales,120102
120172,Sales Rep. III,Sales,120102
120173,Sales Rep. I,Sales,120102
120174,Sales Rep. I,Sales,120102
120175,Sales Rep. I,Sales,120102
120176,Sales Rep. I,Sales,120102
120177,Sales Rep. III,Sales,120102
120178,Sales Rep. II,Sales,120102
120179,Sales Rep. III,Sales,120102
120180,Sales Rep. II,Sales,120102
120181,Temp. Sales Rep.,Sales,120103
120182,Temp. Sales Rep.,Sales,120103
120183,Temp. Sales Rep.,Sales,120103
120184,Temp. Sales Rep.,Sales,120103
120185,Temp. Sales Rep.,Sales,120103
120186,Temp. Sales Rep.,Sales,120103
120187,Temp. Sales Rep.,Sales,120103
120188,Temp. Sales Rep.,Sales,120103
120189,Temp. Sales Rep.,Sales,120103
120190,Trainee,Sales,120103
120191,Trainee,Sales,120103
120192,Trainee,Sales,120103
120193,Trainee,Sales,120103
120194,Trainee,Sales,120103
120195,Trainee,Sales,120103
120196,Trainee,Sales,120103
120197,Trainee,Sales,120103
120198,Sales Rep. III,Sales,120103
120259,Chief Executive Officer,Executives,
120260,Chief Marketing Officer,Executives,120259
120261,Chief Sales Officer,Executives,120259
120262,Chief Financial Officer,Executives,120259
120263,Financial Analyst III,Group Financials,120262
120264,Financial Analyst II,Group Financials,120262
120265,Auditor III,Group Financials,120262
120266,Secretary IV,Secretary of the Board,120259
120267,Secretary III,Secretary of the Board,120259
120268,Senior Strategist,Strategy,120260
120269,Strategist II,Strategy,120260
120270,Concession Director,Concession Management,120261
120271,Concession Manager,Concession Management,120270
120272,Concession Consultant II,Concession Management,120271
120273,Concession Assistant III,Concession Management,120271
120274,Concession Assistant I,Concession Management,120271
120275,Concession Consultant II,Concession Management,120271
120276,Concession Assistant II,Concession Management,120271
120277,Concession Consultant I,Concession Management,120271
120278,Concession Assistant III,Concession Management,120271
120279,Concession Consultant I,Concession Management,120271
120280,Concession Consultant III,Concession Management,120271
120656,Logistics Coordinator II,Logistics Management,120660
120657,Logistics Coordinator I,Logistics Management,120660
120658,Logistics Coordinator II,Logistics Management,120660
120659,Director,Logistics Management,120259
120660,Logistics Manager,Logistics Management,120659
120661,Senior Logistics Manager,Logistics Management,120659
120662,Secretary II,Logistics Management,120659
120663,Pricing Manager,Logistics Management,120659
120664,Pricing Specialist,Logistics Management,120663
120665,Senior Logistics Manager,Logistics Management,120659
120666,Logistics Manager,Logistics Management,120659
120667,Office Assistant III,Logistics Management,120666
120668,Services Manager,Logistics Management,120659
120669,Services Assistant IV,Logistics Management,120668
120670,Shipping Manager,Stock & Shipping,120659
120671,Shipping Agent III,Stock & Shipping,120670
120672,Shipping Manager,Stock & Shipping,120659
120673,Shipping Agent II,Stock & Shipping,120672
120677,Shipping Manager,Stock & Shipping,120659
120678,Shipping Agent III,Stock & Shipping,120677
120679,Shipping Manager,Stock & Shipping,120659
120680,Shipping Agent I,Stock & Shipping,120679
120681,Shipping Agent II,Stock & Shipping,120679
120682,Shipping Agent I,Stock & Shipping,120679
120683,Shipping Agent III,Stock & Shipping,120679
120684,Warehouse Assistant I,Stock & Shipping,120679
120685,Warehouse Assistant I,Stock & Shipping,120679
120686,Warehouse Assistant II,Stock & Shipping,120679
120687,Warehouse Assistant I,Stock & Shipping,120679
120688,Warehouse Assistant I,Stock & Shipping,120679
120689,Warehouse Assistant III,Stock & Shipping,120679
120690,Warehouse Assistant I,Stock & Shipping,120679
120691,Shipping Manager,Stock & Shipping,120659
120692,Shipping Agent II,Stock & Shipping,120691
120693,Shipping Agent I,Stock & Shipping,120691
120694,Warehouse Assistant I,Stock & Shipping,120691
120695,Warehouse Assistant II,Stock & Shipping,120691
120696,Warehouse Assistant I,Stock & Shipping,120691
120697,Warehouse Assistant IV,Stock & Shipping,120691
120698,Warehouse Assistant I,Stock & Shipping,120691
120710,Business Analyst II,Marketing,120719
120711,Business Analyst III,Marketing,120719
120712,Marketing Manager,Marketing,120719
120713,Marketing Assistant III,Marketing,120712
120714,Marketing Manager,Marketing,120719
120715,Marketing Assistant II,Marketing,120714
120716,Events Manager,Marketing,120719
120717,Marketing Assistant II,Marketing,120716
120718,Marketing Assistant II,Marketing,120716
120719,Senior Marketing Manager,Marketing,120260
120720,Corp. Comm. Manager,Marketing,120719
120721,Marketing Assistant II,Marketing,120720
120722,Corp. Comm. Specialist I,Marketing,120720
120723,Corp. Comm. Specialist II,Marketing,120720
120724,Marketing Manager,Marketing,120719
120725,Marketing Assistant II,Marketing,120724
120726,Marketing Assistant I,Marketing,120724
120727,Marketing Assistant IV,Marketing,120724
120728,Purchasing Agent II,Purchasing,120735
120729,Purchasing Agent I,Purchasing,120735
120730,Purchasing Agent I,Purchasing,120735
120731,Purchasing Agent II,Purchasing,120735
120732,Purchasing Agent III,Purchasing,120736
120733,Purchasing Agent I,Purchasing,120736
120734,Purchasing Agent III,Purchasing,120736
120735,Purchasing Manager,Purchasing,120261
120736,Purchasing Manager,Purchasing,120261
120737,Purchasing Manager,Purchasing,120261
120738,Purchasing Agent I,Purchasing,120737
120739,Purchasing Agent III,Purchasing,120737
120740,Purchasing Agent II,Purchasing,120737
120741,Purchasing Agent III,Purchasing,120737
120742,Purchasing Agent I,Purchasing,120737
120743,Purchasing Agent II,Purchasing,120737
120744,Purchasing Agent II,Purchasing,120737
120745,Purchasing Agent I,Purchasing,120737
120746,Account Manager,Accounts,120262
120747,Financial Controller I,Accounts,120746
120748,Building Admin. Manager,Accounts,120262
120749,Office Assistant II,Accounts,120748
120750,Accountant I,Accounts,120751
120751,Finance Manager,Accounts,120262
120752,Accountant I,Accounts,120751
120753,Financial Controller II,Accounts,120751
120754,Accountant II,Accounts,120751
120755,Accountant III,Accounts,120751
120756,Financial Controller III,Accounts,120751
120757,Accountant III,Accounts,120751
120758,Accountant II,Accounts,120751
120759,Accountant II,Accounts,120746
120760,Financial Controller III,Accounts,120746
120761,Accountant I,Accounts,120746
120762,Accountant I,Accounts,120746
120763,Auditor II,Accounts Management,120766
120764,Auditor I,Accounts Management,120766
120765,Financial Controller III,Accounts Management,120766
120766,Auditing Manager,Accounts Management,120262
120767,Accountant I,Accounts Management,120766
120768,Accountant II,Accounts Management,120766
120769,Auditor II,Accounts Management,120766
120770,Auditor I,Accounts Management,120766
120771,Accountant II,Accounts Management,120766
120772,HR Generalist I,Group HR Management,120780
120773,HR Generalist II,Group HR Management,120780
120774,HR Specialist II,Group HR Management,120780
120775,HR Analyst II,Group HR Management,120780
120776,HR Generalist III,Group HR Management,120780
120777,HR Specialist I,Group HR Management,120780
120778,HR Specialist I,Group HR Management,120780
120779,HR Analyst II,Group HR Management,120780
120780,HR Manager,Group HR Management,120262
120781,Recruiter I,Group HR Management,120782
120782,Recruitment Manager,Group HR Management,120262
120783,Recruiter III,Group HR Management,120782
120784,Recruiter II,Group HR Management,120782
120785,Training Manager,Group HR Management,120780
120786,Trainer I,Group HR Management,120785
120787,Trainer II,Group HR Management,120785
120788,Trainer I,Group HR Management,120785
120789,Trainer III,Group HR Management,120785
120790,ETL Specialist II,IS,120791
120791,Systems Architect IV,IS,120798
120792,Systems Architect II,IS,120791
120793,ETL Specialist I,IS,120791
120794,Applications Developer IV,IS,120800
120795,Applications Developer II,IS,120794
120796,Applications Developer II,IS,120794
120797,Applications Developer I,IS,120794
120798,Senior Project Manager,IS,120800
120799,Office Assistant III,IS,120800
120800,IS Director,IS,120262
120801,Applications Developer I,IS,120798
120802,Applications Developer IV,IS,120798
120803,Applications Developer I,IS,120798
120804,IS Administrator III,IS,120798
120805,BI Administrator IV,IS,120798
120806,IS Administrator II,IS,120798
120807,IS Administrator I,IS,120798
120808,BI Specialist II,IS,120798
120809,BI Architect II,IS,120798
120810,IS Architect III,IS,120798
120811,Applications Developer I,IS,120814
120812,Applications Developer II,IS,120814
120813,Applications Developer IV,IS,120814
120814,Project Manager,IS,120800
120815,Service Administrator III,Marketing,120719
120816,Service Administrator I,Marketing,120719
120992,Office Assistant I,Administration,120996
120993,Office Assistant I,Administration,120996
120994,Office Administrator I,Administration,120996
120995,Office Administrator II,Administration,120996
120996,Office Assistant IV,Administration,121000
120997,Shipping Administrator I,Administration,121000
120998,Clerk I,Administration,120997
120999,Clerk I,Administration,120997
121000,Administration Manager,Administration,121141
121001,Warehouse Manager,Administration,121000
121002,Warehouse Assistant II,Administration,121001
121003,Warehouse Assistant I,Administration,121001
121004,Security Manager,Administration,121000
121005,Security Guard I,Administration,121004
121006,Security Guard I,Administration,121004
121007,Security Guard II,Administration,121004
121008,Security Guard II,Administration,121004
121009,Service Administrator I,Administration,121000
121010,Service Assistant I,Administration,121009
121011,Service Assistant I,Administration,121009
121012,Service Assistant II,Administration,121009
121013,Electrician II,Engineering,121016
121014,Electrician III,Engineering,121016
121015,Technician I,Engineering,121016
121016,Technical Manager,Engineering,121000
121017,Technician II,Engineering,121016
121018,Sales Rep. II,Sales,121144
121019,Sales Rep. IV,Sales,121144
121020,Sales Rep. IV,Sales,121144
121021,Sales Rep. IV,Sales,121144
121022,Sales Rep. IV,Sales,121144
121023,Sales Rep. I,Sales,121144
121024,Sales Rep. II,Sales,121144
121025,Sales Rep. II,Sales,121144
121026,Sales Rep. IV,Sales,121144
121027,Sales Rep. II,Sales,121144
121028,Sales Rep. I,Sales,121144
121029,Sales Rep. I,Sales,121144
121030,Sales Rep. I,Sales,121144
121031,Sales Rep. III,Sales,121144
121032,Sales Rep. IV,Sales,121144
121033,Sales Rep. III,Sales,121144
121034,Sales Rep. II,Sales,121144
121035,Sales Rep. II,Sales,121144
121036,Sales Rep. I,Sales,121144
121037,Sales Rep. III,Sales,121144
121038,Sales Rep. I,Sales,121144
121039,Sales Rep. II,Sales,121144
121040,Sales Rep. III,Sales,121144
121041,Sales Rep. II,Sales,121144
121042,Sales Rep. III,Sales,121144
121043,Sales Rep. II,Sales,121144
121044,Sales Rep. I,Sales,121144
121045,Sales Rep. II,Sales,121143
121046,Sales Rep. I,Sales,121143
121047,Sales Rep. I,Sales,121143
121048,Sales Rep. I,Sales,121143
121049,Sales Rep. I,Sales,121143
121050,Sales Rep. II,Sales,121143
121051,Sales Rep. I,Sales,121143
121052,Sales Rep. II,Sales,121143
121053,Sales Rep. III,Sales,121143
121054,Sales Rep. III,Sales,121143
121055,Sales Rep. III,Sales,121143
121056,Sales Rep. II,Sales,121143
121057,Sales Rep. I,Sales,121143
121058,Sales Rep. I,Sales,121143
121059,Sales Rep. II,Sales,121143
121060,Sales Rep. III,Sales,121143
121061,Sales Rep. III,Sales,121143
121062,Sales Rep. IV,Sales,121145
121063,Sales Rep. II,Sales,121145
121064,Sales Rep. I,Sales,121145
121065,Sales Rep. III,Sales,121145
121066,Sales Rep. II,Sales,121145
121067,Sales Rep. IV,Sales,121145
121068,Sales Rep. II,Sales,121145
121069,Sales Rep. II,Sales,121145
121070,Sales Rep. III,Sales,121145
121071,Sales Rep. III,Sales,121145
121072,Sales Rep. I,Sales,121145
121073,Sales Rep. I,Sales,121145
121074,Sales Rep. I,Sales,121145
121075,Sales Rep. II,Sales,121145
121076,Sales Rep. II,Sales,121143
121077,Sales Rep. III,Sales,121143
121078,Sales Rep. I,Sales,121143
121079,Sales Rep. I,Sales,121143
121080,Sales Rep. I,Sales,121143
121081,Sales Rep. III,Sales,121143
121082,Sales Rep. III,Sales,121143
121083,Sales Rep. I,Sales,121143
121084,Sales Rep. I,Sales,121143
121085,Sales Rep. IV,Sales,121143
121086,Sales Rep. I,Sales,121143
121087,Sales Rep. II,Sales,121143
121088,Sales Rep. I,Sales,121143
121089,Sales Rep. II,Sales,121143
121090,Sales Rep. I,Sales,121143
121091,Sales Rep. II,Sales,121143
121092,Sales Rep. I,Sales,121143
121093,Sales Rep. I,Sales,121143
121094,Sales Rep. I,Sales,121143
121095,Sales Rep. II,Sales,121143
121096,Sales Rep. I,Sales,121143
121097,Sales Rep. II,Sales,121143
121098,Sales Rep. I,Sales,121143
121099,Sales Rep. IV,Sales,121143
121100,Sales Rep. II,Sales,121143
121101,Sales Rep. I,Sales,121143
121102,Sales Rep. I,Sales,121143
121103,Sales Rep. I,Sales,121143
121104,Sales Rep. II,Sales,121143
121105,Sales Rep. III,Sales,121143
121106,Sales Rep. I,Sales,121143
121107,Sales Rep. IV,Sales,121143
121108,Sales Rep. I,Sales,121143
121109,Sales Rep. I,Sales,121143
121110,Temp. Sales Rep.,Sales,121145
121111,Temp. Sales Rep.,Sales,121145
121112,Temp. Sales Rep.,Sales,121145
121113,Temp. Sales Rep.,Sales,121145
121114,Temp. Sales Rep.,Sales,121145
121115,Temp. Sales Rep.,Sales,121145
121116,Temp. Sales Rep.,Sales,121145
121117,Temp. Sales Rep.,Sales,121145
121118,Temp. Sales Rep.,Sales,121145
121119,Temp. Sales Rep.,Sales,121145
121120,Temp. Sales Rep.,Sales,121145
121121,Temp. Sales Rep.,Sales,121145
121122,Temp. Sales Rep.,Sales,121145
121123,Temp. Sales Rep.,Sales,121145
121124,Temp. Sales Rep.,Sales,121145
121125,Trainee,Sales,121145
121126,Trainee,Sales,121145
121127,Trainee,Sales,121145
121128,Trainee,Sales,121145
121129,Trainee,Sales,121145
121130,Trainee,Sales,121145
121131,Trainee,Sales,121145
121132,Trainee,Sales,121145
121133,Trainee,Sales,121145
121134,Trainee,Sales,121145
121135,Sales Rep. I,Sales,121145
121136,Sales Rep. I,Sales,121145
121137,Sales Rep. I,Sales,121145
121138,Sales Rep. I,Sales,121145
121139,Sales Rep. II,Sales,121145
121140,Sales Rep. I,Sales,121145
121141,Vice President,Sales Management,120261
121142,Director,Sales Management,121141
121143,Senior Sales Manager,Sales Management,121142
121144,Sales Manager,Sales Management,121142
121145,Sales Manager,Sales Management,121142
121146,Secretary III,Sales Management,121141
121147,Secretary II,Sales Management,121142
121148,Business Analyst II,Sales Management,121141
;;;;
data CERTADV.EMPADD;
  infile datalines dsd truncover;
  input EmployeeID:32. EmployeeName:$40. StreetID:32. StreetNumber:32. StreetName:$40. City:$30. State:$2. PostalCode:$10. Country:$2.;
datalines4;
121044,"Abbott, Ray",9260116912,2267,Edwards Mill Rd,Miami-Dade,FL,33135,US
120145,"Aisbitt, Sandy",1600101803,30,Bingera Street,Melbourne,,2001,AU
120761,"Akinfolarin, Tameaka",9260121030,5,Donnybrook Rd,Philadelphia,PA,19145,US
120656,"Amos, Salley",9260123736,3524,Calico Ct,San Diego,CA,92116,US
121107,"Anger, Rose",9260120989,744,Chapwith Rd,Philadelphia,PA,19142,US
121038,"Anstey, David",9260116991,939,Hilltop Needmore Rd,Miami-Dade,FL,33157,US
120273,"Antonini, Doris",9260116925,681,Ferguson Rd,Miami-Dade,FL,33141,US
120759,"Apr, Nishan",9260123711,105,Brack Penny Rd,San Diego,CA,92071,US
120798,"Ardskin, Elizabeth",9260116954,701,Glenridge Dr,Miami-Dade,FL,33177,US
121030,"Areu, Jeryl",9260116937,265,Fyfe Ct,Miami-Dade,Fl,33133,US
121017,"Arizmendi, Gilbert",9260123825,379,Englehardt Dr,San Diego,CA,91950,US
121062,"Armant, Debra",9260123787,10398,Crown Forest Ct,San Diego,CA,92025,US
121119,"Armogida, Bruce",9260121159,1914,Lansing St,Philadelphia,PA,19119,US
120812,"Arruza, Fauver",9260116937,265,Fyfe Ct,Miami-Dade,FL,33133,US
120756,"Asta, Wendy",9260121146,3565,Lake Park Dr,Philadelphia,PA,19145,US
120754,"Atkins, John",9260116816,6137,Blue Water Ct,Miami-Dade,FL,33161,US
120185,"Bahlman, Sharon",1600103028,24,LaTrobe Street,Sydney,,2165,AU
120109,"Baker, Gabriele",1600103074,166,Toorak Road,Sydney,,2119,AU
120710,"Baltzell, Timothy",9260120981,31,Castalia Dr,Philadelphia,PA,19140,US
121007,"Banaszak, John",9260121148,77,Lake Tillery Dr,Philadelphia,PA,19139,US
121011,"Banchi, Steven",9260116837,522,Buncombe St,Miami-Dade,FL,33031,US
120188,"Baran, Shanmuganathan",1600102985,207,Canterbury Road,Sydney,,1225,AU
120144,"Barbis, Viney",1600102974,3,Alice Street,Sydney,,2114,AU
120168,"Barcoe, Selina",1600101850,435,Sherwood Rd,Melbourne,,8003,AU
120182,"Barreto, Geok-Seng",1600103062,241,Royal Perade,Sydney,,1115,AU
121049,"Bataineh, Perrior",9260123694,892,Birchland Dr,San Diego,CA,92126,US
120998,"Benedicto, Tondelayo",9260123862,2902,Gable Ridge Ln,San Diego,CA,92118,US
120800,"Benyami, Fred",9260123837,1498,Falconwood Dr,San Diego,CA,92069,US
120811,"Bergeron-Jeter, Dale",9260116773,2356,Aileen Dr,Miami-Dade,FL,33010,US
120733,"Bezinque, Michael",9260116798,2732,Bell Dr,Miami-Dade,FL,33033,US
120104,"Billington, Kareen",1600103066,40,Smith Street,Sydney,,1670,AU
120735,"Bilobran, Brenda",9260116785,11217,Avent Ferry Rd,Miami-Dade,FL,33160,US
121035,"Blackley, James",9260123811,41,Dubose St,San Diego,CA,92110,US
120183,"Blanton, Brig",1600101844,6,Palmiston Cresent,Melbourne,,3150,AU
121141,"Bleu, Henri Le",9260121129,29,Joliesse Ln,Philadelphia,PA,19103,US
120993,"Boatright, Lorraine",9260123871,110,Glascock St,San Diego,CA,91950,US
120198,"Body, Meera",1600103038,51,Martin Place,Sydney,,1131,AU
121006,"Bolster, Bernard",9260123715,77,Braswell Ct,San Diego,CA,91950,US
121116,"Bond-Teague, Mary",9260123677,24,Bashford Rd,San Diego,CA,92106,US
121137,"Boocks, Michael. R.",9260117046,1555,Laurdane Rd,Miami-Dade,FL,33183,US
120728,"Borge, Kathryn",9260116823,360,Bridgepath Dr,Miami-Dade,FL,33150,US
121109,"Boulus, Harold",9260123772,4320,Colony Woods Dr,San Diego,CA,92054,US
120265,"Branly, Wanda",9260121147,21,Lake Pine Dr,Philadelphia,PA,19135,US
121140,"Briggi, Saunders",9260123917,991,Holman St,San Diego,CA,92021,US
121012,"Broome, Carmelo",9260116832,368,Buck Jones Rd,Miami-Dade,FL,33144,US
120724,"Brown, Hampie",9260123770,1951,Cobble Creek Ln,San Diego,CA,92054,US
121101,"Buckner, Burnetta",9260123893,3385,Hampton Ridge Rd,San Diego,CA,92114,US
120114,"Buddery, Jeannette",1600103023,12,Hunua Road Papakura,Sydney,,1004,AU
120662,"Burroughs, Lemonica",9260116814,2565,Bledsoe Ave,Miami-Dade,FL,33176,US
120730,"Burt, Woodson",9260123853,136,Fox Rd,San Diego,CA,92128,US
120713,"Campbell, Carston",9260123835,19,Fairwinds Dr,San Diego,CA,92069,US
120181,"Cantatore, Lorian",1600102985,207,Canterbury Road,Sydney,,1225,AU
121144,"Capachietti, Renee",9260116911,379,Edgeside Ct,Miami-Dade,FL,33012,US
120763,"Capps, Ramond",9260123777,3384,Cotton Mill Dr,San Diego,CA,92113,US
121050,"Capristo-Abramczyk, Patricia",9260123928,157,Ithaca Ln,San Diego,CA,91950,US
120688,"Carcaterra, Lisa",9260123971,91,Langstonshire Ln,San Diego,Ca,92119,US
121059,"Carhide, Jacqulin",9260123889,5637,Greenfield Dr,San Diego,CA,91911,US
121025,"Cassey, Barnaby",9260116769,1609,Abbey Ln,Miami-Dade,FL,33134,US
121121,"Cassone, Halouise",9260121067,6,Frissell Ave,Philadelphia,PA,19142,US
120187,"Catenacci, Reyne",1600101829,44,Gow Street,Melbourne,,2066,AU
120146,"Cederlund, Wendall",1600103054,1,Pacific Rise Mount Wellington,Sydney,,20000,AU
120149,"Chantharasy, Judy",1600101820,1,Embarcadero Center Site 1500,Melbourne,,3000,AU
121097,"Chernega, Willeta",9260121008,17,Cottonwood Ln,Philadelphia,PA,19111,US
121080,"Chinnis, Kumar",9260116996,60,Hodge Rd,Miami-Dade,FL,33138,US
120791,"Chiseloff, Richard",9260123830,1726,Evans Rd,San Diego,CA,92067,US
121048,"Clark, Lawrie",9260116885,5716,Deacons Bend Ct,Miami-Dade,FL,33184,US
121002,"Clark, Terry-Ann",9260123906,57,Hickory Dr,San Diego,CA,92104,US
120127,"Clarkson, Sharryn",1600102972,21,Albert St,Sydney,,1170,AU
120263,"Cleverley, Bobby",9260123710,622,Boylan Ave,San Diego,CA,92054,US
121076,"Cobb, Micah",9260121074,37,Glencoe Dr,Philadelphia,Pa,19138,US
120172,"Comber, Edwin",1600102978,121,Blackburn Road,Sydney,,2580,AU
120175,"Conolly, Andrew",1600103049,79,Old Port Road,Sydney,,2144,AU
120739,"Cooper, Bryon",9260116770,5857,Academy St,Miami-Dade,FL,33133,US
121100,"Cormell, Tzue-Ing",9260123700,4104,Blackwolf Run Ln,San Diego,CA,92114,US
121113,"Costine, Karen",9260116837,522,Buncombe St,Miami-Dade,FL,33031,US
121073,"Court, Donald",9260116842,4498,Calumet Dr,Miami-Dade,FL,33144,US
120741,"Court, Keisha",9260121135,88,Kershaw Dr,Philadelphia,PA,19130,US
120264,"Croome, Latonya",9260123737,1722,Calm Winds Ct,San Diego,CA,91941,US
120794,"Cross, Samantha",9260116833,699,Buck Rowland Rd,Miami-Dade,FL,33169,US
120262,"Crown, Max",9260120929,1823,Ashley Rd,Philadelphia,PA,19111,US
120679,"Cutucache, Chrisy",9260123909,1541,Highland Trl,San Diego,CA,92103,US
120190,"Czernezkyi, Ivor",1600103037,21,Market Street,Sydney,,2113,AU
120687,"Dannin, Freda",9260116935,674,Friar Tuck Rd,Miami-Dade,FL,33193,US
121040,"Darrohn, Brienne",9260120944,3941,Belford Valley Ln,Philadelphia,PA,19103,US
121055,"Davis, Clement",9260117037,1305,Kyle Dr,Miami-Dade,FL,33172,US
120103,"Dawes, Wilson",1600103074,166,Toorak Road,Sydney,,2119,AU
120124,"Daymond, Lucian",1600103024,1,Julius Avenue,Sydney,,2233,AU
120795,"Deacon, David",9260116960,1636,Gorman St,Miami-Dade,FL,33012,US
121082,"Debank, Richard",9260116843,608,Campbell Rd,Miami-Dade,FL,33129,US
120786,"Delafuente, Chris-Anne",9260116875,1329,Cross Link Rd,Miami-Dade,FL,33016,US
120789,"Denhollem, Julius",9260116863,147,Clearport Dr,Miami-Dade,FL,33135,US
120126,"Denny, Satyakam",1600102981,7,Boundary Street,Sydney,,2099,AU
121003,"Der Wiele, Troyce Van",9260120967,1787,Brushy Meadows Dr,Philadelphia,PA,19148,US
121019,"Desanctis, Scott",9260121087,765,Greenhaven Ln,Philadelphia,PA,19102,us
120680,"Desaulniers, Raymondria",9260120977,2409,Carnegie Ln,Philadelphia,PA,19145,US
121132,"Digiorgio, Shia-Ling",9260123870,97,Gentlewoods Dr,San Diego,CA,92040,US
120197,"Dillin, Kerrin",1600101821,29,Emily Bullock Cres,Melbourne,,8007,AU
120714,"Dinley, Robert",9260116931,182,Fort Sumter Rd,Miami-Dade,FL,33160,US
120152,"Dives, Sean",1600102982,69,Bourke St,Sydney,,1460,AU
120668,"Dolan, Thyland",9260116922,744,Farmington Grove Dr,Miami-Dade,FL,33141,US
120997,"Donathan, Mary",9260121069,4923,Gateridge Dr,Philadelphia,PA,19152,us
120785,"Donnell, Damesha",9260123725,1947,Bromley Way,San Diego,CA,92024,US
120711,"Drew, Gloria",9260121132,17,Kempwood Dr,Philadelphia,PA,19119,US
120667,"Droste, Edwin",9260116974,1661,Hanna Ln,Miami-Dade,FL,33014,US
120803,"Droste, Victor",9260123737,1722,Calm Winds Ct,San Diego,CA,91941,US
120138,"Duckett, Shani",1600101841,9,Northgate Drive,Melbourne,,3168,AU
120279,"Dunlap, Kareema",9260123839,181,Falls River Ave,San Diego,CA,92021,US
120808,"Dupree, Marcel",9260123656,3231,Amity Hill Ct,San Diego,CA,92064,US
120142,"Eastley, Vincent",1600101816,4,Dalmore Drive,Melbourne,,3095,AU
120779,"Eggleston, Jennifer",9260116997,140,Hollow Ct,Miami-Dade,FL,33032,US
120774,"El-Amin, Sue",9260121123,1030,Indigo Dr,Philadelphia,PA,19122,US
120119,"Elleman, Lal",1600103015,1021,Haupapa Street,Sydney,,1219,AU
121015,"Elmoslamy, Wilson",9260123927,3118,Iris Dr,San Diego,CA,92105,US
120121,"Elvish, Irenie",1600103044,3,Mundi Place,Sydney,,1232,AU
120110,"Entwisle, Dennis",1600103011,9,Grayson Avenue Papatoetoe,Sydney,,1226,AU
120810,"Esguerra, Loyal",9260116917,2726,Fairfax Woods Dr,Miami-Dade,FL,33162,US
121103,"Farnsworth, Brian",9260123783,8458,Crispwood Ct,San Diego,Ca,91901,US
121021,"Farren, Priscilla",9260123790,1538,Dacian Rd,San Diego,CA,92124,US
120747,"Farthing, Zashia",9260123756,763,Chatterson Dr,San Diego,CA,92116,us
121143,"Favaron, Louis",9260117004,163,Horseshoe Bend,Miami-Dade,FL,33176,US
121052,"Fay, Richard",9260120973,7660,Calvary Dr,Philadelphia,PA,19107,US
120744,"Feigenbaum, Alden",9260123874,43,Glen Bonnie Ln,San Diego,CA,92122,US
120753,"Ferrari, Ralph",9260116946,309,Gilliam Ln,Miami-Dade,FL,33172,US
121031,"Filan, Scott",9260121065,375,Foxmoor Ct,Philadelphia,PA,19142,US
120150,"Filo, John",1600101856,5,Sun Pl,Melbourne,,3001,AU
120195,"Fiocca, Jina",1600101807,81,Burwood Road,Melbourne,,3155,AU
121102,"Flammia, Rocheal",9260123922,1201,Hoyle Dr,San Diego,CA,91978,us
120260,"Fletcher, Christine",9260123780,2416,Cove Point Dr,San Diego,CA,91910,US
120272,"Flow, Febin",9260121137,461,Kimberly Dr,Philadelphia,PA,19121,US
120697,"Fouche, Madelaine",1600101820,1,Embarcadero Center Site 1500,Melbourne,,3000,AU
121023,"Fuller, Shawn",9260123819,1195,Echo Glen Ln,San Diego,CA,92028,US
121136,"Galarneau, Lesia",9260120922,3,Altair Cir,Philadelphia,PA,19131,US
120778,"Gardner, Angela",9260121040,349,Eason Cir,Philadelphia,PA,19104,US
120180,"George, Vino",1600101796,9,Adelaide Terrace,Melbourne,,3000,AU
120112,"Glattback, Ellis",1600101868,7,Vulture Street,Melbourne,,3174,AU
121124,"Gonzalez, Deginald",9260117036,1611,Kronos Ln,Miami-Dade,FL,33054,US
121009,"Goodwin, Robert",9260123860,31,Friendly Dr,San Diego,CA,92116,US
120995,"Gordo, Lily-Ann",9260121130,545,Jones Sausage Rd,Philadelphia,PA,19144,US
120191,"Graham-Rowe, Jannene",1600101820,1,Embarcadero Center Site 1500,Melbourne,,3000,AU
120108,"Gromek, Gladys",1600101827,6,George Street,Melbourne,,3000,AU
121047,"Grzebien, Karen",9260123757,627,Chenworth Dr,San Diego,CA,92082,US
120672,"Guscott, Verne",1600102990,249,Collins Street,Sydney,,2009,AU
120691,"Habres, Sek",1600103058,11,Reid Street,Sydney,,1005,AU
121129,"Hafley, Yusef",9260116796,192,Beaufort St,Miami-Dade,FL,33133,US
121045,"Hampton, Cascile",9260123748,8560,Carlton Ave,San Diego,CA,92027,US
121013,"Hargrave, Seco",9260120922,3,Altair Cir,Philadelphia,PA,19131,US
120743,"Harrison, Chimena",9260123715,77,Braswell Ct,San Diego,CA,91950,US
120816,"Hart, Tessia",9260116839,2170,Buttercup Ln,Miami-Dade,FL,33055,US
120118,"Hartshorn, Darshi",1600103076,1,Waterloo Street,Sydney,,2065,AU
120745,"Harvill, Barbara",9260120919,23,Alderman Cir,Philadelphia,PA,19129,US
120194,"Harwood, Reece",1600101807,81,Burwood Road,Melbourne,,3155,AU
121061,"Hassam, Lauris",9260116932,4407,Fountain Dr,Miami-Dade,FL,33178,US
120659,"Havasy, Jay",9260120924,1930,Apple Meadow Dr,Philadelphia,PA,19145,US
120154,"Hayawardhana, Caterina",1600102972,21,Albert St,Sydney,,1170,AU
121098,"Heatwole, Hal",9260120994,1543,Cherrycrest Ct,Philadelphia,PA,19154,US
120999,"Heilmann, Sherelyn",9260123969,3750,Langley Cir,San Diego,CA,92025,US
120813,"Heinsler, John",9260116828,39,Brush Stream Dr,Miami-Dade,FL,33179,US
121123,"Helyar, Randy",9260121031,3313,Dothan Ct,Philadelphia,PA,19107,US
120718,"Hennington, Charles",9260121043,40,Elsbeth Ct,Philadelphia,PA,19144,US
121130,"Herndon, Gary",9260121156,11,Langdale Pl,Philadelphia,PA,19143,US
120196,"Hieds, Merle",1600101856,5,Sun Pl,Melbourne,,3001,AU
120261,"Highpoint, Harry",9260116777,18,Antler Ct,Miami-Dade,FL,33135,US
121106,"Hilburger, James",9260116793,139,Barton Pines Rd,Miami-Dade,FL,33189,US
120669,"Hill, Ronald",9260121037,2823,Eagles Landing Dr,Philadelphia,PA,19146,US
120125,"Hofmeister, Fong",1600102996,17,Druitt Street,Sydney,,2122,AU
121125,"Holt, Michael",9260121127,270,Johnson St,Philadelphia,PA,19138,US
121070,"Holthouse, Agnieszka",9260116982,41,Hawthorne Way,Miami-Dade,FL,33018,US
120815,"Honore, Craig",9260116824,7766,Brimfield Ct,Miami-Dade,FL,33141,US
121071,"Hoppmann, John",9260116922,744,Farmington Grove Dr,Miami-Dade,FL,33141,US
120773,"Horne, Entrisse",9260117000,7497,Holly Pointe Dr,Miami-Dade,FL,33133,US
120792,"Horne, Omeba",9260121126,4750,Jet Ln,Philadelphia,PA,19119,US
120106,"Hornsey, John",1600103064,325,Sherwood Road,Sydney,,1100,AU
120113,"Horsey, Riu",1600101859,45,Talavera Road,Melbourne,,3146,AU
120123,"Hotstone, Kimiko",1600103050,54,Overseas Drive,Sydney,,2066,AU
121001,"House, Tony",9260116817,1,Bona Ct,Miami-Dade,FL,33140,US
120685,"Howard, Anita",9260121044,1455,Emerywood Dr,Philadelphia,PA,19124,US
120729,"Howell, Kimberly",9260117044,260,Langstonshire Ln,Miami-Dade,FL,33134,US
121085,"Huslage, Rebecca",9260123814,1984,Dunhill Ter,San Diego,CA,92008,US
120137,"Iyengar, Marina",1600101814,9,Crusin Place,Melbourne,,3086,AU
121026,"Jaime, Terrill",9260121098,697,Harcourt Dr,Philadelphia,PA,19136,US
120155,"James, Narelle",1600101861,30,Thorncraft Parade,Melbourne,,2113,AU
121104,"Johnson, Leoma",9260120956,4002,Brassfield Rd,Philadelphia,PA,19134,US
120797,"Jones, Sherrie",9260116902,19,Dutch Creek Dr,Miami-Dade,FL,33186,US
120278,"Jongleux, Binit",9260123699,3053,Blackpine Ct,San Diego,CA,91910,US
120716,"Juif, Kenneth",9260121085,881,Green Downs Dr,Philadelphia,PA,19143,US
121091,"Kadiri, Ernest",9260121067,6,Frissell Ave,Philadelphia,Pa,19142,US
121043,"Kagarise, Sigrid",9260121031,3313,Dothan Ct,Philadelphia,PA,19107,US
120269,"Kagolanu, Shrimatee",9260120925,65,Applecross Cir,Philadelphia,PA,19131,US
120132,"Kaiser, Fancine",1600103012,33,Great South Road Riccarton,Sydney,,2000,AU
120157,"Karavdic, Leonid",1600102978,121,Blackburn Road,Sydney,,2580,AU
120783,"Karp, Davis",9260121117,458,Huckleberry Dr,Philadelphia,PA,19104,US
120796,"Kellis, Philip",9260121043,40,Elsbeth Ct,Philadelphia,PA,19144,US
120766,"Kempster, Janelle",9260116780,8,Ashwood Dr,Miami-Dade,FL,33173,US
120682,"Kennedy, Barbara",9260120930,1635,Auburn Church Rd,Philadelphia,PA,19119,US
120801,"Kennedy, Kathryn",9260120975,353,Cameron Woods Dr,Philadelphia,PA,19148,US
120658,"Kennedy, Kenneth",9260123927,3118,Iris Dr,San Diego,CA,92105,US
121088,"Kernitzki, Momolu",9260120959,422,Brentwood Rd,Philadelphia,PA,19134,US
120992,"Kicak, Lisa",9260116861,1974,Clear Brook Dr,Miami-Dade,FL,33172,US
120736,"Kiemle, Parie",9260116999,26,Holly Park Dr,Miami-Dade,FL,33130,US
120177,"Kierce, Franca",1600103075,120,Walkers Road,Sydney,,2015,AU
120746,"Kimmerle, Kevie",9260121115,162,Horsetrail Way,Philadelphia,PA,19121,US
120170,"Kingston, Alban",1600102984,5,Buffalo Road,Sydney,,1042,AU
121063,"Kinol, Regi",9260116933,63,Fountainhead Dr,Miami-Dade,FL,33180,US
121034,"Kirkman, John",9260116898,40,Dry Fork Ln,Miami-Dade,FL,33193,US
120698,"Kistanna, Geoff",1600103007,28,Fonceca Street,Sydney,,1171,au
120128,"Kletschkus, Monica",1600101800,26,Bay Street,Melbourne,,3050,AU
121090,"Klibbe, Betty",9260123969,3750,Langley Cir,San Diego,CA,92025,US
121110,"Knapp, Albert",9260116923,4368,Farrington Dr,Miami-Dade,FL,33165,US
120757,"Knopfmacher, Paul",9260123735,804,Calebra Way,San Diego,CA,92104,US
121081,"Knudson, Susie",9260123871,110,Glascock St,San Diego,CA,91950,US
120721,"Knust, Dlutomi",9260120955,744,Brannigan Pl,Philadelphia,PA,19141,US
120683,"Kochneff, Deven",9260121087,765,Greenhaven Ln,Philadelphia,PA,19102,US
121058,"Kohake, Del",9260123839,181,Falls River Ave,San Diego,CA,92021,US
120765,"Kokoszka, Nikeisha",9260123780,2416,Cove Point Dr,San Diego,Ca,91910,US
120740,"Koonce, Lisa",9260116960,1636,Gorman St,Miami-Dade,FL,33012,US
120663,"Kornblith, Anglar",9260116932,4407,Fountain Dr,Miami-Dade,FL,33178,US
120266,"Krafve, Bao",9260123722,12,Brigadoon Dr,San Diego,CA,92040,US
121095,"Kratzke, Sara",9260123796,4137,Deer Haven Dr,San Diego,CA,92101,US
121120,"Labach, Susan",9260121063,1624,Fox Trail Ln,Philadelphia,PA,19146,US
120189,"Lachlan, Mihailo",1600103000,17,Elsie St,Sydney,,2154,AU
121010,"Lamp, Donald",9260116965,509,Green Level To Durham Rd,Miami-Dade,FL,33142,US
120274,"Landry, Angela",9260121115,162,Horsetrail Way,Philadelphia,PA,19121,US
120690,"Langston, Taronda",9260120930,1635,Auburn Church Rd,Philadelphia,PA,19119,US
121145,"Lansberry, Dennis",9260116886,7508,Declaration Dr,Miami-Dade,FL,33012,US
121069,"Lapsley, Jason",9260123763,2148,Circlebank Dr,San Diego,CA,92064,US
120275,"Lattimer, Brandy",9260123733,56,Cahill Rd,San Diego,CA,92065,US
120671,"Latty, William",9260120959,422,Brentwood Rd,Philadelphia,PA,19134,US
120280,"Laurer, Jaime",9260121097,211,Hamstead Crossing Dr,Philadelphia,PA,19124,US
121118,"Lawson, Paul",9260121145,598,Lake Ct,Philadelphia,Pa,19122,US
120665,"Leacock, Jill",9260123932,1288,Joe Leach Rd,San Diego,CA,91945,US
120694,"Leazer, Sharon",1600103030,29,Lawson Ave,Sydney,,1220,AU
120762,"Leone, Marvin",9260121005,2898,Cookshire Dr,Philadelphia,PA,19121,US
120731,"Lerew, Robert",9260123660,2254,Appledown Dr,San Diego,CA,92008,US
121108,"Levi, Libby",9260116791,1713,Barham Siding Rd,Miami-Dade,FL,33013,US
120136,"Leyden, Atul",1600103023,12,Hunua Road Papakura,Sydney,,1004,AU
120141,"Liebman, Amanda",1600103010,46,George Street,Sydney,,2012,AU
120769,"Lightbourne, Abelino",9260116816,6137,Blue Water Ct,Miami-Dade,FL,33161,US
121014,"Liguori, Donelle",9260116940,6,Gamelyn Walk,Miami-Dade,FL,33183,US
120788,"Lisowe, Smitty",9260123664,1058,Atchison St,San Diego,CA,92120,US
120101,"Lu, Patrick",1600102980,51,Botany Road,Sydney,,1230,AU
120130,"Lyon, Kevin",1600103019,2,Hill St,Sydney,,1044,AU
121056,"Lyszyk, Stacey",9260123927,3118,Iris Dr,San Diego,CA,92105,US
121067,"Macnair, Jeanilla",9260123814,1984,Dunhill Ter,San Diego,CA,92008,US
121018,"Magolan, Julienne",9260116837,522,Buncombe St,Miami-Dade,FL,33031,US
120163,"Magrath, Brett",1600101846,253,Princess Hwy,Melbourne,,3000,AU
121111,"Maholo, Salim",9260123866,91,Gardner St,San Diego,CA,92057,US
121065,"Malta, Corneille",9260123836,1793,Falcon Rest Cir,San Diego,CA,92113,US
120793,"Mamo, William",9260116878,183,Dacus Pl,Miami-Dade,FL,33055,US
121046,"Mandzak, Roger",9260121106,443,High Country Dr,Philadelphia,PA,19147,US
121127,"Mangini, Keyna",9260123867,9,Garner Rd,San Diego,CA,91910,US
120809,"Marion, Chiorene",9260116782,89,Atchison St,Miami-Dade,FL,33129,US
120727,"Marples, Donald",9260123734,2227,Calais Ct,San Diego,CA,92122,US
120161,"Martines, Rosette",1600101840,147,North Clark Street,Melbourne,,3156,AU
120117,"Mccleary, Bill",1600101844,6,Palmiston Cresent,Melbourne,,3150,AU
121053,"Mcdade, Tywanna",9260123761,87,Christofle Ln,San Diego,CA,92082,US
121029,"Mcelwee, Kuo-Chung",9260123790,1538,Dacian Rd,San Diego,CA,92124,US
121139,"Mckee, Diosdado",9260123895,81,Hanska Way,San Diego,CA,92014,US
121008,"Mckenzie, Eron",9260121071,131,Gem Dr,Philadelphia,PA,19122,US
121005,"Mclamb, Yuh-Lang",9260116949,9891,Glendower Rd,Miami-Dade,FL,33154,US
120751,"Mea, Azavi0us",9260116836,649,Buckboard Ln,Miami-Dade,FL,33014,US
121079,"Mees, Azmi",9260120942,824,Beaufort St,Philadelphia,PA,19128,US
121036,"Mesley, Teresa",9260121101,967,Hearthside Ct,Philadelphia,PA,19148,US
121074,"Michonski, Eric",9260123951,1921,Kingston Ridge Rd,San Diego,CA,92129,US
121037,"Miketa, Muthukumar",9260117011,2185,Ileagnes Rd,Miami-Dade,FL,33176,US
120259,"Miller, Anthony",9260116837,522,Buncombe St,Miami-Dade,FL,33031,US
120760,"Miller, Pamela",9260123823,108,Elmview Dr,San Diego,CA,92111,US
120140,"Minas, Michael",1600103041,95,Miller St,Sydney,,2125,AU
120695,"Moffat, Trent",1600101835,8,Learmonth Road,Melbourne,,3101,au
120171,"Moody, Alena",1600103057,248,Port Road,Sydney,,2020,AU
120184,"Moore, Ari",1600103062,241,Royal Perade,Sydney,,1115,AU
120712,"Motashaw, Elisabeth",9260116823,360,Bridgepath Dr,Miami-Dade,FL,33150,US
121099,"Mrvichin, Royall",9260120976,31,Cantwell Ct,Philadelphia,PA,19141,US
121051,"Myers, Glorina",9260123851,335,Fox Ct,San Diego,CA,92029,US
121128,"Nazar, Glacia",9260123950,1250,Kingston Ridge Rd,San Diego,CA,92128,US
120715,"Neal, Angelia",9260123661,6278,Aqua Marine Ln,San Diego,CA,92054,US
121096,"Newstead, Robert",9260117041,683,Lake Hill Dr,Miami-Dade,FL,33176,US
120122,"Ngan, Christina",1600101847,11,Prospect Hill Road,Melbourne,,3001,AU
120192,"Nichollas, Anthony",1600103056,66,Phillip Street,Sydney,,2124,AU
120115,"Nichollas, Hugh",1600103020,30,Hotham Parade,Sydney,,2600,AU
120749,"Niemann, Kevin",9260123704,651,Bluebird Ct,San Diego,CA,92027,US
121066,"Norman, Ceresh",9260121149,251,Lake Tillery Dr,Philadelphia,PA,19148,US
121072,"North, Christer",9260121038,2765,Eaglesham Way,Philadelphia,PA,19121,US
120166,"Nowd, Fadi",1600103000,17,Elsie St,Sydney,,2154,AU
120270,"Nuss, Grezegorz",9260116986,1916,Hebron Church Rd,Miami-Dade,FL,33186,US
121115,"O'Carroll, Aquilla",9260123738,5194,Calm Winds Ct,San Diego,CA,92071,US
121087,"O'Suilleabhain, Virtina",9260117018,219,Ivydale Dr,Miami-Dade,FL,33178,US
120790,"O'Toole, Tara",9260121137,461,Kimberly Dr,Philadelphia,Pa,19121,US
120726,"Obermeyer, Lutezenia",9260120979,3246,Cartier Dr,Philadelphia,PA,19140,US
120678,"Octetree, Lucretta",9260123841,433,Farmington Woods Dr,San Diego,CA,92054,US
120723,"Olsen, Deanna",9260121109,218,Hillsford Ln,Philadelphia,PA,19146,US
120666,"Onuscheck, John",9260123652,215,Alercia Ct,San Diego,CA,92029,US
120173,"Osborn, Hernani",1600101808,8,Cannon Lane Whitby,Melbourne,,3350,AU
121068,"Osuba, Salaheloin",9260123681,2546,Belford Valley Ln,San Diego,CA,91932,US
121084,"Ould, Tulsidas",9260123776,1025,Coronado Dr,San Diego,Ca,92028,US
120806,"Ousley, Lorna",9260117027,881,Kettlebridge Dr,Miami-Dade,FL,33183,US
120772,"Overdorff, Erich",9260116868,1407,Coorsdale Dr,Miami-Dade,FL,33161,US
120176,"Pa, Koavea",1600101822,1,Endeavour Road,Melbourne,,3225,AU
121131,"Pantages, William",9260123709,198,Botany Bay Dr,San Diego,CA,92021,US
120802,"Parker, U'Vonda",9260121139,11,Kinderston Dr,Philadelphia,PA,19104,US
120770,"Pascoe, Julia",9260116858,973,Chris Dr,Miami-Dade,FL,33183,US
120787,"Peachey, Carl",9260123750,175,Carteret Dr,San Diego,CA,92025,US
120120,"Peiris, Krishna",1600103010,46,George Street,Sydney,,2012,AU
121126,"Penhale, James",9260120951,142,Bluffridge Dr,Philadelphia,PA,19141,US
120807,"Peppers, Gerlinde",9260123858,1209,Fraternity Court Dr,San Diego,CA,92173,US
120696,"Pettolino, Peter",1600101822,1,Endeavour Road,Melbourne,,3225,AU
120151,"Phaiyakounh, Julianna",1600103002,3,Evans St,Sydney,,2011,AU
120159,"Phoumirath, Lynelle",1600103074,166,Toorak Road,Sydney,,2119,AU
120158,"Pilgrim, Daniel",1600103048,8,Nicholson Street,Sydney,,4720,AU
120784,"Pinol, Jennifer",9260120993,9,Chastain Dr,Philadelphia,PA,19132,US
120135,"Platts, Alexei",1600103071,39,Station Street,Sydney,,2000,au
120178,"Plested, Billy",1600103038,51,Martin Place,Sydney,,1131,AU
121086,"Plybon, John-Michael",9260116892,890,Dinwiddie Ct,Miami-Dade,FL,33174,US
120276,"Plybon, Nicholas",9260121064,2975,Foxbury Dr,Philadelphia,Pa,19120,US
121064,"Polky, Asishana",9260123811,41,Dubose St,San Diego,CA,92110,US
120689,"Pongor, Katherine",9260121009,4750,Cottonwood Ln,Philadelphia,PA,19148,US
120748,"Post, Nahliah",9260117043,52,Landor Rd,Miami-Dade,FL,33169,US
120105,"Povey, Liz",1600101825,23,Garden Street,Melbourne,,8004,AU
120165,"Pretorius, Tadashi",1600103020,30,Hotham Parade,Sydney,,2600,AU
121133,"Pringley, Peter",9260120956,4002,Brassfield Rd,Philadelphia,PA,19134,US
121092,"Pritt, Gynell",9260123941,8112,Kenna Ct,San Diego,CA,92116,US
121054,"Pulliam, Daniel",9260123704,651,Bluebird Ct,San Diego,CA,92027,US
120186,"Quinby, Merryn",1600102997,54,Dunning Street,Sydney,,2120,AU
120661,"Racine, Cynthia",9260123745,63,Cane Creek Dr,San Diego,CA,92131,US
120116,"Ralston, Austen",1600103023,12,Hunua Road Papakura,Sydney,,1004,AU
120768,"Rayburn, Roland",9260120981,31,Castalia Dr,Philadelphia,PA,19140,US
121020,"Ridley, Cherda",9260120918,30,Aiken Pkwy,Philadelphia,PA,19142,US
120719,"Ridley, Roya",9260123695,6121,Birklands Dr,San Diego,CA,92025,US
120267,"Rink, Belanda",9260123891,43,Grist Mill Rd,San Diego,CA,92122,US
121042,"Robbin-Coker, Joseph",9260123688,2645,Berkshire Downs Dr,San Diego,CA,92008,US
120129,"Roebuck, Alvin",1600101844,6,Palmiston Cresent,Melbourne,,3150,AU
121027,"Rudder, Allan",9260123806,941,Dixon Dr,San Diego,CA,91911,US
120147,"Rusli, Skev",1600103069,26,St Kilda Road,Sydney,,2022,AU
121135,"Ruta, Tammy",9260120927,89,Ashley Brook Ct,Philadelphia,PA,19131,US
120777,"Sacher, Kary",9260123653,2547,Allenby Dr,San Diego,CA,91913,US
121148,"Sadig, Shane",9260116770,5857,Academy St,Miami-Dade,FL,33133,US
121146,"Sangiorgio, Julieanne",9260121055,6042,Farmstone Dr,Philadelphia,PA,19125,US
120673,"Santomaggio, Pearl",1600101855,2,Stephen Road,Melbourne,,3181,AU
121089,"Sauder, Gregory",9260117020,974,Joel Ct,Miami-Dade,FL,33030,US
121105,"Savacool, Jessica",9260116883,618,Darlington Pl,Miami-Dade,FL,33143,US
120734,"Saylor, Svein",9260121110,3707,Hillside Dr,Philadelphia,PA,19144,US
121122,"Scarbrough, Stancey",9260116954,701,Glenridge Dr,Miami-Dade,FL,33177,US
120162,"Scordia, Randal",1600101859,45,Talavera Road,Melbourne,,3146,AU
120814,"Scroggin, Victor",9260123664,1058,Atchison St,San Diego,CA,92120,US
120160,"Segrave, Chuck",1600103065,1,Sleigh Street,Sydney,,1164,AU
120664,"Senchak, Brock",9260121088,1779,Greymist Ln,Philadelphia,PA,19142,US
120994,"Sergeant, Danelle",9260123959,734,Ladys Slipper Ct,San Diego,CA,92105,us
121117,"Sergi, Teresa",9260120922,3,Altair Cir,Philadelphia,PA,19131,US
120134,"Shannan, Sian",1600103061,5,Rosebery Ave,Sydney,,2010,AU
120107,"Sheedy, Sherie",1600101851,12,Sir William Pickering Drive,Melbourne,,3175,AU
120722,"Sheffield, Ishmar",9260116991,939,Hilltop Needmore Rd,Miami-Dade,FL,33157,US
120742,"Shewitz, Ronald",9260120978,507,Carriage Pine Dr,Philadelphia,PA,19125,US
120277,"Shirts, Wesley",9260116873,710,Crawford Rd,Miami-Dade,FL,33015,US
120776,"Silverthorne, Ratna",9260116930,284,Forest Dr,Miami-Dade,FL,33142,US
120174,"Simms, Doungkamol",1600101828,30,Goodall Ave,Melbourne,,3053,AU
120782,"Sines, Rilma",9260120951,142,Bluffridge Dr,Philadelphia,PA,19141,US
120781,"Sitnik, Sarah",9260123872,6846,Glastonbury Rd,San Diego,CA,91941,US
120717,"Sleva, Jon",9260116806,472,Big Bend Ct,Miami-Dade,FL,33155,US
120143,"Sloey, Phu",1600103054,1,Pacific Rise Mount Wellington,Sydney,,20000,AU
121028,"Smades, William",9260116940,6,Gamelyn Walk,Miami-Dade,FL,33183,US
121004,"Smith, Kellen",9260123920,1466,Horne St,San Diego,CA,92117,US
121032,"Smith, Nasim",9260123683,340,Bellevue Rd,San Diego,CA,92027,US
120660,"Smith, Robert",9260117010,4156,Hwy 42,Miami-Dade,FL,33180,US
121077,"Smotherly, Bryce",9260116838,4396,Burntwood Cir,Miami-Dade,FL,33193,US
121147,"Sneed, Christine",9260116938,151,Gail Ridge Ln,Miami-Dade,FL,33182,US
120156,"Snellings, Gerry",1600103069,26,St Kilda Road,Sydney,,2022,AU
121033,"Snitzer, Kristie",9260121026,2157,Denberg Ln,Philadelphia,PA,19140,US
120677,"Sochacki, Suad",9260116775,3519,Amersham Ln,Miami-Dade,FL,33160,US
120133,"Soltau, Petrea",1600101818,105,East St,Melbourne,,8060,AU
120111,"Spillane, Ubaldo",1600103064,325,Sherwood Road,Sydney,,1100,AU
120720,"Spingola, John",9260121100,1219,Hawkshead Rd,Philadelphia,PA,19139,US
121060,"Spofford, Elizabeth",9260116923,4368,Farrington Dr,Miami-Dade,FL,33165,US
120164,"Stamalis, Ranj",1600101850,435,Sherwood Rd,Melbourne,,8003,AU
120799,"Stefandonovan, Jeffery",9260121028,47,Dixie Trl,Philadelphia,PA,19136,US
121142,"Steiber, Reginald",9260121136,15,Kilmorack Dr,Philadelphia,PA,19136,US
121022,"Stevens, Robert",9260123921,224,Horsham Way,San Diego,CA,91950,US
121112,"Stouchko, Lee",9260116786,101,Avent Ferry Rd,Miami-Dade,FL,33178,US
120193,"Streit, Russell",1600101824,176,Exhibition Street,Melbourne,,3170,AU
121075,"Sugg, Kasha",9260123796,4137,Deer Haven Dr,San Diego,CA,92101,US
121016,"Sullivan, Lutezenia",9260116789,4758,Barbara Dr,Miami-Dade,FL,33180,US
121000,"Supple, Herman",9260117030,4,Kimbrook Dr,Miami-Dade,Fl,33187,US
120131,"Surawski, Marinus",1600103046,163,Nebo Road,Sydney,,1117,AU
121083,"Sutton, Tingmei",9260117007,6940,Hunt Farms Ln,Miami-Dade,FL,33147,US
120738,"Swaiti, Huilun",9260121097,211,Hamstead Crossing Dr,Philadelphia,PA,19124,US
121134,"Tacosa, Paul",9260123671,2733,Balfour Downs Cir,San Diego,CA,92109,US
120169,"Tannous, Cos",1600101857,13,Symonds Street,Melbourne,,3005,AU
121094,"Tate, Larry",9260123961,2704,Lake Wheeler Rd,San Diego,CA,92082,US
120693,"Tellam, Diaz",1600102970,8,Aboukis Street,Sydney,,1223,AU
120767,"Terricciano, Legette",9260121032,6348,Draper Rd,Philadelphia,PA,19131,US
120755,"Thoits, Elizabeth",9260123885,5,Green Lantern St,San Diego,CA,92128,US
120775,"Thompson, Tanya",9260116965,509,Green Level To Durham Rd,Miami-Dade,FL,33142,US
120167,"Tilley, Kimiko",1600103018,153,High St,Sydney,,2006,AU
120681,"Tolbet, Elery",9260116808,63,Bishops Park Dr,Miami-Dade,FL,33016,US
121138,"Tolley, Hershell",9260120922,3,Altair Cir,Philadelphia,PA,19131,US
120737,"Toner, Brenner",9260123826,36,Enka Dr,San Diego,CA,92037,US
120692,"Tregonning, Rit",1600102983,26,Brisbane Avenue,Sydney,,2064,AU
120686,"Tucker, Berether",9260123670,1999,Avery St,San Diego,CA,91941,US
120732,"Uenking, Kent",9260116807,2853,Birchford Ct,Miami-Dade,FL,33142,US
120752,"Van Damme, Jean-Claude",9260116858,973,Chris Dr,Miami-Dade,FL,33183,US
121093,"Vasconcellos, Carl",9260123738,5194,Calm Winds Ct,San Diego,CA,92071,US
120268,"Villeneuve, Jacques",9260121139,11,Kinderston Dr,Philadelphia,PA,19104,US
120758,"Voltz, Sal",9260116929,34,Flicker Ct,Miami-Dade,FL,33168,US
121057,"Voron, Tachaun",9260120986,990,Center Pointe Dr,Philadelphia,PA,19143,US
120153,"Waal, Samantha",1600102978,121,Blackburn Road,Sydney,,2580,AU
120996,"Wade, Johannes",9260123797,139,Deer Hunter Ct,San Diego,CA,91950,US
120780,"Walcott, Kimberly",9260121101,967,Hearthside Ct,Philadelphia,PA,19148,US
120805,"Walker, Robert",9260121022,153,Dawson Mill Run,Philadelphia,PA,19143,US
121039,"Washington, Donald",9260116813,1668,Bladen St,Miami-Dade,FL,33055,US
120657,"Weisbarth, Theresa",9260123821,1571,Edenton St,San Diego,CA,92114,US
121078,"Wende, Lionel",9260117043,52,Landor Rd,Miami-Dade,FL,33169,US
121024,"Westlund, Michael",9260123709,198,Botany Bay Dr,San Diego,CA,92021,US
121041,"Wetherington, Jaime",9260123714,1428,Brandywine Dr,San Diego,CA,92071,US
121114,"Whipkey, Okema",9260123718,7834,Briar Oaks Ln,San Diego,CA,92104,US
120725,"Whitlock, Robert",9260123669,456,Avent Hill,San Diego,CA,92117,US
120179,"Wills, Matsuoka",1600101830,5059,Great Eastern Highway,Melbourne,,8010,AU
120139,"Wilson, Fang",1600103068,354,St Kilda Rd,Sydney,,2145,AU
120271,"Winge, Kenisha",9260117015,94,Irelan Dr,Miami-Dade,FL,33144,US
120750,"Woods, Connie",9260116932,4407,Fountain Dr,Miami-Dade,FL,33178,US
120764,"Worton, Steven",9260123827,3100,Erinsbrook Dr,San Diego,CA,92026,US
120684,"Woyach, Suzon",9260116853,1107,Caswell Ct,Miami-Dade,FL,33141,US
120771,"Xing Moore, Wei",9260117001,84,Holt Dr,Miami-Dade,FL,33183,US
120102,"Zhou, Tom",1600101795,1,Adelaide Street MIC Court,Melbourne,,3125,AU
120804,"Zied, Ahmed",9260116786,101,Avent Ferry Rd,Miami-Dade,FL,33178,US
120670,"Zisek, Odudu",9260121153,114,Lakerun Ct,Philadelphia,PA,19146,US
120148,"Zubak, Michael",1600102992,51,Court Crescent Panmure,Sydney,,2041,AU
;;;;
data certadv.payrollmaster;
   input EmpID $ 1-4 JobCode $ 11-13
         @20 Salary dollar8. @32 DateOfBirth date9.
         @45 DateOfHire date9.;
   format salary dollar9. dateofbirth dateofhire date9.;
datalines;
1919      TA2       $48,126    16SEP1984    07JUN2005
1653      ME2       $49,151    19OCT1982    12AUG2008
1400      ME1       $41,677    08NOV1985    19OCT2008
1350      FA3       $46,040    04SEP1983    01AUG2008
1401      TA3       $54,351    16DEC1988    21NOV2013
1499      ME3       $60,235    29APR1982    11JUN2018
1101      SCP       $26,212    09JUN1980    04OCT2018
1333      PT2      $124,048    03APR1989    14FEB2019
1402      TA2       $45,661    20JAN1981    05DEC2018
1479      TA3       $54,299    26DEC1986    09OCT2007
1403      ME1       $39,301    01FEB1987    24DEC2009
1739      PT1       $93,124    29DEC1982    30JAN2009
1658      SCP       $25,120    11APR1985    04MAR2010
1428      PT1       $96,274    07APR1988    19NOV2009
1782      ME2       $49,483    07DEC1988    25FEB2012
1244      ME2       $51,695    03SEP1981    20JAN2006
1383      BCK       $36,152    28JAN1986    24OCT2010
1574      FA2       $40,001    01MAY1988    24DEC2010
1789      SCP       $25,656    29JAN1975    14APR2016
1404      PT2      $127,926    28FEB1971    04JAN2018
1437      FA3       $46,346    24SEP1988    04SEP2012
1639      TA3       $56,364    30JUN1975    31JAN2012
1269      NA1       $58,366    07MAY1980    02DEC2000
1065      ME2       $49,126    29JAN1982    10JAN2015
1876      TA3       $55,545    23MAY1976    01MAY2013
1037      TA1       $39,981    14APR1972    17SEP2000
1129      ME2       $48,901    12DEC1979    20AUG2009
1988      FA3       $45,104    03DEC1977    22SEP2002
1405      SCP       $25,278    08MAR1984    29JAN2000
1430      TA2       $46,095    03MAR1980    30APR2005
1983      FA3       $46,787    03MAR1980    30APR2005
1134      TA2       $46,847    09MAR1977    25DEC2006
1118      PT3      $155,931    19JAN1982    22DEC2008
1438      TA3       $54,912    19MAR1973    21NOV2005
1125      FA2       $40,443    12NOV1976    14DEC2005
1475      FA2       $38,902    19DEC1969    16JUL2008
1117      TA3       $55,679    08JUN1971    17AUG2000
1935      NA2       $71,513    31MAR1962    20OCT1989
1124      FA1       $32,448    13JUL1966    04OCT1998
1422      FA1       $31,436    08JUN1972    09APR1999
1616      TA2       $47,792    04MAR1968    08JUN2001
1406      ME2       $49,259    12MAR1969    20FEB1995
1120      ME1       $40,067    15SEP1980    11OCT2006
1094      FA1       $31,175    05APR1978    20APR2002
1389      BCK       $35,039    18JUL1967    21AUG2000
1905      PT1       $91,155    20APR1980    02JUN2006
1407      PT1       $95,334    27MAR1977    21MAR2010
1114      TA2       $46,099    22SEP1977    30JUN2005
1410      PT2      $118,559    06MAY1975    10NOV2000
1439      PT1       $99,030    10MAR1972    13SEP2002
1409      ME3       $58,171    22APR1988    26OCT2018
1408      TA2       $47,793    02APR1968    17OCT1995
1121      ME1       $40,757    29SEP1979    10DEC2009
1991      TA1       $38,703    11MAY1980    16DEC2009
1102      TA2       $48,359    04OCT1967    18APR1997
1356      ME2       $51,617    30SEP1965    25FEB1995
1545      PT1       $92,582    15AUG1967    01JUN2001
1292      ME2       $51,367    01NOV1972    06JUL2012
1440      ME2       $50,060    30SEP1970    12APR2003
1368      FA2       $38,931    15JUN1969    07NOV2004
1369      TA2       $47,187    01JAN1970    16MAR2001
1411      FA2       $38,171    31MAY1969    05DEC2000
1113      FA1       $31,314    18JAN1976    20OCT2010
1704      BCK       $35,651    02SEP1974    01JUL2007
1900      ME2       $49,147    28MAY1970    30OCT2001
1126      TA3       $57,259    31MAY1971    25NOV1999
1677      BCK       $36,410    08NOV1971    31MAR2003
1441      FA2       $38,021    23NOV1977    26MAR2006
1421      TA2       $46,417    11JAN1967    03MAR2003
1119      TA1       $37,694    23JUN1970    10SEP2007
1834      BCK       $37,654    11FEB1980    06JUL2010
1777      PT3      $153,482    26SEP1969    25JUN2001
1663      BCK       $37,033    14JAN1975    14AUG2002
1106      PT2      $125,485    10NOV1965    20AUG1996
1103      FA1       $33,233    19FEB1976    27JUL2012
1477      FA2       $39,992    25MAR1972    11MAR2009
1476      TA2       $48,724    02JUN1974    20MAR2005
1379      ME3       $59,170    12AUG1969    14JUN2006
1104      SCP       $25,124    28APR1971    13JUN2009
1009      TA1       $40,432    05MAR1967    30MAR2001
1412      ME1       $38,919    22JUN1964    08DEC2000
1115      FA3       $45,779    26AUG1978    04MAR2013
1128      TA2       $45,888    27MAY1973    23OCT2006
1442      PT2      $118,350    08SEP1974    16APR2011
1417      NA2       $73,178    01JUL1972    11MAR2013
1478      PT2      $117,884    12AUG1967    27OCT2003
1673      BCK       $35,668    02MAR1978    18JUL2012
1839      NA1       $60,806    02DEC1978    07JUL2012
1347      TA3       $56,111    24SEP1975    10SEP2011
1423      ME2       $50,082    18MAY1976    22AUG2006
1200      ME1       $38,942    13JAN1979    18AUG2010
1970      FA1       $31,661    29SEP1972    15MAR2008
1521      ME3       $58,136    15APR1971    17JUL2006
1354      SCP       $25,669    01JUN1979    20JUN2007
1424      FA2       $40,569    08AUG1977    15DEC2004
1132      FA1       $31,378    03JUN1980    26OCT2003
1845      BCK       $36,394    23NOV1967    26MAR2013
1556      PT1       $99,889    26JUN1972    14DEC2007
1413      FA2       $38,409    20SEP1973    06JAN2013
1123      TA1       $39,770    04NOV1980    09DEC2003
1907      TA2       $46,661    19NOV1968    09JUL2017
1436      TA2       $48,265    15JUN1972    15MAR2010
1385      ME3       $61,460    20JAN1970    04APR2006
1432      ME2       $49,458    07NOV1969    14FEB2005
1111      NA1       $56,820    18JUL1981    04NOV2010
1116      FA1       $32,007    02OCT1977    24MAR2013
1352      NA2       $75,317    06DEC1968    19OCT2006
1555      FA2       $38,499    20MAR1976    08JUL2015
1038      TA1       $37,146    13NOV1977    26NOV2014
1420      ME3       $60,299    23FEB1973    25JUL2013
1561      TA2       $48,320    03DEC1971    10OCT2011
1434      FA2       $40,071    14JUL1970    31OCT2004
1414      FA1       $33,102    28MAR1970    16APR2006
1112      TA1       $37,667    03DEC1972    11DEC2010
1390      FA2       $38,865    23FEB1973    26JUN2001
1332      NA1       $59,049    20SEP1978    07JUN2014
1890      PT2      $120,254    23JUL1979    28NOV2012
1429      TA1       $39,115    03MAR1968    11AUG2007
1107      PT2      $125,968    12JUN1962    13FEB2017
1908      TA2       $46,193    14DEC1977    26APR2010
1830      PT2      $118,259    31MAY1965    01FEB2006
1882      ME3       $58,153    14JUL1965    24NOV2002
1050      ME2       $49,234    17JUL1971    27AUG2008
1425      FA1       $33,571    31DEC1979    04MAR2007
1928      PT2      $125,801    19SEP1962    16JUL2002
1480      TA3       $55,416    07SEP1965    29MAR2017
1100      BCK       $35,006    05DEC1968    11MAY2000
1995      ME1       $40,334    28AUG1981    23SEP2004
1135      FA2       $38,249    24SEP1968    03APR2009
1415      FA2       $39,589    12MAR1966    15FEB2009
1076      PT1       $93,181    18OCT1980    06OCT2009
1426      TA2       $46,187    08DEC1974    28JUN2001
1564      SCP       $26,366    15APR1970    05JUL2005
1221      FA2       $39,054    25SEP1975    07OCT2009
1133      TA1       $38,781    16JUL1974    15FEB2001
1435      TA3       $54,331    15MAY1977    11FEB2006
1418      ME1       $39,207    02APR1965    09JAN2010
1017      TA3       $57,201    01JAN1966    20OCT2001
1443      NA1       $59,184    21NOV1976    01SEP2009
1131      TA2       $45,605    29DEC1979    22APR2006
1427      TA2       $47,664    03NOV1978    03FEB2010
1036      TA3       $55,149    23MAY1973    27OCT2003
1130      FA1       $33,482    19MAY1979    09JUN2009
1127      TA2       $46,215    13NOV1972    10DEC2006
1433      FA3       $46,175    11JUL1974    20JAN2004
1431      FA3       $46,522    13JUN1972    09APR2005
1122      FA2       $39,138    04MAY1971    01DEC2007
1105      ME2       $48,727    04MAR1970    16AUG2018
;;;;
data certadv.ctcities;
   input Code $1-3 City $5-22 Name $24-60 Country $61-66;
   datalines;
ANC Anchorage, AK      Anchorage International Airport      USA
BNA Nashville, TN      Nashville International Airport      USA
CDG Paris              Charles de Gaulle                    France
LAX Los Angeles, CA    Los Angeles International Airport    USA
RDU Raleigh-Durham, NC Raleigh-Durham International Airport USA
;
data certadv.salcomps;
   attrib EmpID length=$6;
   attrib LastName length=$32;
   attrib Phone length=$8;
   attrib Location length=$25;
   attrib Division length=$30;
   attrib HireDate length=8 format=DATE9.;
   attrib JobCode length=$6;
   attrib Salary length=8;

   infile datalines dsd;
   input
      EmpID
      LastName
      Phone
      Location
      Division
      HireDate
      JobCode
      Salary
   ;
datalines4;
E00001,MILLS,2380,CARY,FLIGHT OPERATIONS,17758,FLTAT3,25000
E00002,BOWER,1214,CARY,FINANCE & IT,17753,FINCLK,27000
E00003,READING,1428,CARY,HUMAN RESOURCES & FACILITIES,17502,VICEPR,120000
E00004,JUDD,2061,CARY,HUMAN RESOURCES & FACILITIES,17881,FACMNT,42000
E00006,ANDERSON,1007,CARY,SALES & MARKETING,17939,MKTCLK,31000
E00007,MASSENGILL,2290,CARY,FLIGHT OPERATIONS,17440,MECH01,29000
E00008,BADINE,1000,TORONTO,CORPORATE OPERATIONS,17733,OFFMGR,85000
E00009,DEMENT,1506,CARY,FINANCE & IT,18887,ITPROG,34000
E00010,FOSKEY,1666,CARY,AIRPORT OPERATIONS,18284,GRCREW,29000
E00011,POOLE,2594,CARY,FLIGHT OPERATIONS,18270,FLTAT3,27000
E00012,LEWIS,2207,CARY,SALES & MARKETING,19612,MKTCLK,33000
E00013,DBAIBO,1002,BOSTON,HUMAN RESOURCES & FACILITIES,18585,RECEPT,22000
E00014,KEARNEY,2075,CARY,FLIGHT OPERATIONS,18852,MECH02,19000
E00015,BROWN,1263,CARY,AIRPORT OPERATIONS,18484,GRCSUP,41000
E00017,SIMPSON,2821,CARY,HUMAN RESOURCES & FACILITIES,18566,RESCLK,36000
E00018,CROSS,1459,CARY,HUMAN RESOURCES & FACILITIES,19447,FACMNT,33000
E00020,JOHNSON,1256,CARY,HUMAN RESOURCES & FACILITIES,19710,FACCLK,21000
E00021,BAKER JR.,1001,HOUSTON,SALES & MARKETING,19152,SALMGR,43000
E00022,JOHNSON,1255,CARY,HUMAN RESOURCES & FACILITIES,18585,FACCLK,27000
E00023,FORT,1172,CARY,FLIGHT OPERATIONS,18511,FLTAT2,31000
E00024,COCKERHAM,1395,CARY,FLIGHT OPERATIONS,18602,FLTAT3,21000
E00025,BROCKLEBANK,1248,CARY,AIRPORT OPERATIONS,18339,BAGCLK,23000
E00026,THOMPSON,1516,CARY,FINANCE & IT,19967,ITSUPT,24000
E00027,BOWMAN,1215,CARY,FINANCE & IT,19998,FINACT,31000
E00029,MAROON,1325,CARY,AIRPORT OPERATIONS,19540,FLSCHD,17000
E00030,BREWER,1009,AUSTIN,SALES & MARKETING,19682,MKTCLK,38000
E00031,GOLDENBERG,1741,CARY,FLIGHT OPERATIONS,18556,PILOT3,28000
E00032,COUCH,1104,CARY,FINANCE & IT,19781,ITPROG,24000
E00033,FISHER,1166,CARY,FLIGHT OPERATIONS,19755,FLTAT2,35000
E00034,TOMPKINS,2997,CARY,FLIGHT OPERATIONS,19980,FLTAT3,28000
E00035,WEBB,3115,CARY,FINANCE & IT,18647,ITSUPT,26000
E00038,SMITH,2853,CARY,HUMAN RESOURCES & FACILITIES,19826,FACCLK,20000
E00039,MCKINNON,1053,TORONTO,HUMAN RESOURCES & FACILITIES,18644,FACCLK,38000
E00040,WILLIAMS,3157,CARY,FLIGHT OPERATIONS,19735,FLTAT1,32000
E00041,BRUTON,1008,TORONTO,SALES & MARKETING,19362,MKTCLK,45000
E00042,ANDERSON,1045,CARY,AIRPORT OPERATIONS,18724,BAGCLK,32000
E00043,WIELENGA,3146,CARY,FLIGHT OPERATIONS,18138,PILOT3,17000
E00044,HALL,1804,CARY,SALES & MARKETING,19492,SALCLK,25000
E00046,GOODYEAR,1754,CARY,FLIGHT OPERATIONS,19000,FLTAT1,44000
E00047,ECKHAUSEN,1581,CARY,FLIGHT OPERATIONS,19397,FLTAT3,40000
E00048,MOELL,2392,CARY,FLIGHT OPERATIONS,19724,FLTAT3,19000
E00049,CHASE JR.,1355,CARY,FLIGHT OPERATIONS,18758,FLTAT1,29000
E00050,DEXTER,1000,PHOENIX,CORPORATE OPERATIONS,19434,OFFMGR,95000
E00051,LIVELY,1307,CARY,FINANCE & IT,19435,ITPROG,19000
E00052,MELTON,2364,CARY,FLIGHT OPERATIONS,18803,FLTAT2,44000
E00053,CURTIS,1468,CARY,AIRPORT OPERATIONS,19258,GRCREW,39000
E00054,AGARWAL,1015,CARY,FINANCE & IT,19514,FINACT,26000
E00055,WHITE JR.,3140,CARY,FLIGHT OPERATIONS,19746,PILOT3,25000
E00056,POOLE,1068,TORONTO,AIRPORT OPERATIONS,19667,GRCREW,29000
E00058,BOOZER,1204,CARY,SALES & MARKETING,19205,SALCLK,41000
;;;;
data certadv.newsals;
   attrib EmpID length=$6 label='Employee Identification Number' format=$6. informat=$6.;
   attrib Salary length=8 label='Employee Salary' format=DOLLAR10. informat=DOLLAR10.;
   attrib NewSalary length=8 format=DOLLAR12.2;

   infile datalines dsd;
   input
      EmpID:$6.
      Salary:BEST32.
      NewSalary
   ;
datalines4;
E00001,25000,27420.0410151016
E00002,27000,31153.9798367554
E00003,120000,143789.802722535
E00004,42000,43695.1374104689
E00005,19000,20757.6761023875
E00006,31000,33753.704908748
E00007,29000,34072.764121123
E00008,85000,93811.783130193
E00009,34000,35501.1223235638
E00010,29000,33191.6531110143
E00011,27000,32141.8592883003
E00012,33000,38481.4395958005
E00013,22000,23243.7926877493
E00014,19000,20434.7787695167
E00015,41000,45394.1965766224
E00017,36000,36241.6429494701
E00018,33000,35947.7980943153
E00019,29000,29245.7566922743
E00020,21000,23002.9286173185
E00021,43000,43386.395015468
E00022,27000,27530.6518091497
E00023,31000,36835.7816173861
E00024,21000,21213.8790901815
E00025,23000,25673.5695526346
E00026,24000,25148.0644052606
E00027,31000,35579.2171682134
E00028,38000,45588.6103922448
E00029,17000,20032.2862008736
E00030,38000,41055.0544006075
E00031,28000,29262.9594235042
E00032,24000,28775.8130796141
E00033,35000,39960.4778531754
E00034,28000,29982.1037178775
E00035,26000,26996.9095651977
E00036,20000,23984.5195468443
E00037,19000,19598.1043910598
E00038,20000,22341.7671221968
E00039,38000,38249.2603668241
E00040,32000,33157.45576674
E00041,45000,53399.5842386035
E00042,32000,38023.9573357738
E00043,17000,19045.684455077
E00044,25000,26748.1620780882
E00045,21000,24501.8760602464
E00046,44000,51730.2554986114
E00047,40000,44104.0854882933
E00048,19000,21886.1529935552
E00049,29000,32892.8710132338
E00050,95000,109644.449530935
E00051,19000,21812.7622021421
;;;;
data certadv.convert;
   input Name $1-8 @9 Weight1 Weight2 Weight3 Weight4 Weight5 Weight6;
datalines;
Alicia  153.44016 151.89694 151.67648 148.59004 145.5036  145.94452
Betsy   115.96196 115.96196 113.97782 111.11184 109.78908 108.24586
Brenda  151.23556 149.03096 147.7082  146.38544 145.06268 143.73992
Carl    149.03096 146.82636 145.5036  144.18084 142.85808 141.53532
Carmela 140.21256 137.7875  136.46474 135.36244 134.03968 128.30772
David   155.64476 153.88108 152.55832 150.79464 149.47188 147.7082 
;;;
data certadv.qsales;
   input SalesRep $1-8 @10 Sales1 Sales2 Sales3 Sales4;
   datalines;
Britt    8400 8800 9300 9800
Fruchten 9500 9300 9800 8900
Goodyear 9150 9200 9650 11000
;;;;
data certadv.rain;
   input Amount;
datalines;
4
3.9
20
.5
6
;;;;
data certadv.countdata;
input string $char60.;
datalines;
The quick brown fox jumps over the lazy dog.
        Leading blanks
2+2=4
/unix/path/names/use/slashes
\Windows\Path\Names\Use\Backslashes
;;;;
data certadv.ReversedNames;
   input name & $32.;
   datalines;
Jones, Fred
Kavich, Kate
Turley, Ron
Dulix, Yolanda
;;;;
data certadv.confident;
   input text $80.;
   datalines;
The phone number for Jack is (801)443-9876 but not until tonight.
He can be reached at (910)998-8762 tomorrow for testing purposes.
;;;;
data certadv.lag;
   input item @@;
   datalines;
1 2 3 4 5 6
;
run;
data certadv.fitclass;
   input Name $1-8 @9 Weight1 Weight2 Weight3 Weight4 Weight5 Weight6;
datalines;
Alicia  69.6 68.9 68.8 67.4 66.0 66.2
Betsy   52.6 52.6 51.7 50.4 49.8 49.1
Brenda  68.6 67.6 67.0 66.4 65.8 65.2
Carl    67.6 66.6 66.0 65.4 64.8 64.2
Carmela 63.6 62.5 61.9 61.4 60.8 58.2
David   70.6 69.8 69.2 68.4 67.8 67.0
;;;
data certadv.newsals;
   attrib EmpID length=$6 label='Employee Identification Number' format=$6. informat=$6.;
   attrib Salary length=8 label='Employee Salary' format=DOLLAR10. informat=DOLLAR10.;
   attrib NewSalary length=8 format=DOLLAR12.2;

   infile datalines dsd;
   input
      EmpID:$6.
      Salary:BEST32.
      NewSalary
   ;
datalines4;
E00001,25000,27420.0410151016
E00002,27000,31153.9798367554
E00003,120000,143789.802722535
E00004,42000,43695.1374104689
E00005,19000,20757.6761023875
E00006,31000,33753.704908748
E00007,29000,34072.764121123
E00008,85000,93811.783130193
E00009,34000,35501.1223235638
E00010,29000,33191.6531110143
E00011,27000,32141.8592883003
E00012,33000,38481.4395958005
E00013,22000,23243.7926877493
E00014,19000,20434.7787695167
E00015,41000,45394.1965766224
E00017,36000,36241.6429494701
E00018,33000,35947.7980943153
E00019,29000,29245.7566922743
E00020,21000,23002.9286173185
E00021,43000,43386.395015468
E00022,27000,27530.6518091497
E00023,31000,36835.7816173861
E00024,21000,21213.8790901815
E00025,23000,25673.5695526346
E00026,24000,25148.0644052606
E00027,31000,35579.2171682134
E00028,38000,45588.6103922448
E00029,17000,20032.2862008736
E00030,38000,41055.0544006075
E00031,28000,29262.9594235042
E00032,24000,28775.8130796141
E00033,35000,39960.4778531754
E00034,28000,29982.1037178775
E00035,26000,26996.9095651977
E00036,20000,23984.5195468443
E00037,19000,19598.1043910598
E00038,20000,22341.7671221968
E00039,38000,38249.2603668241
E00040,32000,33157.45576674
E00041,45000,53399.5842386035
E00042,32000,38023.9573357738
E00043,17000,19045.684455077
E00044,25000,26748.1620780882
E00045,21000,24501.8760602464
E00046,44000,51730.2554986114
E00047,40000,44104.0854882933
E00048,19000,21886.1529935552
E00049,29000,32892.8710132338
E00050,95000,109644.449530935
E00051,19000,21812.7622021421
;;;;
data certadv.country;
input Country $1-2 CountryName $4-34 Population CountryID ContinentID;
datalines;
AU Australia                       20000000  160 96
CA Canada                                 .  260 91
DE Germany                         80000000  394 93
IL Israel                          5000000   475 95
TR Turkey                          70000000  905 95
US United States                   280000000 926 91
ZA South Africa                    43000000  801 94
;
data certadv.pets;
input Name $1-7 Price Arr;
format Price dollar8.;
format Arr   date9.;
datalines;
ANA     25  21465
FIFI    101 21385
GAO     57  21161
GAO     57  21161
SPARKY  136 21443
TRUFFLE 250 21414
ZEUS    500 21277
;
data certadv.dogs;
input Name $1-7 Price;
format Price dollar8.;
datalines;
FIFI    101
GEORGE  75
SPARKY  136
TRUFFLE 250
;
data certadv.winter;
input Month Temp Precip;
datalines;
1 29 .15
2 32 .17
3 38 .20
2 32 .17
;
data certadv.summer;
input Month Temp Precip;
datalines;
7 78 .05
8 85 .04
9 83 .15
;
data certadv.dates;
input Date;
datalines;
21456 8:30:01:34
21656 12:45:02:40
21688 14:30:10:25
21478 6:45:01:30
21368 16:30:10:32
;
data certadv.frequentflyers1;
   input FFID $ 1-6 MemberType $ 9-14 Name $ 17-41
         Address $ 44-63 PhoneNumber $ 66-77;
   format name $25.;
datalines;
WD7152  BRONZE  COOPER, LESLIE             66 DRIVING WAY        501/377-0703
WD8472  BRONZE  LONG, RUSSELL              9813 SUMTER SQUARE    501/367-1097
WD1576  GOLD    BRYANT, ALTON              763 THISTLE DRIVE     501/776-0631
WD3947  SILVER  NORRIS, DIANE              77 PARKWAY PLAZA      501/377-3739
WD9347  SILVER  PEARSON, BRYAN             9999 MARKUP MANOR     501/855-4780
WD8375  BRONZE  COOPER, ANTHONY            12 PIEDPIPER PLACE    602/965-2305
WD7208  BRONZE  LONG, CASEY                66 SHOTTS COURT       602/870-3646
WD6061  BRONZE  RODRIGUEZ, MARIA           88 FREQUENT LANE      602/538-2470
WD0646  GOLD    BOSTIC, MARIE              451 CONESTOGA CT      602/988-8584
WD9829  GOLD    COOK, JENNIFER             5431 TAYLOR WAY       602/274-4633
WD0227  GOLD    FOSTER, GERALD             919 FOURTY-SIX ST.    602/250-9239
WD3022  SILVER  CAHILL, LEONARD            8888 EIGHTH AVENUE    602/954-8143
WD4382  SILVER  O'NEAL, ALICE              148 FINISHED CIRCLE   602/256-1139
WD6080  SILVER  SMART, JONATHAN            4534 AUSTIN AVENUE    602/869-2237
WD9506  BRONZE  BRADLEY, JEREMY            111 PEOPLES COURT     213/512-9244
WD6374  BRONZE  BURKE, CHRISTOPHER         875 TRUNIPGREEN LANE  408/746-7368
WD4762  BRONZE  CARAWAY, NEIL              66 PINE VALLEY        415/493-5589
WD7568  BRONZE  MONROE, JOYCE              22 DOODAD LANE        415/882-3951
WD7255  BRONZE  MORGAN, ALFRED             78 INDIANA FREEWAY    213/855-2514
WD3541  GOLD    AVERY, JERRY               TWENTY-FIRST AVENUE   408/732-1792
WD4451  GOLD    EDGERTON, JOSHUA           5830 HUNTLEIGH DRIVE  805/258-4515
WD5190  GOLD    SAYERS, RANDY              506 CAPRICE COURT     415/361-1787
WD9840  GOLD    VANDEUSEN, RICHARD         333 MAJOR DRIVE       916/427-0774
WD0273  GOLD    WANG, CHRISTOPHER          7329 BAKERS DRIVE     707/792-4673
WD0750  SILVER  ROUSE, JEREMY              27 FUR BLUFF          209/453-7477
WD4620  SILVER  WASHBURN, LAWRENCE         55 FOGHORN COURT      415/991-9259
WD9129  BRONZE  EATON, ALICIA              111 HUNTINGTON LANE   303/370-1889
WD2607  BRONZE  MURPHEY, JOHN              567 TOOTHY WAY        303/773-9404
WD0231  GOLD    GORDON, ANNE               3950 HICCUP HWY       303/939-0154
WD3521  SILVER  FIELDS, DIANA              3490 TART STREET      303/368-9510
WD2950  SILVER  OVERMAN, CAROL             888 FIFTH STREET      303/757-4147
WD7683  SILVER  VEGA, DEBORAH              24 CAULDRON CIRCLE    303/236-1231
WD6177  SILVER  YOUNG, LAWRENCE            15 BOOKER DRIVE       303/744-7909
WD8782  BRONZE  BAUCOM, ALVIN              1 AVOCADO FREEWAY     203/273-5793
WD5120  BRONZE  BAUCOM, WALTER             789 SEABROOK AVENUE   203/636-6393
WD2501  BRONZE  NEWKIRK, WILLIAM           67 HEARTHSTONE DRIVE  203/964-8475
WD8281  BRONZE  PEARSON, JAMES             78 RAISIN ALLEY       203/722-4744
WD5460  GOLD    BAREFOOT, JOSEPH           333 PITS CITY         203/273-0576
WD6343  GOLD    BLAIR, JUSTIN              BLACKSPUR FREEWAY     203/636-4956
WD9710  GOLD    HOWARD, GRETCHEN           3564 APT. B           203/630-5418
WD0023  GOLD    JACKSON, LAURA             35 HARRIS AVENUE      203/798-7399
WD6408  SILVER  CASTON, FRANKLIN           2453 OFFICE PARK      203/563-6115
WD6594  SILVER  GORDON, LEVI               BOX 147 RT. 66        203/244-1681
WD5520  SILVER  JEPSEN, RONALD             143 LANDING LANE      203/798-6221
WD9053  SILVER  STEPHENSON, ADAM           56 COFFEE CIRCLE      203/353-7154
WD8213  SILVER  TRENTON, MELISSA           706 MAYNARD ROAD      203/796-6751
WD3395  BRONZE  VICK, THERESA              S.W. 51ST STREET      202/357-2242
WD5408  BRONZE  YOUNG, DAVIS               TURNIP GREEN DRIVE    202/245-6817
WD7097  GOLD    KRAMER, JACKSON            4567 CABANA COURT     301/763-4147
WD7721  GOLD    LEE, RUSSELL               43 FARLEY DRIVE       301/763-9511
WD7515  GOLD    TUCKER, ALAN               430 APPLEBLOSSOM      202/727-7354
WD8208  SILVER  DUNLAP, DONNA              50 TUMPTON STREET     202/728-0815
WD7978  SILVER  LAWRENCE, KATHY            712 STUFFY CIRCLE     202/566-7927
WD7569  BRONZE  SANDERSON, EDITH           BOOTS LANE            904/488-0366
WD0823  BRONZE  WELCH, DARIUS              3 S. SALEM ROAD       904/488-4569
WD4563  BRONZE  WELCH, RONDA               996 COMMONS WAY       904/488-7217
WD2454  BRONZE  WELLS, JONATHAN            678 CANDLESTICK PARK  904/487-0332
WD9220  GOLD    WATSON, BERNARD            98 ROUGH ROAD         407/367-3818
WD6911  SILVER  GRANT, DANIEL              504 BASHFORD ROAD     904/872-0562
WD3943  SILVER  PATTERSON, RENEE           7618 WINTERSET DRIVE  904/730-5186
WD0357  SILVER  SAUNDERS, MICHAEL          1 ELM STREET          407/244-5603
WD9413  SILVER  WELLS, AGNES               99 PRIX LANE          904/488-8608
WD6613  BRONZE  BURNETTE, THOMAS           14 COMPUTER DRIVE     404/329-7633
WD8355  GOLD    DAVIDSON, JASON            KILLER CIRCLE         404/584-9374
WD8336  SILVER  VEGA, ANNA                 234 HURLY HEIGHT ST.  912/552-4417
WD1410  SILVER  GRAHAM, ALVIN              4513 CHERRY PIT LANE  319/395-9683
WD6271  SILVER  MORGAN, GEORGE             39 PEPPER PLACE       319/352-0167
WD6462  BRONZE  CARTER, DONALD             444 CAPRICE COURT     312/727-6373
WD3951  BRONZE  CARTER, DOROTHY            79 E. HALFTON ROAD    312/727-1004
WD8968  BRONZE  CHAPMAN, NEIL              66 SAULT STREET       312/923-6553
WD9995  BRONZE  RAYNOR, MILTON             19 DOODLE DRIVE       312/822-2333
WD2173  GOLD    ALEXANDER, SUSAN           247 THOMAS LANE       312/362-0596
WD6815  GOLD    NEWTON, JAMES              123 PACIFIC CIRCLE    312/744-8467
WD1691  GOLD    PARKER, ANNE               16 CRAWFORD PLACE     312/698-9009
WD1365  GOLD    REED, MARILYN              LUE STREET            312/822-2647
WD2609  GOLD    WALTERS, LEONARD           99 FREEDOM STREET     312/322-0639
WD8294  SILVER  BOWDEN, EARL               98 VARSITY LANE       312/967-9800
WD0845  SILVER  CARAWAY, DAVIS             66 DUNLOP ROAD        312/280-5998
WD4092  SILVER  CARTER, KAREN              77 PARKWAY EAST       312/906-4882
WD4065  SILVER  DONALDSON, KAREN           14 HORSEY AVENUE      312/470-2826
WD7092  SILVER  PARKER, JAY                222 WITHAVIEW WAY     312/294-3987
WD6184  SILVER  STARR, WILLIAM             12 PINEY PLACE        312/926-9430
WD2004  BRONZE  KING, LESLIE               789 TARA STREET       812/429-9352
WD6383  BRONZE  MCDANIEL, RONDA            354 CRAGGY MIRE       317/542-2396
WD2118  GOLD    JOHNSON, ANTHONY           78 PIPER PLACE        317/845-4646
WD5361  GOLD    PARKER, MARY               456 SHRIVELED COURT   317/353-9399
WD1636  GOLD    VANDEUSEN, ANNA            SUPREME STREET        317/276-5996
WD7791  SILVER  BRADY, CHRISTIN            78 BELMONT LANE       317/230-0346
WD3827  SILVER  KING, WILLIAM              14 PICTURE PLACE      812/429-6041
WD6971  SILVER  KIRBY, ANNE                DUNDEE COURT          812/429-4251
WD0213  SILVER  PITTS, ANTHONY             88 SHERLOCK CIRCLE    812/377-0607
WD6832  SILVER  RHODES, JEREMY             901 INTERCHANGE WAY   812/867-2790
WD1630  SILVER  UPDIKE, THERESA            9870 UMPTON COURT     317/276-3926
WD4945  SILVER  WARD, ELAINE               555 TRYON             317/773-0278
WD2122  BRONZE  JOHNSON, JACKSON           21 JUMP STREET        316/526-7384
WD4781  GOLD    HUNTER, CLYDE              717 PEARLY GATE       913/291-5739
WD1700  GOLD    WOOD, ALAN                 12 CLOWN AROUND CR.   913/628-2795
WD4970  SILVER  STEPHENSON, LARRY          14 MAPLE DRIVE        504/389-3563
WD3099  GOLD    OVERMAN, MICHELLE          FOREST HILLS ROAD     508/291-2628
WD1471  GOLD    STARR, ALTON               1 BOURBON STREET      508/371-1266
WD5201  SILVER  OVERBY, NADINE             99 VASE PLACE         617/821-6123
WD4925  SILVER  TUTTLE, JACK               77777 SEVENTH STREET  508/559-5820
WD0237  BRONZE  VENTER, RANDALL            46 CUPPER STREET      301/961-5424
WD8054  BRONZE  VENTER, RANDY              88 WOODSY GROVE       301/961-6083
WD9902  BRONZE  WOOD, SANDRA               S. CLIFTON STREET     301/689-5388
WD8789  SILVER  HOWARD, LEONARD            45 PECAN PLACE        207/775-3375
WD7036  BRONZE  HUNTER, HELEN              2001 CHINUP CIRCLE    313/225-5954
WD8058  BRONZE  O'NEAL, BRYAN              143 S. SAUNDERS ST.   906/486-6778
WD2082  BRONZE  THOMPSON, ALICE            905 WAITING WAY       517/496-4293
WD6356  BRONZE  VEGA, FRANKLIN             778 SWEET STREET      313/994-9697
WD8330  BRONZE  WHALEY, CAROLYN            3267 SHADED TREE LN.  313/337-0108
WD6169  BRONZE  WILDER, NEIL               78 PUMPKIN PLACE      313/845-0919
WD0632  GOLD    BROWN, JASON               99 BENTLEY PLACE      313/354-6755
WD8856  GOLD    STEPHENSON, ROBERT         812 MAIN STREET       517/636-5259
WD9870  GOLD    UPCHURCH, LARRY            19TH AVOCADO VILLAGE  313/236-9457
WD0445  SILVER  DENNIS, ROGER              567 CHERRYSTONE CT    313/352-0051
WD7716  SILVER  MORGAN, DIANA              112 MAIN STREET       517/774-6646
WD0599  SILVER  SAYERS, MARSHALL           2310 HOWELL STREET    313/746-2204
WD5669  SILVER  THOMPSON, JOSHUA           1 HASSLE WAY          517/496-2015
WD0140  SILVER  THOMPSON, WAYNE            2469 HUNTER STREET    517/496-3559
WD3129  BRONZE  FLOWERS, ANNETTE           BOX 7700 SUMTER WAY   878/626-4481
WD7998  BRONZE  JONES, LESLIE              202 SHOTTS COURT      919/748-8668
WD3671  BRONZE  MCDANIEL, JOANN            77 COWBOY DRIVE       248/821-1223
WD7206  GOLD    HOWARD, MICHAEL            N. NOWELL STREET      919/489-0988
WD8209  GOLD    MARSHBURN, JASPER          W. 51ST STREET        248/476-1305
WD3169  GOLD    YOUNG, JOANN               10 WITHER WAY         704/462-8020
WD5621  SILVER  EDWARDS, BRENDA            APT. 901              919/727-0077
WD3964  SILVER  MARKS, JOHN                7893 SUITE 246        248/845-1091
WD2536  SILVER  MOORE, SUZANNE             S. SHELL DRIVE        823/906-4458
WD9747  SILVER  TRIPP, KATHY               77 JUNGLE JUNCTION    919/598-5142
WD2615  GOLD    HARTFORD, RAYMOND          356 PEACHTREE         402/390-4675
WD0825  GOLD    WASHBURN, GAYLE            8750 INDIAN WAY       402/399-6453
WD3076  SILVER  HENDERSON, WILLIAM         44 S. MAGNOLIA DRIVE  603/224-4299
WD3205  GOLD    DUNLAP, MARIA              45 MACY'S PLACE       201/316-4476
WD7286  GOLD    HOWARD, ROGER              567 MAIN STREET       201/456-3478
WD1974  BRONZE  APPLE, TROY                H2O AGUA LANE         516/663-7830
WD1339  BRONZE  ARTHUR, BARBARA            33 EYEGLASS COURT     516/663-3573
WD1354  BRONZE  KIRBY, JANICE              303 CAREY LANE        718/403-0324
WD8186  BRONZE  NELSON, SANDRA             S. COMMONS PLACE      212/906-1008
WD1637  GOLD    NELSON, FELICIA            NORTH STREET          516/326-9294
WD4885  GOLD    PETERS, RANDALL            RT. 10 BOX 87         212/746-7822
WD4604  GOLD    PITTS, MICHAEL             12 ENDING DRIVE       212/709-7960
WD4646  GOLD    RICHARDS, CASEY            1961 ERIE STREET      212/392-9309
WD8536  SILVER  NEWKIRK, SANDRA            1010 WUTHERING HTS.   212/906-5282
WD5818  SILVER  PENNINGTON, THOMAS         76 LADYINRED CORNER   607/255-5457
WD9165  SILVER  PETERSON, LEVI             14 LAMPLEY DRIVE      516/535-9282
WD3392  SILVER  PHELPS, WILLIAM            RT. 50 BOX 88         201/285-1281
WD3000  SILVER  PORTER, SUSAN              1 BAMBOO COURT        212/709-8890
WD6488  SILVER  UPCHURCH, MICHAEL          8803 CAT SCRATCH DR.  716/647-8055
WD5091  SILVER  WALTERS, DIANE             12 HASSLE FRWY        212/720-6911
WD3121  BRONZE  BURNETTE, MICHELLE         34 VELLEY DRIVE       419/435-9721
WD1961  GOLD    JONES, NATHAN              8 BOLOXI CIRCLE       216/379-5842
WD9959  SILVER  FERNANDEZ, KATRINA         17 CLYDE DRIVE        513/425-3195
WD1218  SILVER  GRAHAM, MARY               76 CELEBRATION CT.    614/424-1420
WD9080  SILVER  MURPHY, ANNE               WESTGATE AVENUE       513/784-0791
WD9894  SILVER  OSWALD, LESLIE             8830 DUMPY DRIVE      216/444-4796
WD3879  SILVER  PARKER, RICHARD            1 BEECH CREEK LANE    614/438-1239
WD8000  SILVER  PEARCE, THOMAS             THIRD AVENUE          405/767-5329
WD6674  SILVER  PEARCE, CAROL              14 RIVALRY ROAD       503/757-2469
WD3353  SILVER  YANCEY, ROBIN              99 SPUD STREET        503/669-1826
WD3468  BRONZE  BRYANT, LEONARD            999 TRADE ST.         412/337-3046
WD4692  BRONZE  DEAN, SANDRA               APPLEBLOSSOM COURT    215/972-4500
WD4049  BRONZE  GREEN, JANICE              783 TOPCAT LANE       814/533-4165
WD8667  BRONZE  YOUNG, DEBORAH             53 PINE PLACE         215/531-4407
WD5134  GOLD    COOK, BRENDA               1 PACIFIC HWY         215/443-0488
WD4963  GOLD    HARRIS, CHARLES            TUMBLEWEED ROAD       215/694-2748
WD7963  GOLD    RICHARDS, JAY              S. ATHENS DRIVE       215/697-7239
WD2369  GOLD    WANG, CHIN                 RT. 5 BOX 123         215/985-3691
WD5156  SILVER  BOYCE, JONATHAN            90 DOORWAY DRIVE      814/332-9419
WD2741  SILVER  EDGERTON, WAYNE            15 CHIPMUNK WAY       717/587-4776
WD5687  SILVER  EDWARDS, JENNIFER          3 PEGBOARD PLACE      717/231-4906
WD9642  SILVER  FLETCHER, MARIE            ROUND-THE-BEND CR     215/439-0562
WD4331  SILVER  GREEN, GEORGE              999 LIMEST WAY        215/694-0498
WD3127  SILVER  MOORE, LESLIE              717 AUSTIN AVENUE     412/268-9024
WD2719  SILVER  TUCKER, NEIL               35 TURQUOISE WAY      717/657-4442
WD4616  BRONZE  MORGAN, DONNA              14 198TH STREET       514/374-9839
WD1827  SILVER  SANDERS, RAYMOND           876 WITCHES WAY       514/848-5771
WD0715  SILVER  PARKER, WALTER             539 HEMLOCK BLUFF     615/327-9871
WD8111  BRONZE  CAHILL, MARSHALL           56 ANN STREET         713/831-7236
WD8545  BRONZE  LUFKIN, ROY                67 E. GROUPER         817/878-1876
WD1883  BRONZE  PENNINGTON, MICHAEL        22 57TH STREET        214/754-2538
WD1175  BRONZE  WOOD, ROBERT               W. 1ST STREET         214/353-5453
WD5282  GOLD    TUTTLE, THOMAS             88 WHARF STREET       214/272-6563
WD9641  GOLD    VARNER, CHIN               478 FRYE STREET       713/656-6916
WD3498  SILVER  MEYERS, PRESTON            567 TURNER LANE       713/552-7167
WD1042  SILVER  VARNER, ELIZABET           14 NOVA WAY           915/683-7784
WD0815  BRONZE  OVERBY, PHILLIP            E. FIRST STREET       804/253-3102
WD0448  GOLD    MORGAN, CHRISTOPHER        210 NEW HILL RD.      703/824-8273
WD0668  GOLD    RIVERS, SIMON              RT. 54 BOX 100        703/274-2887
WD6504  GOLD    WELLS, NADINE              52 TREETORN DRIVE     804/490-3454
WD1673  SILVER  MURPHY, ALICE              15 HUMPHREY PLACE     804/594-3547
WD8159  SILVER  PETERSON, SUZANNE          117 MARTIN ST NW      804/270-0916
WD0051  SILVER  SAUNDERS, JACK             8757 DOGWOOD DRIVE    804/786-2802
WD4657  SILVER  WALTERS, ANNE              36 ALICIA LANE        703/733-9565
WD7916  BRONZE  SANDERSON, NATHAN          202 S. FAIRVIEW ST.   206/753-8227
WD4757  BRONZE  DEAN, SHARON               256 DONE DRIVE        414/647-2143
WD3561  BRONZE  NICHOLLS, HENRY            214 ALMOST DRIVE      414/278-2446
WD1445  BRONZE  WOOD, DEBORAH              14 CAT STREET         414/735-8586
WD1447  GOLD    BLALOCK, RALPH             8899 PADUKAH WAY      414/734-2097
WD5020  GOLD    BOYCE, RANDALL             456 JEFFERSON FWY     414/382-9729
WD8478  GOLD    DELGADO, DARIUS            55 MILKY WAY          414/647-5891
WD4231  GOLD    DELGADO, MARIA             8880 BLOSSOM DRIVE    414/647-6597
WD2453  GOLD    DENNIS, FELICIA            55 TIN PAN ALLEY      414/647-8145
WD4991  SILVER  ADAMS, GERALD              45 POTTER DRIVE       414/721-4288
WD2455  SILVER  CHAPMAN, GAYLE             56 EAST PARKWAY       414/734-5265
WD6437  SILVER  JONES, RUSSELL             102 PLANTING POT ST.  414/259-6209
;;;;
data certadv.frequentflyers2;
   input City $ 1-20 State $ 26-27 ZipCode $ 34-38
         MilesTraveled 48-52 PointsEarned 62-66
         PointsUsed 76-80;
   format city $20. state $2. zipcode $5.
          milestraveled pointsearned pointsused 10.;
datalines;
Little Rock              AR      72201         30833         31333             0
Monticello               AR      71655         25570         26070             0
Bauxite                  AR      72011         56144         58644         27000
North Little Rock        AR      72119         40922         45922         23000
Bella Vista              AR      72714          4839          9839             0
Tempe                    AZ      85287         30007         30507         25000
Phoenix                  AZ      85024         48943         49443         30000
Fort Huachuca            AZ      85613         60142         60642         40000
Williams AFB             AZ      85240         87044         89544         25000
Phoenix                  AZ      85012          1901          4401             0
Phoenix                  AZ      85004         46579         49079         20000
Phoenix                  AZ      85016         41386         46386             0
Phoenix                  AZ      85003         30047         35047             0
Phoenix                  AZ      85027         11266         16266             0
Torrance                 CA      90509         40975         41475         30000
Sunnyvale                CA      94086         35813         36313         30000
Palo Alto                CA      94302         75669         76169             0
San Francisco            CA      94105         74292         74792         50000
Los Angeles,             CA      90048         10314         10814             0
Santa Clara              CA      95054         70523         73023         35000
Edwards AFB              CA      93523            19          2519             0
Redwood City             CA      94063         17848         20348             0
Sacramento               CA      95823         42026         44526         40000
Petaluma                 CA      94952         71343         73843         20000
Fresno                   CA      93727         49290         54290         25000
Daly City                CA      94015         74476         79476             0
Denver                   CO      80279         58049         58549         40000
Englewood                CO      80111         26663         27163             0
Boulder                  CO      80306          5446          7946         21000
Aurora                   CO      80014          8849         13849         20000
Denver                   CO      80222         91495         96495         22500
Lakewood                 CO      80228         46844         51844         40000
Denver                   CO      80209          7366         12366             0
Hartford                 CT      06156         17355         17855             0
Hartford                 CT      06156         99076         99576         80000
Stamford                 CT      06902         46911         47411         25000
Hartford                 CT      06103         62248         62748             0
Hartford                 CT      06156         16414         18914             0
Hartford                 CT      06156         57335         59835         40000
North Haven              CT      06473         33345         35845             0
Ridgefield               CT      06877         17495         19995         20000
Rocky Hill               CT      06067         98178        103178             0
East Hartford            CT      06108          6659         11659             0
Richfield                CT      06877         59209         64209         40000
Stamford                 CT      06902         98831        103831             0
Bethel                   CT      06801         94726         99726         40000
Washington               DC      20001         59359         59859         25000
Washington               DC      20204         16140         16640             0
Washington               DC      20233         34722         37222             0
Washington               DC      20233          4765          7265             0
Washington               DC      20001         45974         48474             0
Washington               DC      20049         64762         69762         40000
Washington               DC      20226         63623         68623         50000
Tallahassee              FL      32301         10392         10892             0
Tallahassee              FL      32399         37753         38253         20500
Tallahassee              FL      32399         94023         94523             0
Tallahassee              FL      32301         92761         93261         20000
Boca Raton               FL      33431         42204         44704         30000
Panama City              FL      32401         65027         70027         40000
Jacksonville             FL      32217         52151         57151         20000
Orlando                  FL      32801         44250         49250         20500
Tallahassee              FL      32399           206          5206             0
Atlanta                  GA      30329         20567         21067             0
Atlanta                  GA      30303         21588         24088         20000
Sandersville             GA      31082         85155         90155             0
Cedar Rapids             IA      52406         89797         94797         30000
Waverly                  IA      50677         50963         55963         40000
Chicago                  IL      60606         49431         49931         30000
Chicago                  IL      60606         21937         22437         20000
Chicago                  IL      60611         62051         62551             0
Chicago                  IL      60685         56383         56883         35000
Libertyville             IL      60048         58671         61171         22300
Chicago                  IL      60602         65625         68125         30000
Rosemont                 IL      60018         68603         71103         22900
Chicago                  IL      60685         92351         94851         20000
Chicago                  IL      60690         89616         92116         30000
Skokie                   IL      60077         55425         60425             0
Chicago                  IL      60611         96996        101996         30000
Chicago                  IL      60606         89019         94019         30000
Morton Grove             IL      60053          8267         13267         20000
Chicago                  IL      60603         74400         79400             0
Fort Sheridan            IL      60037         86814         91814             0
Evansville               IN      47721         75162         75662         25000
Indianapolis             IN      46219         28455         28955         25000
Indianapolis             IN      46250         28109         30609         30000
Indianapolis             IN      46219         74277         76777         50000
Indianapolis             IN      46285         30605         33105         20800
Indianapolis             IN      46206         58153         63153         20000
Evansville               IN      47721         27234         32234         30000
Evansville               IN      47721         51826         56826         40000
Columbus                 IN      47202         50902         55902         23090
Evansville               IN      47711         73291         78291         50000
Indianapolis             IN      46285         75743         80743         20000
Noblesville              IN      46060         79067         84067         50000
Wichita                  KS      67277         57416         57916         22000
Topeka                   KS      66629         29431         31931         30000
Hays                     KS      67601          9664         12164         25000
Plaquemine               LA      70765         50164         55164         40000
Wareham                  MA      02571         89554         92054         25000
Concord                  MA      01742         70771         73271         21000
Canton                   MA      02021          3668          8668             0
W. Bridgewater           MA      02379          7037         12037             0
Bethesda                 MD      20814         39978         40478         20000
Bethesda                 MD      20814         51816         52316         40000
Frostburg                MD      21537         59505         60005         30000
Portland                 ME      04101         65032         70032             0
Detroit                  MI      48232         77271         77771         60000
Ishpeming                MI      49849         74988         75488         70000
Auburn                   MI      48611         70505         71005         20000
Ann Arbor                MI      48105         67571         68071         40000
Dearborn                 MI      48121         75686         76186         40000
Dearborn                 MI      48121         61476         61976         40000
Southfield               MI      48075          8133         10633         30000
Midland                  MI      48674         86215         88715             0
Flint                    MI      48550         79828         82328         40000
Southfield               MI      48076         65352         70352         30000
Mt. Pleasant             MI      48859         57611         62611             0
Southfield               MI      48086         83471         88471         22000
Midland,                 MI      48686         86491         91491         60000
Midland,                 MI      48686         53549         58549         20800
Raleigh                  NC      27604         21865         22365         40000
Winston Salem            NC      27103         51510         52010         45000
RTP                      NC      27709         35271         35771         20550
Durham                   NC      27702         81926         84426         50000
RTP                      NC      27709         29324         31824             0
Hickory                  NC      28601         54272         56772         22000
Winston Salem            NC      27102         28431         33431             0
RTP                      NC      27709         65191         70191         20000
Raleigh                  NC      27886          1636          6636             0
Durham                   NC      27703         26735         31735             0
Omaha                    NE      68180         50477         52977         20000
Omaha                    NE      68114         49321         51821         20000
Concord                  NH      03306         64312         69312             0
Parsippany               NJ      07054         59350         61850         25000
Newark                   NJ      07101         43720         46220             0
Garden City              NY      11530         36452         36952         20000
Garden City              NY      11530         76282         76782         35000
Brooklyn                 NY      11201         82161         82661         20000
New York                 NY      10043         81275         81775             0
Lake Success             NY      11040         14303         16803         22850
New York                 NY      10021         83643         86143         70000
New York                 NY      10019          1723          4223             0
New York                 NY      10048         79862         82362             0
New York City            NY      10043         38882         43882         30000
Ithica                   NY      14853          7729         12729             0
Mineola                  NY      11501         80500         85500         80000
Morristown               NY      07960         91827         96827         22500
New York                 NY      10004         91403         96403         30000
Rochester                NY      14606         50700         55700         50000
New York                 NY      10045         32672         37672         20000
Fostoria                 OH      44830         53294         53794         20000
Akron                    OH      44317         83458         85958         30000
Middletown               OH      45043         17425         22425         20000
Columbus                 OH      43201         17559         22559         23000
Cincinnati               OH      45202         30145         35145         30000
Cleveland                OH      44195         78871         83871         40000
Worthington              OH      43085         47549         52549         20000
Ponca City               OK      74603         32388         37388         30000
Corvallis                OR      97330         49633         54633             0
Gresham                  OR      97030         88154         93154         30000
Alcoa Center             PA      15069         89121         89621         23500
Philadelphia             PA      13912         78963         79463             0
Johnstown                PA      15907         51606         52106         40000
Philadelphia             PA      19101         77764         78264             0
Horsham                  PA      19044         29041         31541         20000
Bethlehem                PA      18016         60405         62905         60000
Philadelphia             PA      19111         95140         97640         80000
Philadelphia             PA      19109         36745         39245         22780
Meadville                PA      16335         64219         69219             0
Clarks Summit            PA      18411           988          5988         35000
Harrisburg               PA      17104         19406         24406             0
Allentown                PA      18103         99293        104293             0
Bethlehem                PA      18016         26998         31998         20000
Pittsburgh               PA      15213         19016         24016             0
Harrisburg               PA      17110         27643         32643         20000
Montreal                 PQ      H2E 1         31348         31848             0
Montreal                 QU      H3G 1         28499         33499         25000
Nashville                TN      37208         95146        100146         20400
Houston                  TX      77253         21682         22182             0
Ft. Worth                TX      76102         83307         83807         80000
Dallas                   TX      75201         15543         16043         20000
Plano                    TX      75024         38474         38974             0
Dallas                   TX      75243         11051         13551             0
Houston                  TX      77002         48728         51228             0
Houston                  TX      77210         71666         76666         20000
Midland                  TX      79702         43248         48248         20700
Williamsburg             VA      23185         90051         90551         21000
Alexandria               VA      22302         58108         60608         20000
Alexandria               VA      22333         76850         79350         20000
Virginia Beach           VA      23462         44541         47041         45000
Newport News             VA      23661         63475         68475         20000
Richmond                 VA      23229         66121         71121             0
Richmond                 VA      23240         27133         32133         25000
Reston                   VA      22090         51955         56955             0
Olympia                  WA      98504         25623         26123         20000
Milwaukee                WI      53215         40916         41416             0
Milwaukee                WI      53202         83956         84456         22000
Appleton                 WI      54913         59275         59775         33000
Appleton                 WI      54919         62051         64551         21000
Milwaukee                WI      53024         19422         21922         20000
Milwaukee                WI      53215         95498         97998         45000
Milwaukee                WI      53215         46702         49202         20000
Milwaukee                WI      53215         33740         36240         25000
Neenah                   WI      54956         38589         43589         30000
Appleton                 WI      54912         52431         57431         35000
Wauwatosa                WI      53222         27772         32772         30000
;;;;
data certadv.frequentflyers;
   set certadv.frequentflyers1;
   set certadv.frequentflyers2;
run;
data certadv.staffchanges;
   input EmpID $ 1-4 LastName $ 9-23 FirstName $ 25-39
         City $ 41-55 State $ 57-58 PhoneNumber $ 65-76;
datalines;
1639    CARTER          KAREN           STAMFORD        CT      203/781-8839
1065    CHAPMAN         NEIL            NEW YORK        NY      718/384-5618
1561    SANDERS         RAYMOND         NEW YORK        NY      212/588-6615
1221    WALTERS         DIANE           NEW YORK        NY      718/384-1918
1447    BRIDESTON       AMY             NEW YORK        NY      718/384-1213
1998    POWELL          JIM             NEW YORK        NY      718/384-8642
;;;;
data certadv.flightschedule;
   informat Date date9. Destination FlightNumber $3.;
   input FlightNumber $ 1-3 @10 Date date9.
         Destination $ 27-29 EmpID $ 38-41;
   format date date9. Destination FlightNumber $3.;
datalines;
132      01MAR2013        YYZ        1739
132      01MAR2013        YYZ        1478
132      01MAR2013        YYZ        1130
132      01MAR2013        YYZ        1390
132      01MAR2013        YYZ        1983
132      01MAR2013        YYZ        1111
182      01MAR2013        YYZ        1076
182      01MAR2013        YYZ        1118
182      01MAR2013        YYZ        1094
182      01MAR2013        YYZ        1122
182      01MAR2013        YYZ        1115
182      01MAR2013        YYZ        1269
219      01MAR2013        LHR        1407
219      01MAR2013        LHR        1777
219      01MAR2013        LHR        1103
219      01MAR2013        LHR        1125
219      01MAR2013        LHR        1350
219      01MAR2013        LHR        1332
271      01MAR2013        CDG        1439
271      01MAR2013        CDG        1442
271      01MAR2013        CDG        1132
271      01MAR2013        CDG        1411
271      01MAR2013        CDG        1988
271      01MAR2013        CDG        1443
387      01MAR2013        CPH        1428
387      01MAR2013        CPH        1928
387      01MAR2013        CPH        1113
387      01MAR2013        CPH        1135
387      01MAR2013        CPH        1431
387      01MAR2013        CPH        1839
622      01MAR2013        FRA        1545
622      01MAR2013        FRA        1890
622      01MAR2013        FRA        1116
622      01MAR2013        FRA        1221
622      01MAR2013        FRA        1433
622      01MAR2013        FRA        1352
821      01MAR2013        LHR        1556
821      01MAR2013        LHR        1830
821      01MAR2013        LHR        1124
821      01MAR2013        LHR        1368
821      01MAR2013        LHR        1437
821      01MAR2013        LHR        1417
132      02MAR2013        YYZ        1556
132      02MAR2013        YYZ        1478
132      02MAR2013        YYZ        1113
132      02MAR2013        YYZ        1411
132      02MAR2013        YYZ        1574
132      02MAR2013        YYZ        1111
182      02MAR2013        YYZ        1076
182      02MAR2013        YYZ        1777
182      02MAR2013        YYZ        1414
182      02MAR2013        YYZ        1125
182      02MAR2013        YYZ        1434
182      02MAR2013        YYZ        1269
219      02MAR2013        LHR        1407
219      02MAR2013        LHR        1118
219      02MAR2013        LHR        1132
219      02MAR2013        LHR        1135
219      02MAR2013        LHR        1441
219      02MAR2013        LHR        1332
271      02MAR2013        CDG        1739
271      02MAR2013        CDG        1442
271      02MAR2013        CDG        1103
271      02MAR2013        CDG        1413
271      02MAR2013        CDG        1115
271      02MAR2013        CDG        1443
387      02MAR2013        CPH        1428
387      02MAR2013        CPH        1928
387      02MAR2013        CPH        1130
387      02MAR2013        CPH        1221
387      02MAR2013        CPH        1475
387      02MAR2013        CPH        1839
622      02MAR2013        FRA        1439
622      02MAR2013        FRA        1890
622      02MAR2013        FRA        1124
622      02MAR2013        FRA        1368
622      02MAR2013        FRA        1477
622      02MAR2013        FRA        1352
821      02MAR2013        LHR        1545
821      02MAR2013        LHR        1830
821      02MAR2013        LHR        1116
821      02MAR2013        LHR        1390
821      02MAR2013        LHR        1555
821      02MAR2013        LHR        1417
132      03MAR2013        YYZ        1739
132      03MAR2013        YYZ        1928
132      03MAR2013        YYZ        1425
132      03MAR2013        YYZ        1135
132      03MAR2013        YYZ        1437
132      03MAR2013        YYZ        1111
182      03MAR2013        YYZ        1407
182      03MAR2013        YYZ        1410
182      03MAR2013        YYZ        1094
182      03MAR2013        YYZ        1413
182      03MAR2013        YYZ        1574
182      03MAR2013        YYZ        1269
219      03MAR2013        LHR        1428
219      03MAR2013        LHR        1442
219      03MAR2013        LHR        1130
219      03MAR2013        LHR        1411
219      03MAR2013        LHR        1115
219      03MAR2013        LHR        1332
271      03MAR2013        CDG        1905
271      03MAR2013        CDG        1118
271      03MAR2013        CDG        1970
271      03MAR2013        CDG        1125
271      03MAR2013        CDG        1983
271      03MAR2013        CDG        1443
387      03MAR2013        CPH        1439
387      03MAR2013        CPH        1478
387      03MAR2013        CPH        1132
387      03MAR2013        CPH        1390
387      03MAR2013        CPH        1350
387      03MAR2013        CPH        1839
622      03MAR2013        FRA        1545
622      03MAR2013        FRA        1830
622      03MAR2013        FRA        1414
622      03MAR2013        FRA        1368
622      03MAR2013        FRA        1431
622      03MAR2013        FRA        1352
821      03MAR2013        LHR        1556
821      03MAR2013        LHR        1890
821      03MAR2013        LHR        1422
821      03MAR2013        LHR        1221
821      03MAR2013        LHR        1433
821      03MAR2013        LHR        1417
132      04MAR2013        YYZ        1428
132      04MAR2013        YYZ        1118
132      04MAR2013        YYZ        1103
132      04MAR2013        YYZ        1390
132      04MAR2013        YYZ        1350
132      04MAR2013        YYZ        1111
182      04MAR2013        YYZ        1905
182      04MAR2013        YYZ        1442
182      04MAR2013        YYZ        1132
182      04MAR2013        YYZ        1122
182      04MAR2013        YYZ        1988
182      04MAR2013        YYZ        1269
219      04MAR2013        LHR        1739
219      04MAR2013        LHR        1478
219      04MAR2013        LHR        1130
219      04MAR2013        LHR        1125
219      04MAR2013        LHR        1983
219      04MAR2013        LHR        1332
271      04MAR2013        CDG        1407
271      04MAR2013        CDG        1410
271      04MAR2013        CDG        1094
271      04MAR2013        CDG        1411
271      04MAR2013        CDG        1115
271      04MAR2013        CDG        1443
387      04MAR2013        CPH        1556
387      04MAR2013        CPH        1830
387      04MAR2013        CPH        1124
387      04MAR2013        CPH        1135
387      04MAR2013        CPH        1437
387      04MAR2013        CPH        1839
622      04MAR2013        FRA        1545
622      04MAR2013        FRA        1890
622      04MAR2013        FRA        1116
622      04MAR2013        FRA        1221
622      04MAR2013        FRA        1433
622      04MAR2013        FRA        1352
821      04MAR2013        LHR        1439
821      04MAR2013        LHR        1928
821      04MAR2013        LHR        1113
821      04MAR2013        LHR        1368
821      04MAR2013        LHR        1431
821      04MAR2013        LHR        1417
132      05MAR2013        YYZ        1556
132      05MAR2013        YYZ        1890
132      05MAR2013        YYZ        1113
132      05MAR2013        YYZ        1475
132      05MAR2013        YYZ        1431
132      05MAR2013        YYZ        1111
182      05MAR2013        YYZ        1407
182      05MAR2013        YYZ        1410
182      05MAR2013        YYZ        1414
182      05MAR2013        YYZ        1122
182      05MAR2013        YYZ        1555
182      05MAR2013        YYZ        1269
219      05MAR2013        LHR        1428
219      05MAR2013        LHR        1442
219      05MAR2013        LHR        1422
219      05MAR2013        LHR        1413
219      05MAR2013        LHR        1574
219      05MAR2013        LHR        1332
271      05MAR2013        CDG        1739
271      05MAR2013        CDG        1928
271      05MAR2013        CDG        1103
271      05MAR2013        CDG        1477
271      05MAR2013        CDG        1433
271      05MAR2013        CDG        1443
387      05MAR2013        CPH        1439
387      05MAR2013        CPH        1478
387      05MAR2013        CPH        1425
387      05MAR2013        CPH        1434
387      05MAR2013        CPH        1988
387      05MAR2013        CPH        1839
622      05MAR2013        FRA        1545
622      05MAR2013        FRA        1830
622      05MAR2013        FRA        1970
622      05MAR2013        FRA        1441
622      05MAR2013        FRA        1350
622      05MAR2013        FRA        1352
132      06MAR2013        YYZ        1333
132      06MAR2013        YYZ        1890
132      06MAR2013        YYZ        1414
132      06MAR2013        YYZ        1475
132      06MAR2013        YYZ        1437
132      06MAR2013        YYZ        1111
182      06MAR2013        YYZ        1905
182      06MAR2013        YYZ        1777
182      06MAR2013        YYZ        1422
182      06MAR2013        YYZ        1413
182      06MAR2013        YYZ        1574
182      06MAR2013        YYZ        1269
219      06MAR2013        LHR        1106
219      06MAR2013        LHR        1118
219      06MAR2013        LHR        1425
219      06MAR2013        LHR        1434
219      06MAR2013        LHR        1555
219      06MAR2013        LHR        1332
821      06MAR2013        LHR        1107
821      06MAR2013        LHR        1928
821      06MAR2013        LHR        1970
821      06MAR2013        LHR        1441
821      06MAR2013        LHR        1477
821      06MAR2013        LHR        1417
132      07MAR2013        YYZ        1407
132      07MAR2013        YYZ        1118
132      07MAR2013        YYZ        1094
132      07MAR2013        YYZ        1555
132      07MAR2013        YYZ        1350
132      07MAR2013        YYZ        1111
182      07MAR2013        YYZ        1076
182      07MAR2013        YYZ        1442
182      07MAR2013        YYZ        1116
182      07MAR2013        YYZ        1122
182      07MAR2013        YYZ        1988
182      07MAR2013        YYZ        1269
219      07MAR2013        LHR        1905
219      07MAR2013        LHR        1478
219      07MAR2013        LHR        1124
219      07MAR2013        LHR        1434
219      07MAR2013        LHR        1983
219      07MAR2013        LHR        1332
271      07MAR2013        CDG        1410
271      07MAR2013        CDG        1777
271      07MAR2013        CDG        1103
271      07MAR2013        CDG        1574
271      07MAR2013        CDG        1115
271      07MAR2013        CDG        1443
387      07MAR2013        CPH        1106
387      07MAR2013        CPH        1830
387      07MAR2013        CPH        1422
387      07MAR2013        CPH        1441
387      07MAR2013        CPH        1437
387      07MAR2013        CPH        1839
622      07MAR2013        FRA        1107
622      07MAR2013        FRA        1890
622      07MAR2013        FRA        1425
622      07MAR2013        FRA        1475
622      07MAR2013        FRA        1433
622      07MAR2013        FRA        1352
821      07MAR2013        LHR        1333
821      07MAR2013        LHR        1928
821      07MAR2013        LHR        1970
821      07MAR2013        LHR        1477
821      07MAR2013        LHR        1431
821      07MAR2013        LHR        1417
;;;;
data certadv.internationalflights;
   informat Date date9.;
   input FlightNumber $ 1-3 @10 Date date9.
         Destination $ 27-29 Boarded 40-42;
   format date date9.;
datalines;
182      01MAR2013        YYZ          104
219      01MAR2013        LHR          198
387      01MAR2013        CPH          152
622      01MAR2013        FRA          207
821      01MAR2013        LHR          205
132      01MAR2013        YYZ          115
271      01MAR2013        CDG          138
182      02MAR2013        YYZ          116
219      02MAR2013        LHR          147
387      02MAR2013        CPH          105
622      02MAR2013        FRA          176
821      02MAR2013        LHR          201
132      02MAR2013        YYZ          106
271      02MAR2013        CDG          172
182      03MAR2013        YYZ          137
219      03MAR2013        LHR          197
387      03MAR2013        CPH          138
622      03MAR2013        FRA          180
821      03MAR2013        LHR          151
132      03MAR2013        YYZ           75
271      03MAR2013        CDG          147
182      04MAR2013        YYZ          160
219      04MAR2013        LHR          232
387      04MAR2013        CPH           81
622      04MAR2013        FRA          137
821      04MAR2013        LHR          167
132      04MAR2013        YYZ          117
271      04MAR2013        CDG          146
182      05MAR2013        YYZ          125
219      05MAR2013        LHR          160
387      05MAR2013        CPH          142
622      05MAR2013        FRA          185
132      05MAR2013        YYZ          157
271      05MAR2013        CDG          177
182      06MAR2013        YYZ          122
219      06MAR2013        LHR          163
821      06MAR2013        LHR          167
132      06MAR2013        YYZ          150
182      07MAR2013        YYZ          155
219      07MAR2013        LHR          241
387      07MAR2013        CPH          131
622      07MAR2013        FRA          210
821      07MAR2013        LHR          215
132      07MAR2013        YYZ          164
271      07MAR2013        CDG          155
182      08MAR2013        YYZ          164
219      08MAR2013        LHR          183
387      08MAR2013        CPH          150
622      08MAR2013        FRA          176
821      08MAR2013        LHR          186
132      08MAR2013        YYZ          104
271      08MAR2013        CDG          152
182      09MAR2013        YYZ          140
219      09MAR2013        LHR          211
387      09MAR2013        CPH          128
622      09MAR2013        FRA          173
821      09MAR2013        LHR          203
132      09MAR2013        YYZ          119
271      09MAR2013        CDG          159
182      10MAR2013        YYZ          146
219      10MAR2013        LHR          167
387      10MAR2013        CPH          154
622      10MAR2013        FRA          129
821      10MAR2013        LHR          188
132      10MAR2013        YYZ           98
271      10MAR2013        CDG          182
182      11MAR2013        YYZ          165
219      11MAR2013        LHR          177
387      11MAR2013        CPH          115
622      11MAR2013        FRA          172
821      11MAR2013        LHR          174
132      11MAR2013        YYZ          141
271      11MAR2013        CDG          113
182      12MAR2013        YYZ          142
219      12MAR2013        LHR          229
387      12MAR2013        CPH          108
622      12MAR2013        FRA          204
132      12MAR2013        YYZ           93
271      12MAR2013        CDG          170
182      13MAR2013        YYZ           77
219      13MAR2013        LHR          160
821      13MAR2013        LHR          170
132      13MAR2013        YYZ          142
182      14MAR2013        YYZ          173
219      14MAR2013        LHR          166
387      14MAR2013        CPH          149
622      14MAR2013        FRA          190
821      14MAR2013        LHR          162
132      14MAR2013        YYZ          154
271      14MAR2013        CDG          100
182      15MAR2013        YYZ          114
219      15MAR2013        LHR          185
387      15MAR2013        CPH          158
622      15MAR2013        FRA          157
821      15MAR2013        LHR          159
132      15MAR2013        YYZ           71
271      15MAR2013        CDG          144
182      16MAR2013        YYZ           90
219      16MAR2013        LHR          145
387      16MAR2013        CPH          120
622      16MAR2013        FRA          177
821      16MAR2013        LHR          194
132      16MAR2013        YYZ           71
271      16MAR2013        CDG          128
182      17MAR2013        YYZ          123
219      17MAR2013        LHR          212
387      17MAR2013        CPH          114
622      17MAR2013        FRA          200
821      17MAR2013        LHR          232
132      17MAR2013        YYZ          137
271      17MAR2013        CDG          140
182      18MAR2013        YYZ          163
219      18MAR2013        LHR          188
387      18MAR2013        CPH          113
622      18MAR2013        FRA          160
821      18MAR2013        LHR          162
132      18MAR2013        YYZ          154
271      18MAR2013        CDG          111
182      19MAR2013        YYZ          134
219      19MAR2013        LHR          224
387      19MAR2013        CPH          117
622      19MAR2013        FRA          146
132      19MAR2013        YYZ          138
271      19MAR2013        CDG          137
182      20MAR2013        YYZ          158
219      20MAR2013        LHR          208
821      20MAR2013        LHR          176
132      20MAR2013        YYZ          102
182      21MAR2013        YYZ          151
219      21MAR2013        LHR          158
387      21MAR2013        CPH          163
622      21MAR2013        FRA          182
821      21MAR2013        LHR          223
132      21MAR2013        YYZ          105
271      21MAR2013        CDG          169
182      22MAR2013        YYZ           95
219      22MAR2013        LHR          166
387      22MAR2013        CPH          124
622      22MAR2013        FRA          175
821      22MAR2013        LHR          195
132      22MAR2013        YYZ           94
271      22MAR2013        CDG          191
182      23MAR2013        YYZ           86
219      23MAR2013        LHR          180
387      23MAR2013        CPH          138
622      23MAR2013        FRA          199
821      23MAR2013        LHR          125
132              .        YYZ           98
271      23MAR2013        CDG          173
182      24MAR2013        YYZ          141
219      24MAR2013        LHR          181
387      24MAR2013        CPH          152
622      24MAR2013        FRA          154
821      24MAR2013        LHR          184
132      24MAR2013        YYZ           79
271      24MAR2013        CDG          146
182      25MAR2013        YYZ          147
219      25MAR2013        LHR          196
387      25MAR2013        CPH          107
622      25MAR2013        FRA          168
821      25MAR2013        LHR          200
132      25MAR2013        YYZ          156
271      25MAR2013        CDG          118
182      26MAR2013        YYZ          116
219      26MAR2013        LHR          202
387      26MAR2013        CPH           92
622      26MAR2013        FRA          211
132      26MAR2013        YYZ           88
271      26MAR2013        CDG          170
182      27MAR2013        YYZ          138
219      27MAR2013        LHR          179
821      27MAR2013        LHR          194
132      27MAR2013        YYZ          103
182      28MAR2013        YYZ          158
219      28MAR2013        LHR          136
387      28MAR2013        CPH          119
622      28MAR2013        FRA          225
821      28MAR2013        LHR          162
132      28MAR2013        YYZ           88
271      28MAR2013        CDG          187
182      29MAR2013        YYZ          150
219      29MAR2013        LHR          202
387      29MAR2013        CPH          177
622      29MAR2013        FRA          110
821      29MAR2013        LHR          206
132      29MAR2013        YYZ          106
271      29MAR2013        CDG          168
182      30MAR2013        YYZ          115
219      30MAR2013        LHR          172
387      30MAR2013        CPH          175
622      30MAR2013        FRA          209
821      30MAR2013        LHR          113
132      30MAR2013        YYZ          149
271      30MAR2013        CDG          164
182      31MAR2013        YYZ           91
219      31MAR2013        LHR          173
387      31MAR2013        CPH          147
622      31MAR2013        FRA          197
821      31MAR2013        LHR          212
132      31MAR2013        YYZ           85
271      31MAR2013        CDG          138
;;;;
data certadv.marchflights;
   informat Date date9. DepartureTime time5.;
   input FlightNumber $ 1-3 @6 Date date9. @17 DepartureTime time5.
         Origin $ 19-21 Destination $ 29-31 Distance 34-37 Mail 40-42
         Freight 45-47 Boarded 50-52 Transferred 55-56
         NonRevenue 59 Deplaned 62-64 PassengerCapacity 67-69;
   format Date date9. DepartureTime time5.;
datalines;
182  01MAR2013   8:21  LGA  YYZ   366  458  390  104  16  3  123  178
114  01MAR2013   7:10  LGA  LAX  2475  357  390  172  18  6  196  210
202  01MAR2013  10:43  LGA  ORD   740  369  244  151  11  5  157  210
219  01MAR2013   9:31  LGA  LHR  3442  412  334  198  17  7  222  250
439  01MAR2013  12:16  LGA  LAX  2475  422  267  167  13  5  185  210
387  01MAR2013  11:40  LGA  CPH  3856  423  398  152   8  3  163  250
290  01MAR2013   6:56  LGA  WAS   229  327  253   96  16  7  117  180
523  01MAR2013  15:19  LGA  ORD   740  476  456  177  20  3  185  210
982  01MAR2013  10:28  LGA  DFW  1383  383  355   49  19  2   56  180
622  01MAR2013  12:19  LGA  FRA  3857  255  243  207  15  5  227  250
821  01MAR2013  14:56  LGA  LHR  3442  334  289  205  13  4  222  250
872  01MAR2013  13:02  LGA  LAX  2475  316  357  145  13  5  163  210
416  01MAR2013   9:09  LGA  WAS   229  497  235   71  18  4   90  180
132  01MAR2013  15:35  LGA  YYZ   366  288  459  115  24  5  144  178
829  01MAR2013  13:38  LGA  WAS   229  487  235   75  16  5   88  180
183  01MAR2013  17:46  LGA  WAS   229  371  270   80  19  3   85  180
271  01MAR2013  13:17  LGA  CDG  3635  490  392  138  14  6  158  250
921  01MAR2013  17:11  LGA  DFW  1383  362  377  122   8  4  132  180
302  01MAR2013  20:22  LGA  WAS   229  363  273  105  24  3  128  180
431  01MAR2013  18:50  LGA  LAX  2475  403  427  153  14  6  173  210
308  01MAR2013  21:06  LGA  ORD   740  311  307  159  20  8  181  210
182  02MAR2013   8:21  LGA  YYZ   366  386  230  116  19  6  141  178
114  02MAR2013   7:10  LGA  LAX  2475  361  286  119  12  6  137  210
202  02MAR2013  10:43  LGA  ORD   740  399  161  120  15  2  124  210
219  02MAR2013   9:31  LGA  LHR  3442  285  164  147  18  7  172  250
439  02MAR2013  12:16  LGA  LAX  2475  575  353  126  17  5  148  210
387  02MAR2013  11:40  LGA  CPH  3856  355  457  105   8  1  114  250
290  02MAR2013   6:56  LGA  WAS   229  420  305  108  19  5  131  180
523  02MAR2013  15:19  LGA  ORD   740  362  445   95  24  5  100  210
982  02MAR2013  10:28  LGA  DFW  1383  239  177   95  15  3  109  180
622  02MAR2013  12:19  LGA  FRA  3857  370  469  176   7  4  187  250
821  02MAR2013  14:56  LGA  LHR  3442  530  391  201   6  3  210  250
872  02MAR2013  13:02  LGA  LAX  2475  340  434  130   4  5  139  210
416  02MAR2013   9:09  LGA  WAS   229  265  334   80   3  7   87  180
132  02MAR2013  15:35  LGA  YYZ   366  430  405  106  18  5  129  178
829  02MAR2013  13:38  LGA  WAS   229  339  153   88  14  5  103  180
183  02MAR2013  17:46  LGA  WAS   229  395  112   94  17  1  104  180
271  02MAR2013  13:17  LGA  CDG  3635  342  359  172  15  4  191  250
921  02MAR2013  17:11  LGA  DFW  1383  411  347  126  25  6  138  180
302  02MAR2013  20:22  LGA  WAS   229  511  224   78  10  5   92  180
431  02MAR2013  18:50  LGA  LAX  2475  326  163  165   6  6  177  210
308  02MAR2013  21:06  LGA  ORD   740  306  384  144  11  5  151  210
182  03MAR2013   8:21  LGA  YYZ   366  411  278  137  17  4  158  178
114  03MAR2013   7:10  LGA  LAX  2475  433  336  197   9  2  208  210
202  03MAR2013  10:43  LGA  ORD   740  458  370  118  27  2  138  210
219  03MAR2013   9:31  LGA  LHR  3442  369  441  197   8  6  211  250
439  03MAR2013  12:16  LGA  LAX  2475  381  281  153  13  6  172  210
387  03MAR2013  11:40  LGA  CPH  3856  465  421  138   9  6  153  250
290  03MAR2013   6:56  LGA  WAS   229  441  515  114  22  3  134  180
523  03MAR2013  15:19  LGA  ORD   740  368  363  162   8  5  167  210
982  03MAR2013  10:28  LGA  DFW  1383  195  439  134   8  8  149  180
622  03MAR2013  12:19  LGA  FRA  3857  296  414  180  16  4  200  250
821  03MAR2013  14:56  LGA  LHR  3442  448  282  151  17  4  172  250
872  03MAR2013  13:02  LGA  LAX  2475  366  284  151  12  4  167  210
416  03MAR2013   9:09  LGA  WAS   229  477  335   97  15  2  109  180
132  03MAR2013  15:35  LGA  YYZ   366  288  346   75   8  5   88  178
829  03MAR2013  13:38  LGA  WAS   229  355  252   80  15  5   94  180
183  03MAR2013  17:46  LGA  WAS   229  424  336   69  27  5   88  180
271  03MAR2013  13:17  LGA  CDG  3635  352  351  147  29  7  183  250
921  03MAR2013  17:11  LGA  DFW  1383  428  351   66  14  5   78  180
302  03MAR2013  20:22  LGA  WAS   229  411  310  123  21  5  132  180
431  03MAR2013  18:50  LGA  LAX  2475  304  351  160  14  5  179  210
308  03MAR2013  21:06  LGA  ORD   740  445  271  142   8  4  150  210
182  04MAR2013   8:21  LGA  YYZ   366  327  160  160  18  0  178  178
114  04MAR2013   7:10  LGA  LAX  2475  416  337  178  23  5  206  210
202  04MAR2013  10:43  LGA  ORD   740  295  464  148  11  4  154  210
219  04MAR2013   9:31  LGA  LHR  3442  331  376  232  18  0  250  250
439  04MAR2013  12:16  LGA  LAX  2475  574  208  181  16  7  204  210
387  04MAR2013  11:40  LGA  CPH  3856  395  217   81  21  1  103  250
290  04MAR2013   6:56  LGA  WAS   229  307  505  131   9  4  139  180
523  04MAR2013  15:19  LGA  ORD   740  334  351  193  17  0  199  210
982  04MAR2013  10:28  LGA  DFW  1383  405  227  159  14  5  172  180
622  04MAR2013  12:19  LGA  FRA  3857  296  232  137  14  4  155  250
821  04MAR2013  14:56  LGA  LHR  3442  403  209  167   9  6  182  250
872  04MAR2013  13:02  LGA  LAX  2475  478  277  106   9  3  118  210
416  04MAR2013   9:09  LGA  WAS   229  332  449  147   9  5  155  180
132  04MAR2013  15:35  LGA  YYZ   366  446   65  117   6  6  129  178
829  04MAR2013  13:38  LGA  WAS   229  345  308  125  13  4  133  180
183  04MAR2013  17:46  LGA  WAS   229  413  337  122   8  6  129  180
271  04MAR2013  13:17  LGA  CDG  3635  492  308  146  13  4  163  250
921  04MAR2013  17:11  LGA  DFW  1383  267  199  158  11  6  168  180
302  04MAR2013  20:22  LGA  WAS   229  345  335  115  14  4  125  180
431  04MAR2013  18:50  LGA  LAX  2475  465  216  181  19  5  205  210
308  04MAR2013  21:06  LGA  ORD   740  347  436  134   8  5  146  210
182  05MAR2013   8:21  LGA  YYZ   366  461  317  125  24  5  154  178
114  05MAR2013   7:10  LGA  LAX  2475  540  523  117  21  5  143  210
202  05MAR2013  10:43  LGA  ORD   740  357  494  104   6  6  114  210
219  05MAR2013   9:31  LGA  LHR  3442  485  267  160   4  3  167  250
439  05MAR2013  12:16  LGA  LAX  2475  451  401  116  18  5  139  210
387  05MAR2013  11:40  LGA  CPH  3856  393  304  142   8  2  152  250
290  05MAR2013   6:56  LGA  WAS   229  338  455   30  22  3   50  180
523  05MAR2013  15:19  LGA  ORD   740  368  432   47   9  3   53  210
982  05MAR2013  10:28  LGA  DFW  1383  487  335   90  23  7  103  180
622  05MAR2013  12:19  LGA  FRA  3857  340  311  185  11  3  199  250
872  05MAR2013  13:02  LGA  LAX  2475  435  182  122  12  5  139  210
416  05MAR2013   9:09  LGA  WAS   229  433  165   13  14  4   18  180
132  05MAR2013  15:35  LGA  YYZ   366  294  401  157  12  6  175  178
829  05MAR2013  13:38  LGA  WAS   229  444  478   60  15  6   68  180
183  05MAR2013  17:46  LGA  WAS   229  371  258   58  11  6   73  180
271  05MAR2013  13:17  LGA  CDG  3635  366  498  177  22  4  203  250
921  05MAR2013  17:11  LGA  DFW  1383  346  282   88  21  5  110  180
302  05MAR2013  20:22  LGA  WAS   229  466  436   83   4  4   89  180
431  05MAR2013  18:50  LGA  LAX  2475  395  365  145   7  6  158  210
308  05MAR2013  21:06  LGA  ORD   740  306  365   88  18  5   96  210
182  06MAR2013   8:21  LGA  YYZ   366  443  360  122  12  7  141  178
114  06MAR2013   7:10  LGA  LAX  2475  394  220  128  19  4  151  210
202  06MAR2013  10:43  LGA  ORD   740  383  286  115  19  3  136  210
219  06MAR2013   9:31  LGA  LHR  3442  388  298  163  14  6  183  250
439  06MAR2013  12:16  LGA  LAX  2475  234  120  157  16  3  176  210
290  06MAR2013   6:56  LGA  WAS   229  290  361   95  21  7  118  180
523  06MAR2013  15:19  LGA  ORD   740  435  404  106  11  7  116  210
982  06MAR2013  10:28  LGA  DFW  1383  376  330   93  12  5  100  180
821  06MAR2013  14:56  LGA  LHR  3442  345  243  167  16  2  185  250
872  06MAR2013  13:02  LGA  LAX  2475  366  392  178  16  3  197  210
416  06MAR2013   9:09  LGA  WAS   229  499  402   67  18  5   83  180
132  06MAR2013  15:35  LGA  YYZ   366  481  294  150   3  7  160  178
829  06MAR2013  13:38  LGA  WAS   229  350  312   72  11  3   75  180
183  06MAR2013  17:46  LGA  WAS   229  385  347   67  18  6   84  180
921  06MAR2013  17:11  LGA  DFW  1383  375  263  114  19  4  130  180
302  06MAR2013  20:22  LGA  WAS   229  465  322   66  15  7   87  180
431  06MAR2013  18:50  LGA  LAX  2475  423  310  129  26  2  157  210
308  06MAR2013  21:06  LGA  ORD   740  482  257  189  21  0  194  210
182  07MAR2013   8:21  LGA  YYZ   366  388  569  155  23  0  178  178
114  07MAR2013   7:10  LGA  LAX  2475  466  348  160  23  5  188  210
202  07MAR2013  10:43  LGA  ORD   740  439  220  175  10  3  183  210
219  07MAR2013   9:31  LGA  LHR  3442  421  356  241   9  0  250  250
439  07MAR2013  12:16  LGA  LAX  2475  338  204  196  14  0  210  210
387  07MAR2013  11:40  LGA  CPH  3856  546  204  131   5  6  142  250
290  07MAR2013   6:56  LGA  WAS   229  422  424  168  12  0  174  180
523  07MAR2013  15:19  LGA  ORD   740  338  477  170  22  2  180  210
982  07MAR2013  10:28  LGA  DFW  1383  474  249  113   7  4  121  180
622  07MAR2013  12:19  LGA  FRA  3857  391  423  210  22  5  237  250
821  07MAR2013  14:56  LGA  LHR  3442  248  307  215  11  5  231  250
872  07MAR2013  13:02  LGA  LAX  2475  371  353  194   7  7  208  210
416  07MAR2013   9:09  LGA  WAS   229  371  289  147  24  2  171  180
132  07MAR2013  15:35  LGA  YYZ   366  439  338  164   5  3  172  178
829  07MAR2013  13:38  LGA  WAS   229  316  249  133  16  2  150  180
183  07MAR2013  17:46  LGA  WAS   229  281  216  129  11  4  142  180
271  07MAR2013  13:17  LGA  CDG  3635  353  205  155  21  4  180  250
921  07MAR2013  17:11  LGA  DFW  1383  452  282  158  22  0  169  180
302  07MAR2013  20:22  LGA  WAS   229  425  435  135  16  5  141  180
431  07MAR2013  18:50  LGA  LAX  2475  356  298  195  15  0  210  210
308  07MAR2013  21:06  LGA  ORD   740  370  381  193  17  0  198  210
182  08MAR2013   8:21  LGA  YYZ   366  343  387  164  14  0  178  178
114  08MAR2013   7:10  LGA  LAX  2475  450  246  129  21  5  155  210
202  08MAR2013  10:43  LGA  ORD   740  508  334  130  11  4  136  210
219  08MAR2013   9:31  LGA  LHR  3442  447  299  183  11  3  197  250
439  08MAR2013  12:16  LGA       2475  247  187  150  13  4  167  210
387  08MAR2013  11:40  LGA  CPH  3856  415  367  150   9  3  162  250
290  08MAR2013   6:56  LGA  WAS   229  424  456   90  21  2  108  180
523  08MAR2013  15:19  LGA  ORD   740  457  342  160  21  2  182  210
982  08MAR2013  10:28  LGA  DFW  1383  228  213  116  15  4  123  180
622  08MAR2013  12:19  LGA  FRA  3857  346    .  176   5  6  187  250
821  08MAR2013  14:56  LGA  LHR  3442  391  395  186  11  5  202  250
872  08MAR2013  13:02  LGA  LAX  2475  352  293  131  23  4  158  210
416  08MAR2013   9:09  LGA  WAS   229  347  300   61  11  5   71  180
132  08MAR2013  15:35  LGA  YYZ   366  342  465  104  13  1  118  178
829  08MAR2013  13:38  LGA  WAS   229  397  387  100  14  2  102  180
183  08MAR2013  17:46  LGA  WAS   229  380  335   88  14  5   93  180
271  08MAR2013  13:17  LGA  CDG  3635  366  279  152  20  4  176  250
921  08MAR2013  17:11  LGA  DFW  1383  502  308   90  17  5   99  180
302  08MAR2013  20:22  LGA  WAS   229  427  362   65  10  2   70  180
431  08MAR2013  18:50  LGA  LAX  2475  416  151  184  16  6  206  210
308  08MAR2013  21:06  LGA  ORD   740  424  184  134  11  4  143  210
182  09MAR2013   8:21  LGA  YYZ   366  477  192  140  26  3  169  178
114  09MAR2013   7:10  LGA  LAX  2475  395  454  156  16  6  178  210
202  09MAR2013  10:43  LGA  ORD   740  335  323  141  15  5  150  210
219  09MAR2013   9:31  LGA  LHR  3442  356  547  211  18  6  235  250
439  09MAR2013  12:16  LGA  LAX  2475  365  398  136   5  6  147  210
387  09MAR2013  11:40  LGA  CPH  3856  363  297  128  14  3  145  250
290  09MAR2013   6:56  LGA  WAS   229  311  434   38  17  7   58  180
523  09MAR2013  15:19  LGA  ORD   740  224  201  161  15  5  172  210
982  09MAR2013  10:28  LGA  DFW  1383  266  410  163  17  0  173  180
622  09MAR2013  12:19  LGA  FRA  3857  317  421  173  11  5  189  250
821  09MAR2013  14:56  LGA  LHR  3442  219  368  203  11  4  218  250
872  09MAR2013  13:02  LGA  LAX  2475  317  380   99  21  4  124  210
416  09MAR2013   9:09  LGA  WAS   229  355  410   72  11  4   78  180
132  09MAR2013  15:35  LGA  YYZ   366  470  361  119   7  4  130  178
829  09MAR2013  13:38  LGA  WAS   229  458  506   82  16  3   93  180
183  09MAR2013  17:46  LGA  WAS   229  396  315   78  12  2   81  180
271  09MAR2013  13:17  LGA  CDG  3635  357  282  159  18  5  182  250
921  09MAR2013  17:11  LGA  DFW  1383  284  150   88   6  6   99  180
302  09MAR2013  20:22  LGA  WAS   229  454  631  106  21  5  112  180
431  09MAR2013  18:50  LGA  LAX  2475  373  339  142  14  4  160  210
308  09MAR2013  21:06  LGA  ORD   740  371  408  135  15  3  147  210
182  10MAR2013   8:21  LGA  YYZ   366  421  319  146   8  6  160  178
114  10MAR2013   7:10  LGA  LAX  2475  305  428  183  10  5  198  210
202  10MAR2013  10:43  LGA  ORD   740  535  386  127   9  3  137  210
219  10MAR2013   9:31  LGA  LHR  3442  272  370  167   7  7  181  250
439  10MAR2013  12:16  LGA  LAX  2475  343  302  164  15  5  184  210
387  10MAR2013  11:40  LGA  CPH  3856  336  377  154  18  5  177  250
290  10MAR2013   6:56  LGA  WAS   229  420  289   75  14  5   90  180
523  10MAR2013  15:19  LGA  ORD   740  459  253  144  13  3  152  210
982  10MAR2013  10:28  LGA  DFW  1383  337  132  116  14  5  121  180
622  10MAR2013  12:19  LGA  FRA  3857  272  363  129  12  6  147  250
821  10MAR2013  14:56  LGA  LHR  3442  389  479  188   5  4  197  250
872  10MAR2013  13:02  LGA  LAX  2475  357  437  170  18  6  194  210
416  10MAR2013   9:09  LGA  WAS   229  240  241   58  17  3   61  180
132  10MAR2013  15:35  LGA  YYZ   366  438  367   98  14  4  116  178
829  10MAR2013  13:38  LGA  WAS   229  354  391   63  19  2   81  180
183  10MAR2013  17:46  LGA  WAS   229  440  307   86  15  5   93  180
271  10MAR2013  13:17  LGA  CDG  3635  415  463  182   9  7  198  250
921  10MAR2013  17:11  LGA  DFW  1383  483  374   67  16  6   74  180
302  10MAR2013  20:22  LGA  WAS   229  304  455   91   3  4   96  180
431  10MAR2013  18:50  LGA  LAX  2475  284  346  192  18  0  210  210
308  10MAR2013  21:06  LGA  ORD   740  248  129  186  18  4  199  210
182  11MAR2013   8:21  LGA  YYZ   366  357  265  165  13  0  178  178
114  11MAR2013   7:10  LGA  LAX  2475  449  307  188  22  0  210  210
202  11MAR2013  10:43  LGA  ORD   740  438  435  165  12  4  173  210
219  11MAR2013   9:31  LGA  LHR  3442  327  374  177  15  3  195  250
439  11MAR2013  12:16  LGA  LAX  2475  309  223  196  14  0  210  210
387  11MAR2013  11:40  LGA  CPH  3856  327  378  115  20  1  136  250
290  11MAR2013   6:56  LGA  WAS   229  475  358   91  27  4  118  180
523  11MAR2013  15:19  LGA  ORD   740  339  329  176  18  5  196  210
982  11MAR2013  10:28  LGA  DFW  1383  214  431  118   9  4  128  180
622  11MAR2013  12:19  LGA  FRA  3857  375  301  172  17  5  194  250
821  11MAR2013  14:56  LGA  LHR  3442  272  497  174   5  4  183  250
872  11MAR2013  13:02  LGA  LAX  2475  346  328  166   7  1  174  210
416  11MAR2013   9:09  LGA  WAS   229  396  472  128  20  5  146  180
132  11MAR2013  15:35  LGA  YYZ   366  281  408  141  11  6  158  178
829  11MAR2013  13:38  LGA  WAS   229  378  336  118  21  3  139  180
183  11MAR2013  17:46  LGA  WAS   229  334  503  111   9  6  120  180
271  11MAR2013  13:17  LGA  CDG  3635  281  329  113  14  7  134  250
921  11MAR2013  17:11  LGA  DFW  1383  255  334  168  12  0  173  180
302  11MAR2013  20:22  LGA  WAS   229  442  557   75  14  4   83  180
431  11MAR2013  18:50  LGA  LAX  2475  442  387  147  16  4  167  210
308  11MAR2013  21:06  LGA  ORD   740  268  385  203   7  0  205  210
182  12MAR2013   8:21  LGA  YYZ   366  361  510  142  13  3  158  178
114  12MAR2013   7:10  LGA  LAX  2475  263  443  128  19  2  149  210
202  12MAR2013  10:43  LGA  ORD   740  280  213  112   9  2  117  210
219  12MAR2013   9:31  LGA  LHR  3442  380  122  229  16  3  248  250
439  12MAR2013  12:16  LGA  LAX  2475  211  269   88   9  5  102  210
387  12MAR2013  11:40  LGA  CPH  3856  392  477  108  20  6  134  250
290  12MAR2013   6:56  LGA  WAS   229  287  214   45  16  5   52  180
523  12MAR2013  15:19  LGA  ORD   740  344  323  103  13  4  117  210
982  12MAR2013  10:28  LGA  DFW  1383  316  245   31  14  4   35  180
622  12MAR2013  12:19  LGA  FRA  3857  328  441  204  25  3  232  250
872  12MAR2013  13:02  LGA  LAX  2475  300  222   77  22  6  105  210
416  12MAR2013   9:09  LGA  WAS   229  409  372   48   8  4   55  180
132  12MAR2013  15:35  LGA  YYZ   366  289  169   93  13  5  111  178
829  12MAR2013  13:38  LGA  WAS   229  396  219   68   9  6   80  180
183  12MAR2013  17:46  LGA  WAS   229  455  371   48  10  6   61  180
271  12MAR2013  13:17  LGA  CDG  3635  298  350  170   6  6  182  250
921  12MAR2013  17:11  LGA  DFW  1383  416  276  133  23  3  157  180
302  12MAR2013  20:22  LGA  WAS   229  395  293   53  21  5   65  180
431  12MAR2013  18:50  LGA  LAX  2475  364  193   77  26  6  109  210
308  12MAR2013  21:06  LGA  ORD   740  338  441  106  15  7  113  210
182  13MAR2013   8:21  LGA  YYZ   366  386  197   77  20  6  103  178
114  13MAR2013   7:10  LGA  LAX  2475  200  446  170  15  6  191  210
202  13MAR2013  10:43  LGA  ORD   740  390  422  109  17  2  111  210
219  13MAR2013   9:31  LGA  LHR  3442  477  427  160   9  3  172  250
439  13MAR2013  12:16  LGA  LAX  2475  334  165  135  22  2  159  210
290  13MAR2013   6:56  LGA  WAS   229  360  362   57  10  5   63  180
523  13MAR2013  15:19  LGA  ORD   740  370  188  144   9  4  150  210
982  13MAR2013  10:28  LGA  DFW  1383  440  492  110  18  8  128  180
821  13MAR2013  14:56  LGA  LHR  3442  249  314  170   5  6  181  250
872  13MAR2013  13:02  LGA  LAX  2475  526  321  170   6  4  180  210
416  13MAR2013   9:09  LGA  WAS   229  291  327   95   9  6  102  180
132  13MAR2013  15:35  LGA  YYZ   366  251  217  142  10  7  159  178
829  13MAR2013  13:38  LGA  WAS   229  417  276   88  20  4  102  180
183  13MAR2013  17:46  LGA  WAS   229  271  409   63  22  6   82  180
921  13MAR2013  17:11  LGA  DFW  1383  365  370   87  14  4   95  180
302  13MAR2013  20:22  LGA  WAS   229  461  287   99   6  3  104  180
431  13MAR2013  18:50  LGA  LAX  2475  375  283  159  14  3  176  210
308  13MAR2013  21:06  LGA  ORD   740  446  206  134  11  6  142  210
182  14MAR2013   8:21  LGA  YYZ   366  505  250  173   5  0  178  178
114  14MAR2013   7:10  LGA  LAX  2475  269  283  192  18  0  210  210
202  14MAR2013  10:43  LGA  ORD   740  336  369  156  15  6  169  210
219  14MAR2013   9:31  LGA  LHR  3442  474  397  166  22  3  191  250
439  14MAR2013  12:16  LGA  LAX  2475  396  301  179   8  5  192  210
387  14MAR2013  11:40  LGA  CPH  3856  524  389  149  16  4  169  250
290  14MAR2013   6:56  LGA  WAS   229  436  267  168  12  0  171  180
523  14MAR2013  15:19  LGA  ORD   740  381  464  199  11  0  207  210
982  14MAR2013  10:28  LGA  DFW  1383  327  354  150  22  5  160  180
622  14MAR2013  12:19  LGA  FRA  3857  277  387  190  15  3  208  250
821  14MAR2013  14:56  LGA  LHR  3442  288  309  162   9  2  173  250
872  14MAR2013  13:02  LGA  LAX  2475  266  289  181  11  5  197  210
416  14MAR2013   9:09  LGA  WAS   229  359  543  159  21  0  161  180
132  14MAR2013  15:35  LGA  YYZ   366  376  261  154  18  5  177  178
829  14MAR2013  13:38  LGA  WAS   229  329  328  158  17  3  161  180
183  14MAR2013  17:46  LGA  WAS   229  379  456  122  21  5  138  180
271  14MAR2013  13:17  LGA  CDG  3635  405  401  100   4  5  109  250
921  14MAR2013  17:11  LGA  DFW  1383  396  192  155  25  0  157  180
302  14MAR2013  20:22  LGA  WAS   229  395  357  140  17  3  155  180
431  14MAR2013  18:50  LGA  LAX  2475  444  447  189  21  0  210  210
308  14MAR2013  21:06  LGA  ORD   740  602  359  157  21  5  175  210
182  15MAR2013   8:21  LGA  YYZ   366  362  364  114  15  2  131  178
114  15MAR2013   7:10  LGA  LAX  2475  325  229  194  16  0  210  210
202  15MAR2013  10:43  LGA  ORD   740  486  346   93  14  2   97  210
219  15MAR2013   9:31  LGA  LHR  3442  411  352  185   9  5  199  250
439  15MAR2013  12:16  LGA  LAX  2475  374  360  142  16  6  164  210
387  15MAR2013  11:40  LGA  CPH  3856  405  277  158  26  4  188  250
290  15MAR2013   6:56  LGA  WAS   229  305  434   90  19  3  100  180
523  15MAR2013  15:19  LGA  ORD   740  421  312  168  15  7  177  210
982  15MAR2013  10:28  LGA  DFW  1383  381  462  108   8  4  117  180
622  15MAR2013  12:19  LGA  FRA  3857  397  332  157  13  7  177  250
821  15MAR2013  14:56  LGA  LHR  3442  375  396  159   7  4  170  250
872  15MAR2013  13:02  LGA  LAX  2475  317  372  114  10  5  129  210
416  15MAR2013   9:09  LGA  WAS   229  408  453   57  16  6   75  180
132  15MAR2013  15:35  LGA  YYZ   366  213  429   71  15  7   93  178
829  15MAR2013  13:38  LGA  WAS   229  346  313   93  15  6  111  180
183  15MAR2013  17:46  LGA  WAS   229  388  264   50  21  6   66  180
271  15MAR2013  13:17  LGA  CDG  3635  254  316  144  13  5  162  250
921  15MAR2013  17:11  LGA  DFW  1383  291  400  120  26  6  137  180
302  15MAR2013  20:22  LGA  WAS   229  542  368  116  24  4  142  180
431  15MAR2013  18:50  LGA  LAX  2475  319  322  149  15  5  169  210
308  15MAR2013  21:06  LGA  ORD   740  394  335  178  13  3  183  210
182  16MAR2013   8:21  LGA  YYZ   366  392  378   90  10  4  104  178
114  16MAR2013   7:10  LGA  LAX  2475  238  145  187   6  2  195  210
202  16MAR2013  10:43  LGA  ORD   740  249  178  142  13  6  152  210
219  16MAR2013   9:31  LGA  LHR  3442  327  391  145  10  3  158  250
439  16MAR2013  12:16  LGA  LAX  2475  354  495  143  18  9  170  210
387  16MAR2013  11:40  LGA  CPH  3856  359  226  120  13  7  140  250
290  16MAR2013   6:56  LGA  WAS   229  240  365   72  18  7   82  180
523  16MAR2013  15:19  LGA  ORD   740  304  167  166   5  3  172  210
982  16MAR2013  10:28  LGA  DFW  1383  314  385   88  17  3  106  180
622  16MAR2013  12:19  LGA  FRA  3857  479  193  177   6  5  188  250
821  16MAR2013  14:56  LGA  LHR  3442  428  315  194  20  3  217  250
872  16MAR2013  13:02  LGA  LAX  2475  349  247  167  10  5  182  210
416  16MAR2013   9:09  LGA  WAS   229  484  280   61   7  2   66  180
132  16MAR2013  15:35  LGA  YYZ   366  473  231   71  11  6   88  178
829  16MAR2013  13:38  LGA  WAS   229  426  263   79  21  4   92  180
183  16MAR2013  17:46  LGA  WAS   229  411  512  116  15  4  129  180
271  16MAR2013  13:17  LGA  CDG  3635  475  413  128   7  3  138  250
921  16MAR2013  17:11  LGA  DFW  1383  216  420  137  17  3  156  180
302  16MAR2013  20:22  LGA  WAS   229  371  340   64   8  2   70  180
431  16MAR2013  18:50  LGA  LAX  2475  515  247  136  19  3  158  210
308  16MAR2013  21:06  LGA  ORD   740  501  117  136  12  5  147  210
182  17MAR2013   8:21  LGA  YYZ   366  481  346  123  13  4  140  178
114  17MAR2013   7:10  LGA  LAX  2475  400  179  176  17  5  198  210
202  17MAR2013  10:43  LGA  ORD   740  535  333  159  17  4  168  210
219  17MAR2013   9:31  LGA  LHR  3442  398  324  212  14  1  227  250
439  17MAR2013  12:16  LGA  LAX  2475  394  389  146   9  5  160  210
387  17MAR2013  11:40  LGA  CPH  3856  424  413  114  11  3  128  250
290  17MAR2013   6:56  LGA  WAS   229  422  254  119   7  6  128  180
523  17MAR2013  15:19  LGA  ORD   740  303  268  161  20  4  178  210
982  17MAR2013  10:28  LGA  DFW  1383  430  233   88   7  5   95  180
622  17MAR2013  12:19  LGA  FRA  3857  507  275  200  15  2  217  250
821  17MAR2013  14:56  LGA  LHR  3442  350  292  232  18  0  250  250
872  17MAR2013  13:02  LGA  LAX  2475  354  181  171  11  2  184  210
416  17MAR2013   9:09  LGA  WAS   229  387  361   93  17  6  107  180
132  17MAR2013  15:35  LGA  YYZ   366  260  598  137  17  2  156  178
829  17MAR2013  13:38  LGA  WAS   229  343  131   84   5  6   90  180
183  17MAR2013  17:46  LGA  WAS   229  462  197   98  19  4  108  180
271  17MAR2013  13:17  LGA  CDG  3635  366  356  140  15  4  159  250
921  17MAR2013  17:11  LGA  DFW  1383  495  414   94  13  6  107  180
302  17MAR2013  20:22  LGA  WAS   229  426  452  117  17  4  126  180
431  17MAR2013  18:50  LGA  LAX  2475  315  447  156  16  4  176  210
308  17MAR2013  21:06  LGA  ORD   740  466  199  163  17  3  172  210
182  18MAR2013   8:21  LGA  YYZ   366  375  357  163  15  0  178  178
114  18MAR2013   7:10  LGA  LAX  2475  324  339  192  18  0  210  210
202  18MAR2013  10:43  LGA  ORD   740  425  265  149  13  6  162  210
219  18MAR2013   9:31  LGA  LHR  3442  337  276  188  20  6  214  250
439  18MAR2013  12:16  LGA  LAX  2475  486  258  161  14  6  181  210
387  18MAR2013  11:40  LGA  CPH  3856  361  375  113  12  5  130  250
290  18MAR2013   6:56  LGA  WAS   229  253  284  123  17  3  141  180
523  18MAR2013  15:19  LGA  ORD   740  378  267  108  11  5  117  210
982  18MAR2013  10:28  LGA  DFW  1383  291  352  126   7  6  134  180
622  18MAR2013  12:19  LGA  FRA  3857  412  342  160  13  2  175  250
821  18MAR2013  14:56  LGA  LHR  3442  463  236  162  14  6  182  250
872  18MAR2013  13:02  LGA  LAX  2475  389  356  199  11  0  210  210
416  18MAR2013   9:09  LGA  WAS   229  377  371  127  21  5  149  180
132  18MAR2013  15:35  LGA  YYZ   366  352  323  154  16  7  177  178
829  18MAR2013  13:38  LGA  WAS   229  290  254  138  17  3  141  180
183  18MAR2013  17:46  LGA  WAS   229  394  325  130  12  4  139  180
271  18MAR2013  13:17  LGA  CDG  3635  506  347  111  12  5  128  250
921  18MAR2013  17:11  LGA  DFW  1383  354  402  115   9  1  118  180
302  18MAR2013  20:22  LGA  WAS   229  398  371  100  17  2  102  180
431  18MAR2013  18:50  LGA  LAX  2475  344  358  200  10  0  210  210
308  18MAR2013  21:06  LGA  ORD   740  365  513  139  17  5  156  210
182  19MAR2013   8:21  LGA  YYZ   366  370  260  134   6  4  144  178
114  19MAR2013   7:10  LGA  LAX  2475  398  120   93  20  5  118  210
202  19MAR2013  10:43  LGA  ORD   740  412  337   73  19  7   91  210
219  19MAR2013   9:31  LGA  LHR  3442  315  303  224   8  4  236  250
439  19MAR2013  12:16  LGA  LAX  2475  348  181  114  13  7  134  210
387  19MAR2013  11:40  LGA  CPH  3856  578  334  117  19  5  141  250
290  19MAR2013   6:56  LGA  WAS   229  324  246   37  17  5   48  180
523  19MAR2013  15:19  LGA  ORD   740  345  448   68  10  2   79  210
982  19MAR2013  10:28  LGA  DFW  1383  462  447   95  17  4  106  180
622  19MAR2013  12:19  LGA  FRA  3857  324  245  146   4  6  156  250
872  19MAR2013  13:02  LGA  LAX  2475  254  466   99   9  6  114  210
416  19MAR2013   9:09  LGA  WAS   229  367  283  117  12  3  123  180
132  19MAR2013  15:35  LGA  YYZ   366  363  242  138  19  5  162  178
829  19MAR2013  13:38  LGA  WAS   229  374  386   94   7  6  106  180
183  19MAR2013  17:46  LGA  WAS   229  301  381   34  14  5   50  180
271  19MAR2013  13:17  LGA  CDG  3635  442  439  137  14  4  155  250
921  19MAR2013  17:11  LGA  DFW  1383  301  448   62  17  4   74  180
302  19MAR2013  20:22  LGA  WAS   229  414  490   76  11  4   90  180
431  19MAR2013  18:50  LGA  LAX  2475  416  373  102  20  3  125  210
308  19MAR2013  21:06  LGA  ORD   740  407  450  104  24  4  123  210
182  20MAR2013   8:21  LGA  YYZ   366  374  247  158  20  0  178  178
114  20MAR2013   7:10  LGA  LAX  2475  432  390  194  16  0  210  210
202  20MAR2013  10:43  LGA  ORD   740  322  426  107  13  6  120  210
219  20MAR2013   9:31  LGA  LHR  3442  475  248  208   7  5  220  250
439  20MAR2013  12:16  LGA  LAX  2475  382  224  145  18  2  165  210
290  20MAR2013   6:56  LGA  WAS   229  491  219   90  20  3   93  180
523  20MAR2013  15:19  LGA  ORD   740  420  521  138  27  5  144  210
982  20MAR2013  10:28  LGA  DFW  1383  408  366  142  15  3  148  180
821  20MAR2013  14:56  LGA  LHR  3442  276  260  176  19  4  199  250
872  20MAR2013  13:02  LGA  LAX  2475  351  310  142   9  3  154  210
416  20MAR2013   9:09  LGA  WAS   229  434  343   95   5  7  102  180
132  20MAR2013  15:35  LGA  YYZ   366  342  336  102  21  5  128  178
829  20MAR2013  13:38  LGA  WAS   229  379  438   95  13  3  109  180
183  20MAR2013  17:46  LGA  WAS   229  226  294   61  19  3   78  180
921  20MAR2013  17:11  LGA  DFW  1383  464  474   92   6  7  101  180
302  20MAR2013  20:22  LGA  WAS   229  341  393   93  15  4  105  180
431  20MAR2013  18:50  LGA  LAX  2475  416  342  109   4  5  118  210
308  20MAR2013  21:06  LGA  ORD   740  476  306  135  23  4  147  210
182  21MAR2013   8:21  LGA  YYZ   366  459  396  151  10  2  163  178
114  21MAR2013   7:10  LGA  LAX  2475  466  368  185  25  0  210  210
202  21MAR2013  10:43  LGA  ORD   740  337  353  151  21  6  163  210
219  21MAR2013   9:31  LGA  LHR  3442  340  378  158  11  4  173  250
439  21MAR2013  12:16  LGA  LAX  2475  443  392  188  16  4  208  210
387  21MAR2013  11:40  LGA  CPH  3856  404  395  163  16  5  184  250
290  21MAR2013   6:56  LGA  WAS   229  391  555  167  13  0  168  180
523  21MAR2013  15:19  LGA  ORD   740  330  242  189  21  0  198  210
982  21MAR2013  10:28  LGA  DFW  1383  442  346   43  13  5   48  180
622  21MAR2013  12:19  LGA  FRA  3857  442  305  182  11  5  198  250
821  21MAR2013  14:56  LGA  LHR  3442  304  231  223  15  7  245  250
872  21MAR2013  13:02  LGA  LAX  2475  283  532    .   9  0  210  210
416  21MAR2013   9:09  LGA  WAS   229  331  239  158   5  6  165  180
132  21MAR2013  15:35  LGA  YYZ   366  418  433  105  22  5  132  178
829  21MAR2013  13:38  LGA  WAS   229  249  363  165  15  0  177  180
183  21MAR2013  17:46  LGA  WAS   229  335  280  173   7  0  178  180
271  21MAR2013  13:17  LGA  CDG  3635  507  156  169  17  2  188  250
921  21MAR2013  17:11  LGA  DFW  1383  393  510  148  14  5  164  180
302  21MAR2013  20:22  LGA  WAS   229  401  534  111   7  1  113  180
431  21MAR2013  18:50  LGA  LAX  2475  398  120  198  12  0  210  210
308  21MAR2013  21:06  LGA  ORD   740  323  278  116  12  5  131  210
182  22MAR2013   8:21  LGA  YYZ   366  430  270   95  10  1  106  178
114  22MAR2013   7:10  LGA  LAX  2475  486  228  198  12  0  210  210
202  22MAR2013  10:43  LGA  ORD   740  461  383  133  20  4  153  210
219  22MAR2013   9:31  LGA  LHR  3442  251  388  166  14  5  185  250
439  22MAR2013  12:16  LGA  LAX  2475  365  545  111  11  3  125  210
387  22MAR2013  11:40  LGA  CPH  3856  376  226  124   7  6  137  250
290  22MAR2013   6:56  LGA  WAS   229  435  403  120  12  3  125  180
523  22MAR2013  15:19  LGA  ORD   740  392  270  162  13  7  173  210
982  22MAR2013  10:28  LGA  DFW  1383  412  368  121   9  5  131  180
622  22MAR2013  12:19  LGA  FRA  3857  398  312  175   8  5  188  250
821  22MAR2013  14:56  LGA  LHR  3442  382  113  195  16  6  217  250
872  22MAR2013  13:02  LGA  LAX  2475  319  406  181  19  7  207  210
416  22MAR2013   9:09  LGA  WAS   229  406  273  109  20  6  119  180
132  22MAR2013  15:35  LGA  YYZ   366  351  369   94  22  6  122  178
829  22MAR2013  13:38  LGA  WAS   229  440  245  104  23  4  121  180
183  22MAR2013  17:46  LGA  WAS   229  509  379   38  24  6   48  180
271  22MAR2013  13:17  LGA  CDG  3635  411  391  191  17  5  213  250
921  22MAR2013  17:11  LGA  DFW  1383  483  478  142  15  7  153  180
302  22MAR2013  20:22  LGA  WAS   229  369  333   25   4  4   32  180
431  22MAR2013  18:50  LGA  LAX  2475  385  271  145   8  5  158  210
308  22MAR2013  21:06  LGA  ORD   740  412  256  165   5  6  174  210
182  23MAR2013   8:21  LGA  YYZ   366  446  224   86  16  5  107  178
114  23MAR2013   7:10  LGA  LAX  2475  309  409  188  22  0  210  210
202  23MAR2013  10:43  LGA  ORD   740  572  466  143  15  3  157  210
219  23MAR2013   9:31  LGA  LHR  3442  473  301  180  12  4  196  250
439  23MAR2013  12:16  LGA  LAX  2475  413  289  158  18  5  181  210
387  23MAR2013  11:40  LGA  CPH  3856  319  405  138  13  5  156  250
290  23MAR2013   6:56  LGA  WAS   229  269  346   92  10  5   97  180
523  23MAR2013  15:19  LGA  ORD   740  356   57  169  18  4  187  210
982  23MAR2013  10:28  LGA  DFW  1383  409  355   75  10  5   80  180
622  23MAR2013  12:19  LGA  FRA  3857  239  355  199  18  2  219  250
821  23MAR2013  14:56  LGA  LHR  3442  252  395  125  17  5  147  250
872  23MAR2013  13:02  LGA  LAX  2475  347  359  145  17  3  165  210
416  23MAR2013   9:09  LGA  WAS   229  384  206  112   8  3  118  180
132          .  15:35  LGA  YYZ   366  354  292   98  15  4  117  178
829  23MAR2013  13:38  LGA  WAS   229  319  394   58  14  4   68  180
183  23MAR2013  17:46  LGA  WAS   229  433  339   88  18  4   94  180
271  23MAR2013  13:17  LGA  CDG  3635  363  424  173  25  5  203  250
921  23MAR2013  17:11  LGA  DFW  1383  353  148   80  19  5   87  180
302  23MAR2013  20:22  LGA  WAS   229  421  327   91  16  4   97  180
431  23MAR2013  18:50  LGA  LAX  2475  228  129  190  20  0  210  210
308  23MAR2013  21:06  LGA  ORD   740  369  193  166  10  4  177  210
182  24MAR2013   8:21  LGA  YYZ   366  371  456  141  18  4  163  178
114  24MAR2013   7:10  LGA  LAX  2475  356  377  129  13  3  145  210
202  24MAR2013  10:43  LGA  ORD   740  317  363  132   8  5  142  210
219  24MAR2013   9:31  LGA  LHR  3442  428  294  181  12  5  198  250
439  24MAR2013  12:16  LGA  LAX  2475  396  449  146  14  5  165  210
387  24MAR2013  11:40  LGA  CPH  3856  301  226  152  17  3  172  250
290  24MAR2013   6:56  LGA  WAS   229  388  273   62  19  4   66  180
523  24MAR2013  15:19  LGA  ORD   740  489  412  135  10  4  147  210
982  24MAR2013  10:28  LGA  DFW  1383  341  259  122  17  2  127  180
622  24MAR2013  12:19  LGA  FRA  3857  504  557  154  13  7  174  250
821  24MAR2013  14:56  LGA  LHR  3442  353  292  184  11  4  199  250
872  24MAR2013  13:02  LGA  LAX  2475  352  327  105  20  2  127  210
416  24MAR2013   9:09  LGA  WAS   229  417  420   50  19  2   63  180
132  24MAR2013  15:35  LGA  YYZ   366  389  253   79  16  3   98  178
829  24MAR2013  13:38  LGA  WAS   229  349  354   91  13  6   97  180
183  24MAR2013  17:46  LGA  WAS   229  341  225   82  19  2   97  180
271  24MAR2013  13:17  LGA  CDG  3635  387  265  146  18  3  167  250
921  24MAR2013  17:11  LGA  DFW  1383  357  297   86  15  3   91  180
302  24MAR2013  20:22  LGA  WAS   229  364  290   74  14  3   84  180
431  24MAR2013  18:50  LGA  LAX  2475  481  386  174  11  5  190  210
308  24MAR2013  21:06  LGA  ORD   740  537  426  131   9  4  135  210
182  25MAR2013   8:21  LGA  YYZ   366  357  471  147  23  6  176  178
114  25MAR2013   7:10  LGA  LAX  2475  309  333  172  10  4  186  210
202  25MAR2013  10:43  LGA  ORD   740  347  195  165  17  4  185  210
219  25MAR2013   9:31  LGA  LHR  3442  405  336  196  14  5  215  250
439  25MAR2013  12:16  LGA  LAX  2475  263  260  184  10  4  198  210
387  25MAR2013  11:40  LGA  CPH  3856  321  417  107  12  4  123  250
290  25MAR2013   6:56  LGA  WAS   229  338  433  143  10  6  152  180
523  25MAR2013  15:19  LGA  ORD   740  502  327  121  11  5  126  210
982  25MAR2013  10:28  LGA  DFW  1383  251  344  128   5  6  134  180
622  25MAR2013  12:19  LGA  FRA  3857  314  175  168  22  3  193  250
821  25MAR2013  14:56  LGA  LHR  3442  404  184  200   9  3  212  250
872  25MAR2013  13:02  LGA  LAX  2475  292  133  158  20  3  181  210
416  25MAR2013   9:09  LGA  WAS   229  495  507  119  22  3  135  180
132  25MAR2013  15:35  LGA  YYZ   366  422  238  156  22  0  178  178
829  25MAR2013  13:38  LGA  WAS   229  569  230   91  19  5  101  180
183  25MAR2013  17:46  LGA  WAS   229  361  387   21  19  3   24  180
271  25MAR2013  13:17  LGA  CDG  3635  344  232  118  10  5  133  250
921  25MAR2013  17:11  LGA  DFW  1383  335  540  115   9  3  123  180
302  25MAR2013  20:22  LGA  WAS   229  334  255  155  19  5  168  180
431  25MAR2013  18:50  LGA  LAX  2475  320   21  163  18  7  188  210
308  25MAR2013  21:06  LGA  ORD   740  349  402  175  14  6  185  210
182  26MAR2013   8:21  LGA  YYZ   366  414  414  116  13  3  132  178
114  26MAR2013   7:10  LGA  LAX  2475  622  341  108  22  6  136  210
202  26MAR2013  10:43  LGA  ORD   740  458  367   78  15  4   96  210
219  26MAR2013   9:31  LGA  LHR  3442  308  300  202  18  9  229  250
439  26MAR2013  12:16  LGA  LAX  2475  345  392  137  17  4  158  210
387  26MAR2013  11:40  LGA  CPH  3856  483   71   92  17  7  116  250
290  26MAR2013   6:56  LGA  WAS   229  462  260   51  11  7   61  180
523  26MAR2013  15:19  LGA  ORD   740  471  308  104  15  5  111  210
982  26MAR2013  10:28  LGA  DFW  1383  417  307   78  17  2   80  180
622  26MAR2013  12:19  LGA  FRA  3857  392  227  211   0  2  213  250
872  26MAR2013  13:02  LGA  LAX  2475  393  432  109  24  6  139  210
416  26MAR2013   9:09  LGA  WAS   229  263  408   58  14  4   67  180
132  26MAR2013  15:35  LGA  YYZ   366  466  293   88  10  4  102  178
829  26MAR2013  13:38  LGA  WAS   229  374  293   65  14  5   79  180
183  26MAR2013  17:46  LGA  WAS   229  388  214   92  18  5  107  180
271  26MAR2013  13:17  LGA  CDG  3635  459  385  170  16  6  192  250
921  26MAR2013  17:11  LGA  DFW  1383  405  281   49  13  6   66  180
302  26MAR2013  20:22  LGA  WAS   229  227  451   57  14  5   69  180
431  26MAR2013  18:50  LGA  LAX  2475  435  242  145  17  6  168  210
308  26MAR2013  21:06  LGA  ORD   740  483  421   75  14  4   83  210
182  27MAR2013   8:21  LGA  YYZ   366  520  206  138   7  7  152  178
114  27MAR2013   7:10  LGA  LAX  2475  353  285  198  12  0  210  210
202  27MAR2013  10:43  LGA  ORD   740  371  346  113  21  3  117  210
219  27MAR2013   9:31  LGA  LHR  3442  285  198  179  12  4  195  250
439  27MAR2013  12:16  LGA  LAX  2475  348  298  115  18  2  135  210
290  27MAR2013   6:56  LGA  WAS   229  325  276   55  15  7   64  180
523  27MAR2013  15:19  LGA  ORD   740  333  460  144   3  6  152  210
982  27MAR2013  10:28  LGA  DFW  1383  564  200   85   5  5   92  180
821  27MAR2013  14:56  LGA  LHR  3442  402  292  194  15  5  214  250
872  27MAR2013  13:02  LGA  LAX  2475  467  409  154  20  6  180  210
416  27MAR2013   9:09  LGA  WAS   229  307  417   53   9  4   61  180
132  27MAR2013  15:35  LGA  YYZ   366  445  408  103  16  3  122  178
829  27MAR2013  13:38  LGA  WAS   229  444  320  104  12  2  115  180
183  27MAR2013  17:46  LGA  WAS   229  280  365   76  16  5   82  180
921  27MAR2013  17:11  LGA  DFW  1383  282  250    .  16  5   79  180
302  27MAR2013  20:22  LGA  WAS   229  253  407   76  14  5   89  180
431  27MAR2013  18:50  LGA  LAX  2475  536  215  166  17  6  189  210
308  27MAR2013  21:06  LGA  ORD   740  239  427  168  19  2  172  210
182  28MAR2013   8:21  LGA  YYZ   366  394  291  158  20  0  178  178
114  28MAR2013   7:10  LGA  LAX  2475  387  278  200  10  0  210  210
202  28MAR2013  10:43  LGA  ORD   740  366  410  199  11  0  201  210
219  28MAR2013   9:31  LGA  LHR  3442  517  378  136  12  2  150  250
439  28MAR2013  12:16  LGA  LAX  2475  331  373  182   8  2  192  210
387  28MAR2013  11:40  LGA  CPH  3856  271  306  119  21  3  143  250
290  28MAR2013   6:56  LGA  WAS   229  444  438  173   7  0  177  180
523  28MAR2013  15:19  LGA  ORD   740  389  302  170  19  5  180  210
982  28MAR2013  10:28  LGA  DFW  1383  454  329  131  16  4  143  180
622  28MAR2013  12:19  LGA  FRA  3857  606  371  225  13  6  244  250
821  28MAR2013  14:56  LGA  LHR  3442  383  331  162  10  6  178  250
872  28MAR2013  13:02  LGA  LAX  2475  331  280  190  20  0  210  210
416  28MAR2013   9:09  LGA  WAS   229  375  291  154  17  5  168  180
132  28MAR2013  15:35  LGA  YYZ   366  291  458   88  29  7  124  178
829  28MAR2013  13:38  LGA  WAS   229  396  422  115  13  5  123  180
183  28MAR2013  17:46  LGA  WAS   229  366  296  150  13  3  164  180
271  28MAR2013  13:17  LGA  CDG  3635  382   94  187   7  7  201  250
921  28MAR2013  17:11  LGA  DFW  1383  401  449  139  23  4  154  180
302  28MAR2013  20:22  LGA  WAS   229  394  244  164  16  0  175  180
431  28MAR2013  18:50  LGA  LAX  2475  369  333  207   3  0  210  210
308  28MAR2013  21:06  LGA  ORD   740  387  469  177  12  6  189  210
182  29MAR2013   8:21  LGA  YYZ   366  435  427  150   4  7  161  178
114  29MAR2013   7:10  LGA  LAX  2475  365  530  182  12  4  198  210
202  29MAR2013  10:43  LGA  ORD   740  365  273  130  14  7  137  210
219  29MAR2013   9:31  LGA  LHR  3442  452  349  202  14  4  220  250
439  29MAR2013  12:16  LGA  LAX  2475  418  374  152   8  4  164  210
387  29MAR2013  11:40  LGA  CPH  3856  370  412  177  18  5  200  250
290  29MAR2013   6:56  LGA  WAS   229  378  398   70   0  4   74  180
523  29MAR2013  15:19  LGA  ORD   740  414  467  171  20  6  177  210
982  29MAR2013  10:28  LGA  DFW  1383  299  374   76  12  0   82  180
622  29MAR2013  12:19  LGA  FRA  3857  323  224  110  19  6  135  250
821  29MAR2013  14:56  LGA  LHR  3442  433  393  206  14  5  225  250
872  29MAR2013  13:02  LGA  LAX  2475  335  356  166  17  3  186  210
416  29MAR2013   9:09  LGA  WAS   229  404  409   88  11  6   95  180
132  29MAR2013  15:35  LGA  YYZ   366  434  498  106   8  6  120  178
829  29MAR2013  13:38  LGA  WAS   229  255  240   71  17  2   74  180
183  29MAR2013  17:46  LGA  WAS   229  352  349   89  11  5  104  180
271  29MAR2013  13:17  LGA  CDG  3635  381  363  168  24  6  198  250
921  29MAR2013  17:11  LGA  DFW  1383  391  568  112  21  3  117  180
302  29MAR2013  20:22  LGA  WAS   229  469  321   93  23  6  108  180
431  29MAR2013  18:50  LGA  LAX  2475  302  278  158  13  4  175  210
308  29MAR2013  21:06  LGA  ORD   740  330  517  124  15  6  132  210
182  30MAR2013   8:21  LGA  YYZ   366  407  465  115   9  4  128  178
114  30MAR2013   7:10  LGA  LAX  2475  273  419  126  15  4  145  210
202  30MAR2013  10:43  LGA  ORD   740  398  476  159  11  5  170  210
219  30MAR2013   9:31  LGA  LHR  3442  501  455  172  19  7  198  250
439  30MAR2013  12:16  LGA  LAX  2475  392  323  200  10  0  210  210
387  30MAR2013  11:40  LGA  CPH  3856    .  218  175  12  6  193  250
290  30MAR2013   6:56  LGA  WAS   229  401  277   57   6  5   65  180
523  30MAR2013  15:19  LGA  ORD   740  319  360  153  29  4  160  210
982  30MAR2013  10:28  LGA  DFW  1383  335  374   94  21  8  106  180
622  30MAR2013  12:19  LGA  FRA  3857  477  299  209  20  5  234  250
821  30MAR2013  14:56  LGA  LHR  3442  374  212  113  15  6  134  250
872  30MAR2013  13:02  LGA  LAX  2475  333  314  143   9  4  156  210
416  30MAR2013   9:09  LGA  WAS   229  448  452   95  17  4  103  180
132  30MAR2013  15:35  LGA  YYZ   366  401  346  149  11  6  166  178
829  30MAR2013  13:38  LGA  WAS   229  304  316   90   9  5   95  180
183  30MAR2013  17:46  LGA  WAS   229  492  300   86   5  4   93  180
271  30MAR2013  13:17  LGA  CDG  3635  416  489  164  15  6  185  250
921  30MAR2013  17:11  LGA  DFW  1383  539  442  101  20  4  106  180
302  30MAR2013  20:22  LGA  WAS   229  328  319   54  14  3   61  180
431  30MAR2013  18:50  LGA  LAX  2475  372  402  159  14  4  177  210
308  30MAR2013  21:06  LGA  ORD   740  379  218  121  18  6  131  210
182  31MAR2013   8:21  LGA  YYZ   366  467  270   91   7  6  104  178
114  31MAR2013   7:10  LGA  LAX  2475  433  457  183  14  4  201  210
202  31MAR2013  10:43  LGA  ORD   740  297  301  111  12  3  114  210
219  31MAR2013   9:31  LGA  LHR  3442  398  371  173  11  5  189  250
439  31MAR2013  12:16  LGA  LAX  2475  433  511   92  20  6  118  210
387  31MAR2013  11:40  LGA  CPH  3856  530  360  147  13  1  161  250
290  31MAR2013   6:56  LGA  WAS   229  441  380  104  22  5  130  180
523  31MAR2013  15:19  LGA  ORD   740  384  183  120  11  7  131  210
982  31MAR2013  10:28  LGA  DFW  1383  312  250   50  14  4   55  180
622  31MAR2013  12:19  LGA  FRA  3857  458  462  197  15  5  217  250
821  31MAR2013  14:56  LGA  LHR  3442  380  123  212   3  3  218  250
872  31MAR2013  13:02  LGA  LAX  2475  400  284  153  15  5  173  210
416  31MAR2013   9:09  LGA  WAS   229  278  468   90  12  4   97  180
132  31MAR2013  15:35  LGA  YYZ   366  353  496   85  20  5  110  178
829  31MAR2013  13:38  LGA  WAS   229  212  313   84  19  2   97  180
183  31MAR2013  17:46  LGA  WAS   229  434  309  129  10  3  138  180
271  31MAR2013  13:17  LGA  CDG  3635  358  449  138  14  3  155  250
921  31MAR2013  17:11  LGA  DFW  1383  353  195  131  20  4  138  180
302  31MAR2013  20:22  LGA  WAS   229  413  331   14  15  5   33  180
431  31MAR2013  18:50  LGA  LAX  2475  471  190  130  17  3  150  210
308  31MAR2013  21:06  LGA  ORD   740  424  376  105   9  3  113  210
;;;;
data certadv.staffmaster;
   input EmpID $ 1-4 LastName $ 9-23 FirstName $ 25-39
         City $ 41-55 State $ 58-59 PhoneNumber $ 66-77;
datalines;
1919    ADAMS           GERALD          STAMFORD         CT      203/781-1255
1653    ALEXANDER       SUSAN           BRIDGEPORT       CT      203/675-7715
1400    APPLE           TROY            NEW YORK         NY      212/586-0808
1350    ARTHUR          BARBARA         NEW YORK         NY      718/383-1549
1401    AVERY           JERRY           PATERSON         NJ      201/732-8787
1499    BAREFOOT        JOSEPH          PRINCETON        NJ      201/812-5665
1101    BAUCOM          WALTER          NEW YORK         NY      212/586-8060
1333    BLAIR           JUSTIN          STAMFORD         CT      203/781-1777
1402    BLALOCK         RALPH           NEW YORK         NY      718/384-2849
1479    BOSTIC          MARIE           NEW YORK         NY      718/384-8816
1403    BOWDEN          EARL            BRIDGEPORT       CT      203/675-3434
1739    BOYCE           JONATHAN        NEW YORK         NY      212/587-1247
1658    BRADLEY         JEREMY          NEW YORK         NY      212/587-3622
1428    BRADY           CHRISTINE       STAMFORD         CT      203/781-1212
1782    BROWN           JASON           STAMFORD         CT      203/781-0019
1244    BRYANT          LEONARD         NEW YORK         NY      718/383-3334
1383    BURNETTE        THOMAS          NEW YORK         NY      718/384-3569
1574    CAHILL          MARSHALL        NEW YORK         NY      718/383-2338
1789    CARAWAY         DAVIS           NEW YORK         NY      212/587-9000
1404    CARTER          DONALD          NEW YORK         NY      718/384-2946
1437    CARTER          DOROTHY         BRIDGEPORT       CT      203/675-4117
1639    CARTER          KAREN           STAMFORD         CT      203/781-8839
1269    CASTON          FRANKLIN        STAMFORD         CT      203/781-3335
1065    CHAPMAN         NEIL            NEW YORK         NY      718/384-5618
1876    CHIN            JACK            NEW YORK         NY      212/588-5634
1037    CHOW            JANE            STAMFORD         CT      203/781-8868
1129    COOK            BRENDA          NEW YORK         NY      718/383-2313
1988    COOPER          ANTHONY         NEW YORK         NY      212/587-1228
1405    DAVIDSON        JASON           PATERSON         NJ      201/732-2323
1430    DEAN            SANDRA          BRIDGEPORT       CT      203/675-1647
1983    DEAN            SHARON          NEW YORK         NY      718/384-1647
1134    DELGADO         MARIA           STAMFORD         CT      203/781-1528
1118    DENNIS          ROGER           NEW YORK         NY      718/383-1122
1438    DONALDSON       KAREN           STAMFORD         CT      203/781-2229
1125    DUNLAP          DONNA           NEW YORK         NY      718/383-2094
1475    EATON           ALICIA          NEW YORK         NY      718/383-2828
1117    EDGERTON        JOSHUA          NEW YORK         NY      212/588-1239
1935    FERNANDEZ       KATRINA         BRIDGEPORT       CT      203/675-2962
1124    FIELDS          DIANA           WHITE PLAINS     NY      914/455-2998
1422    FLETCHER        MARIE           PRINCETON        NJ      201/812-0902
1616    FLOWERS         ANNETTE         NEW YORK         NY      718/384-3329
1406    FOSTER          GERALD          BRIDGEPORT       CT      203/675-6363
1120    GARCIA          JACK            NEW YORK         NY      718/384-4930
1094    GOMEZ           ALAN            BRIDGEPORT       CT      203/675-7181
1389    GORDON          LEVI            NEW YORK         NY      718/384-9326
1905    GRAHAM          ALVIN           NEW YORK         NY      212/586-8815
1407    GRANT           DANIEL          MT. VERNON       NY      914/468-1616
1114    GREEN           JANICE          NEW YORK         NY      212/588-1092
1410    HARRIS          CHARLES         STAMFORD         CT      203/781-0937
1439    HARRISON        FELICIA         BRIDGEPORT       CT      203/675-4987
1409    HARTFORD        RAYMOND         STAMFORD         CT      203/781-9697
1408    HENDERSON       WILLIAM         PRINCETON        NJ      201/812-4789
1121    HERNANDEZ       MICHAEL         NEW YORK         NY      718/384-3313
1991    HOWARD          GRETCHEN        BRIDGEPORT       CT      203/675-0007
1102    HOWARD          LEONARD         WHITE PLAINS     NY      914/455-0976
1356    HOWARD          MICHAEL         NEW YORK         NY      212/586-8411
1545    HUNTER          CLYDE           STAMFORD         CT      203/781-1119
1292    HUNTER          HELEN           BRIDGEPORT       CT      203/675-4830
1440    JACKSON         LAURA           STAMFORD         CT      203/781-0088
1368    JEPSEN          RONALD          STAMFORD         CT      203/781-8413
1369    JOHNSON         ANTHONY         NEW YORK         NY      212/587-5385
1411    JOHNSON         JACKSON         PATERSON         NJ      201/732-3678
1113    JONES           LESLIE          NEW YORK         NY      718/383-3003
1704    JONES           NATHAN          NEW YORK         NY      718/384-0049
1900    KING            WILLIAM         NEW YORK         NY      718/383-3698
1126    KIRBY           ANNE            NEW YORK         NY      212/586-1229
1677    KRAMER          JACKSON         BRIDGEPORT       CT      203/675-7432
1441    LAWRENCE        KATHY           PRINCETON        NJ      201/812-3337
1421    LEE             RUSSELL         MT. VERNON       NY      914/468-9143
1119    LI              JEFF            NEW YORK         NY      212/586-2344
1834    LONG            RUSSELL         NEW YORK         NY      718/384-0040
1777    LUFKIN          ROY             NEW YORK         NY      718/383-4413
1663    MARKS           JOHN            NEW YORK         NY      212/587-7742
1106    MARSHBURN       JASPER          STAMFORD         CT      203/781-1457
1103    MCDANIEL        RONDA           NEW YORK         NY      212/586-0013
1477    MEYERS          PRESTON         BRIDGEPORT       CT      203/675-8125
1476    MONROE          JOYCE           STAMFORD         CT      203/781-2837
1379    MORGAN          ALFRED          STAMFORD         CT      203/781-2216
1104    MORGAN          CHRISTOPHER     NEW YORK         NY      718/383-9740
1009    MORGAN          GEORGE          NEW YORK         NY      212/586-7753
1412    MURPHEY         JOHN            PRINCETON        NJ      201/812-4414
1115    MURPHY          ALICE           NEW YORK         NY      718/384-1982
1128    NELSON          FELICIA         BRIDGEPORT       CT      203/675-1166
1442    NEWKIRK         SANDRA          PRINCETON        NJ      201/812-3331
1417    NEWKIRK         WILLIAM         PATERSON         NJ      201/732-6611
1478    NEWTON          JAMES           NEW YORK         NY      212/587-5549
1673    NICHOLLS        HENRY           STAMFORD         CT      203/781-7770
1839    NORRIS          DIANE           NEW YORK         NY      718/384-1767
1347    O'NEAL          BRYAN           NEW YORK         NY      718/384-0230
1423    OSWALD          LESLIE          MT. VERNON       NY      914/468-9171
1200    OVERMAN         MICHELLE        STAMFORD         CT      203/781-1835
1970    PARKER          ANNE            NEW YORK         NY      718/383-3895
1521    PARKER          JAY             NEW YORK         NY      212/587-7603
1354    PARKER          MARY            WHITE PLAINS     NY      914/455-2337
1424    PATTERSON       RENEE           NEW YORK         NY      212/587-8991
1132    PEARCE          CAROL           NEW YORK         NY      718/384-1986
1845    PEARSON         JAMES           NEW YORK         NY      718/384-2311
1556    PENNINGTON      MICHAEL         NEW YORK         NY      718/383-5681
1413    PETERS          RANDALL         PRINCETON        NJ      201/812-2478
1123    PETERSON        SUZANNE         NEW YORK         NY      718/383-0077
1907    PHELPS          WILLIAM         STAMFORD         CT      203/781-1118
1436    PORTER          SUSAN           NEW YORK         NY      718/383-5777
1385    RAYNOR          MILTON          BRIDGEPORT       CT      203/675-2846
1432    REED            MARILYN         MT. VERNON       NY      914/468-5454
1111    RHODES          JEREMY          PRINCETON        NJ      201/812-1837
1116    RICHARDS        CASEY           NEW YORK         NY      212/587-1224
1352    RIVERS          SIMON           NEW YORK         NY      718/383-3345
1555    RODRIGUEZ       JULIA           BRIDGEPORT       CT      203/675-2401
1038    RODRIGUEZ       MARIA           BRIDGEPORT       CT      203/675-2048
1420    ROUSE           JEREMY          PATERSON         NJ      201/732-9834
1561    SANDERS         RAYMOND         NEW YORK         NY      212/588-6615
1434    SANDERSON       EDITH           STAMFORD         CT      203/781-1333
1414    SANDERSON       NATHAN          BRIDGEPORT       CT      203/675-1715
1112    SAYERS          RANDY           NEW YORK         NY      718/384-4895
1390    SMART           JONATHAN        NEW YORK         NY      718/383-1141
1332    STEPHENSON      ADAM            BRIDGEPORT       CT      203/675-1497
1890    STEPHENSON      ROBERT          NEW YORK         NY      718/384-9874
1429    THOMPSON        ALICE           STAMFORD         CT      203/781-3857
1107    THOMPSON        WAYNE           NEW YORK         NY      718/384-3785
1908    TRENTON         MELISSA         NEW YORK         NY      212/586-6262
1830    TRIPP           KATHY           BRIDGEPORT       CT      203/675-2479
1882    TUCKER          ALAN            NEW YORK         NY      718/384-0216
1050    TUTTLE          THOMAS          WHITE PLAINS     NY      914/455-2119
1425    UNDERWOOD       JENNY           STAMFORD         CT      203/781-0978
1928    UPCHURCH        LARRY           WHITE PLAINS     NY      914/455-5009
1480    UPDIKE          THERESA         NEW YORK         NY      212/587-8729
1100    VANDEUSEN       RICHARD         NEW YORK         NY      212/586-2531
1995    VARNER          ELIZABETH       NEW YORK         NY      718/384-7113
1135    VEGA            ANNA            NEW YORK         NY      718/384-5913
1415    VEGA            FRANKLIN        NEW YORK         NY      718/384-2823
1076    VENTER          RANDALL         NEW YORK         NY      718/383-2321
1426    VICK            THERESA         PRINCETON        NJ      201/812-2424
1564    WALTERS         ANNE            NEW YORK         NY      212/587-3257
1221    WALTERS         DIANE           NEW YORK         NY      718/384-1918
1133    WANG            CHIN            NEW YORK         NY      212/587-1956
1435    WARD            ELAINE          NEW YORK         NY      718/383-4987
1418    WATSON          BERNARD         NEW YORK         NY      718/383-1298
1017    WELCH           DARIUS          NEW YORK         NY      212/586-5535
1443    WELLS           AGNES           STAMFORD         CT      203/781-5546
1131    WELLS           NADINE          NEW YORK         NY      718/383-1045
1427    WHALEY          CAROLYN         MT. VERNON       NY      914/468-4528
1036    WONG            LESLIE          NEW YORK         NY      212/587-2570
1130    WOOD            DEBORAH         NEW YORK         NY      212/587-0013
1127    WOOD            SANDRA          NEW YORK         NY      212/587-2881
1433    YANCEY          ROBIN           PRINCETON        NJ      201/812-1874
1431    YOUNG           DEBORAH         STAMFORD         CT      203/781-2987
1122    YOUNG           JOANN           NEW YORK         NY      718/384-2021
1105    YOUNG           LAWRENCE        NEW YORK         NY      718/384-0008
;;;;
data certadv.supervisors;
   input EmpID $ 1-4 State $ 10-11 JobCategory $ 21-22;
   label empid='Supervisor Id' jobcategory='Job Category';
datalines;
1677     CT         BC
1834     NY         BC
1431     CT         FA
1433     NJ         FA
1983     NY         FA
1385     CT         ME
1420     NJ         ME
1882     NY         ME
1935     CT         NA
1417     NJ         NA
1352     NY         NA
1106     CT         PT
1442     NJ         PT
1118     NY         PT
1405     NJ         SC
1564     NY         SC
1639     CT         TA
1401     NJ         TA
1126     NY         TA
;;;;
data certadv.flightattendants;
   input EmpID $ 1-4 JobCode $ 6-8 LastName $10-18 FirstName $20-27;
datalines;
1350 FA3 ARTHUR    BARBARA
1574 FA2 CAHILL    MARSHALL
1437 FA3 CARTER    DOROTHY
1988 FA3 COOPER    ANTHONY
1983 FA3 DEAN      SHARON
1125 FA2 DUNLAP    DONNA
1475 FA2 EATON     ALICIA
1124 FA1 FIELDS    DIANA
1422 FA1 FLETCHER  MARIE
1094 FA1 GOMEZ     ALAN
1368 FA2 JESPEN    RONALD
1411 FA2 JOHNSON   JACKSON
1113 FA1 JONES     LESLIE
1441 FA2 LAWRENCE  KATHY
1103 FA1 MCDANIEL  RONDA
1477 FA2 MEYERS    PRESTON
1115 FA3 MURPHY    ALICE
1970 FA1 PARKER    ANNE
1424 FA2 PATTERSON RENEE
1132 FA1 PEARCE    CAROL
1413 FA2 PETERS    RANDALL
1116 FA1 RICHARDS  CASEY
1555 FA2 RODRIGUEZ JULIA
1434 FA2 SANDERSON EDITH
1414 FA1 SANDERSON NATHAN
1390 FA2 SMART     JONATHAN
1425 FA1 UNDERWOOD JENNY
1135 FA2 VEGA      ANNA
1415 FA2 VEGA      FRANKLIN
1221 FA2 WALTERS   DIANE
1130 FA1 WOOD      DEBORAH
1433 FA3 YANCEY    ROBIN
1431 FA3 YOUNG     DEBORAH
1122 FA2 YOUNG     JOANN
;;;;
data certadv.flightdelays;
   informat Date date9.;
   input FlightNumber $ 1-3 @6 Date date9. Origin $ 17-19
         Destination $ 22-24 DelayCategory $ 27-41
         DestinationType $ 44-58 DayOfWeek 61 Delay @65;
   format date date9.;
datalines;
182  01MAR2013  LGA  YYZ  No Delay         International    4    0
114  01MAR2013  LGA  LAX  1-10 Minutes     Domestic         4    8
202  01MAR2013  LGA  ORD  No Delay         Domestic         4   -5
219  01MAR2013  LGA  LHR  11+ Minutes      International    4   18
439  01MAR2013  LGA  LAX  No Delay         Domestic         4   -4
387  01MAR2013  LGA  CPH  No Delay         International    4   -2
290  01MAR2013  LGA  WAS  No Delay         Domestic         4   -8
523  01MAR2013  LGA  ORD  1-10 Minutes     Domestic         4    4
982  01MAR2013  LGA  DFW  No Delay         Domestic         4    0
622  01MAR2013  LGA  FRA  No Delay         International    4   -5
821  01MAR2013  LGA  LHR  11+ Minutes      International    4   16
872  01MAR2013  LGA  LAX  1-10 Minutes     Domestic         4    3
416  01MAR2013  LGA  WAS  1-10 Minutes     Domestic         4    4
132  01MAR2013  LGA  YYZ  11+ Minutes      International    4   14
829  01MAR2013  LGA  WAS  No Delay         Domestic         4   -6
183  01MAR2013  LGA  WAS  No Delay         Domestic         4   -8
271  01MAR2013  LGA  CDG  1-10 Minutes     International    4    5
921  01MAR2013  LGA  DFW  No Delay         Domestic         4   -5
302  01MAR2013  LGA  WAS  No Delay         Domestic         4   -2
431  01MAR2013  LGA  LAX  11+ Minutes      Domestic         4   13
308  01MAR2013  LGA  ORD  No Delay         Domestic         4   -5
182  02MAR2013  LGA  YYZ  1-10 Minutes     International    5    2
114  02MAR2013  LGA  LAX  No Delay         Domestic         5    0
202  02MAR2013  LGA  ORD  1-10 Minutes     Domestic         5    5
219  02MAR2013  LGA  LHR  11+ Minutes      International    5   18
439  02MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    2
387  02MAR2013  LGA  CPH  No Delay         International    5  -10
290  02MAR2013  LGA  WAS  No Delay         Domestic         5   -3
523  02MAR2013  LGA  ORD  No Delay         Domestic         5   -5
982  02MAR2013  LGA  DFW  1-10 Minutes     Domestic         5    9
622  02MAR2013  LGA  FRA  No Delay         International    5    0
821  02MAR2013  LGA  LHR  No Delay         International    5   -9
872  02MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    7
416  02MAR2013  LGA  WAS  No Delay         Domestic         5    0
132  02MAR2013  LGA  YYZ  1-10 Minutes     International    5    5
829  02MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    1
183  02MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    5
271  02MAR2013  LGA  CDG  1-10 Minutes     International    5    4
921  02MAR2013  LGA  DFW  1-10 Minutes     Domestic         5    5
302  02MAR2013  LGA  WAS  No Delay         Domestic         5    0
431  02MAR2013  LGA  LAX  11+ Minutes      Domestic         5   15
308  02MAR2013  LGA  ORD  No Delay         Domestic         5   -6
182  03MAR2013  LGA  YYZ  11+ Minutes      International    6   14
114  03MAR2013  LGA  LAX  No Delay         Domestic         6   -1
202  03MAR2013  LGA  ORD  No Delay         Domestic         6   -1
219  03MAR2013  LGA  LHR  1-10 Minutes     International    6    4
439  03MAR2013  LGA  LAX  1-10 Minutes     Domestic         6    4
387  03MAR2013  LGA  CPH  No Delay         International    6   -5
290  03MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    6
523  03MAR2013  LGA  ORD  1-10 Minutes     Domestic         6    7
982  03MAR2013  LGA  DFW  1-10 Minutes     Domestic         6    1
622  03MAR2013  LGA  FRA  No Delay         International    6   -2
821  03MAR2013  LGA  LHR  11+ Minutes      International    6   16
872  03MAR2013  LGA  LAX  11+ Minutes      Domestic         6   14
132  03MAR2013  LGA  YYZ  1-10 Minutes     International    6    6
829  03MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    7
183  03MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    5
271  03MAR2013  LGA  CDG  1-10 Minutes     International    6    2
921  03MAR2013  LGA  DFW  No Delay         Domestic         6   -7
302  03MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    5
431  03MAR2013  LGA  LAX  1-10 Minutes     Domestic         6    5
308  03MAR2013  LGA  ORD  No Delay         Domestic         6   -2
182  04MAR2013  LGA  YYZ  1-10 Minutes     International    7    4
114  04MAR2013  LGA  LAX  11+ Minutes      Domestic         7   15
202  04MAR2013  LGA  ORD  No Delay         Domestic         7   -5
219  04MAR2013  LGA  LHR  1-10 Minutes     International    7    3
439  04MAR2013  LGA  LAX  11+ Minutes      Domestic         7   20
387  04MAR2013  LGA  CPH  11+ Minutes      International    7   13
290  04MAR2013  LGA  WAS  No Delay         Domestic         7   -8
523  04MAR2013  LGA  ORD  11+ Minutes      Domestic         7   12
982  04MAR2013  LGA  DFW  No Delay         Domestic         7   -3
622  04MAR2013  LGA  FRA  11+ Minutes      International    7   30
821  04MAR2013  LGA  LHR  1-10 Minutes     International    7    5
872  04MAR2013  LGA  LAX  No Delay         Domestic         7   -1
416  04MAR2013  LGA  WAS  No Delay         Domestic         7   -5
132  04MAR2013  LGA  YYZ  No Delay         International    7   -5
829  04MAR2013  LGA  WAS  1-10 Minutes     Domestic         7    3
183  04MAR2013  LGA  WAS  1-10 Minutes     Domestic         7    6
271  04MAR2013  LGA  CDG  1-10 Minutes     International    7    5
921  04MAR2013  LGA  DFW  1-10 Minutes     Domestic         7    8
302  04MAR2013  LGA  WAS  1-10 Minutes     Domestic         7    7
431  04MAR2013  LGA  LAX  1-10 Minutes     Domestic         7    7
308  04MAR2013  LGA  ORD  11+ Minutes      Domestic         7   11
182  05MAR2013  LGA  YYZ  1-10 Minutes     International    1   10
114  05MAR2013  LGA  LAX  No Delay         Domestic         1   -2
202  05MAR2013  LGA  ORD  1-10 Minutes     Domestic         1    2
219  05MAR2013  LGA  LHR  1-10 Minutes     International    1    3
439  05MAR2013  LGA  LAX  1-10 Minutes     Domestic         1    3
387  05MAR2013  LGA  CPH  11+ Minutes      International    1   11
290  05MAR2013  LGA  WAS  No Delay         Domestic         1   -1
523  05MAR2013  LGA  ORD  No Delay         Domestic         1   -8
982  05MAR2013  LGA  DFW  1-10 Minutes     Domestic         1   10
622  05MAR2013  LGA  FRA  No Delay         International    1   -6
872  05MAR2013  LGA  LAX  11+ Minutes      Domestic         1   18
416  05MAR2013  LGA  WAS  1-10 Minutes     Domestic         1    5
132  05MAR2013  LGA  YYZ  1-10 Minutes     International    1    3
829  05MAR2013  LGA  WAS  11+ Minutes      Domestic         1   15
183  05MAR2013  LGA  WAS  No Delay         Domestic         1   -2
271  05MAR2013  LGA  CDG  1-10 Minutes     International    1    5
921  05MAR2013  LGA  DFW  No Delay         Domestic         1   -5
302  05MAR2013  LGA  WAS  No Delay         Domestic         1   -7
431  05MAR2013  LGA  LAX  No Delay         Domestic         1    0
308  05MAR2013  LGA  ORD  1-10 Minutes     Domestic         1    9
182  06MAR2013  LGA  YYZ  1-10 Minutes     International    2    2
114  06MAR2013  LGA  LAX  No Delay         Domestic         2   -1
202  06MAR2013  LGA  ORD  No Delay         Domestic         2   -3
219  06MAR2013  LGA  LHR  11+ Minutes      International    2   27
439  06MAR2013  LGA  LAX  1-10 Minutes     Domestic         2    6
290  06MAR2013  LGA  WAS  No Delay         Domestic         2   -1
523  06MAR2013  LGA  ORD  No Delay         Domestic         2   -6
982  06MAR2013  LGA  DFW  1-10 Minutes     Domestic         2    4
821  06MAR2013  LGA  LHR  No Delay         International    2   -2
872  06MAR2013  LGA  LAX  No Delay         Domestic         2   -6
416  06MAR2013  LGA  WAS  No Delay         Domestic         2   -6
132  06MAR2013  LGA  YYZ  1-10 Minutes     International    2    7
829  06MAR2013  LGA  WAS  No Delay         Domestic         2    0
183  06MAR2013  LGA  WAS  No Delay         Domestic         2   -1
921  06MAR2013  LGA  DFW  1-10 Minutes     Domestic         2    2
302  06MAR2013  LGA  WAS  1-10 Minutes     Domestic         2    1
431  06MAR2013  LGA  LAX  No Delay         Domestic         2   -7
308  06MAR2013  LGA  ORD  11+ Minutes      Domestic         2   17
182  07MAR2013  LGA  YYZ  No Delay         International    3    0
114  07MAR2013  LGA  LAX  No Delay         Domestic         3   -1
202  07MAR2013  LGA  ORD  No Delay         Domestic         3   -2
219  07MAR2013  LGA  LHR  11+ Minutes      International    3   15
439  07MAR2013  LGA  LAX  1-10 Minutes     Domestic         3    8
387  07MAR2013  LGA  CPH  No Delay         International    3   -7
290  07MAR2013  LGA  WAS  1-10 Minutes     Domestic         3    3
523  07MAR2013  LGA  ORD  No Delay         Domestic         3  -10
982  07MAR2013  LGA  DFW  No Delay         Domestic         3   -5
622  07MAR2013  LGA  FRA  11+ Minutes      International    3   21
821  07MAR2013  LGA  LHR  1-10 Minutes     International    3    7
872  07MAR2013  LGA  LAX  1-10 Minutes     Domestic         3    3
416  07MAR2013  LGA  WAS  No Delay         Domestic         3   -5
132  07MAR2013  LGA  YYZ  No Delay         International    3   -2
829  07MAR2013  LGA  WAS  No Delay         Domestic         3   -3
183  07MAR2013  LGA  WAS  1-10 Minutes     Domestic         3    1
271  07MAR2013  LGA  CDG  1-10 Minutes     International    3    4
921  07MAR2013  LGA  DFW  No Delay         Domestic         3   -6
302  07MAR2013  LGA  WAS  No Delay         Domestic         3    0
431  07MAR2013  LGA  LAX  1-10 Minutes     Domestic         3    8
308  07MAR2013  LGA  ORD  No Delay         Domestic         3    0
114  08MAR2013  LGA  LAX  11+ Minutes      Domestic         4   13
202  08MAR2013  LGA  ORD  11+ Minutes      Domestic         4   17
219  08MAR2013  LGA  LHR  No Delay         International    4   -4
439  08MAR2013  LGA  LAX  1-10 Minutes     Domestic         4    6
387  08MAR2013  LGA  CPH  11+ Minutes      International    4   15
290  08MAR2013  LGA  WAS  1-10 Minutes     Domestic         4    3
523  08MAR2013  LGA  ORD  No Delay         Domestic         4   -5
982  08MAR2013  LGA  DFW  1-10 Minutes     Domestic         4    2
622  08MAR2013  LGA  FRA  No Delay         International    4   -5
821  08MAR2013  LGA  LHR  11+ Minutes      International    4   26
872  08MAR2013  LGA  LAX  No Delay         Domestic         4    0
416  08MAR2013  LGA  WAS  1-10 Minutes     Domestic         4    5
132  08MAR2013  LGA  YYZ  No Delay         International    4   -8
829  08MAR2013  LGA  WAS  1-10 Minutes     Domestic         4   10
183  08MAR2013  LGA  WAS  No Delay         Domestic         4   -2
271  08MAR2013  LGA  CDG  No Delay         International    4   -4
921  08MAR2013  LGA  DFW  1-10 Minutes     Domestic         4    3
302  08MAR2013  LGA  WAS  No Delay         Domestic         4   -4
431  08MAR2013  LGA  LAX  1-10 Minutes     Domestic         4    1
308  08MAR2013  LGA  ORD  1-10 Minutes     Domestic         4    7
182  09MAR2013  LGA  YYZ  No Delay         International    5   -1
114  09MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    8
202  09MAR2013  LGA  ORD  11+ Minutes      Domestic         5   18
219  09MAR2013  LGA  LHR  No Delay         International    5   -6
439  09MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    3
387  09MAR2013  LGA  CPH  11+ Minutes      International    5   17
290  09MAR2013  LGA  WAS  No Delay         Domestic         5   -2
523  09MAR2013  LGA  ORD  No Delay         Domestic         5    0
982  09MAR2013  LGA  DFW  No Delay         Domestic         5   -1
622  09MAR2013  LGA  FRA  No Delay         International    5   -6
821  09MAR2013  LGA  LHR  No Delay         International    5  -10
872  09MAR2013  LGA  LAX  11+ Minutes      Domestic         5   18
416  09MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    3
132  09MAR2013  LGA  YYZ  1-10 Minutes     International    5    6
829  09MAR2013  LGA  WAS  No Delay         Domestic         5   -9
183  09MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    3
271  09MAR2013  LGA  CDG  1-10 Minutes     International    5    8
921  09MAR2013  LGA  DFW  11+ Minutes      Domestic         5   12
302  09MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    2
431  09MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    1
308  09MAR2013  LGA  ORD  1-10 Minutes     Domestic         5    2
182  10MAR2013  LGA  YYZ  No Delay         International    6   -1
114  10MAR2013  LGA  LAX  1-10 Minutes     Domestic         6    5
202  10MAR2013  LGA  ORD  1-10 Minutes     Domestic         6    1
219  10MAR2013  LGA  LHR  11+ Minutes      International    6   26
439  10MAR2013  LGA  LAX  1-10 Minutes     Domestic         6    7
387  10MAR2013  LGA  CPH  1-10 Minutes     International    6    2
290  10MAR2013  LGA  WAS  No Delay         Domestic         6   -3
523  10MAR2013  LGA  ORD  No Delay         Domestic         6  -10
982  10MAR2013  LGA  DFW  No Delay         Domestic         6    0
622  10MAR2013  LGA  FRA  11+ Minutes      International    6   14
821  10MAR2013  LGA  LHR  No Delay         International    6   -5
872  10MAR2013  LGA  LAX  1-10 Minutes     Domestic         6    5
416  10MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    8
132  10MAR2013  LGA  YYZ  No Delay         International    6   -2
829  10MAR2013  LGA  WAS  No Delay         Domestic         6   -1
183  10MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    4
271  10MAR2013  LGA  CDG  No Delay         International    6   -2
921  10MAR2013  LGA  DFW  No Delay         Domestic         6   -2
302  10MAR2013  LGA  WAS  No Delay         Domestic         6   -6
431  10MAR2013  LGA  LAX  No Delay         Domestic         6    0
308  10MAR2013  LGA  ORD  1-10 Minutes     Domestic         6    4
182  11MAR2013  LGA  YYZ  1-10 Minutes     International    7    7
114  11MAR2013  LGA  LAX  11+ Minutes      Domestic         7   21
219  11MAR2013  LGA  LHR  1-10 Minutes     International    7    4
439  11MAR2013  LGA  LAX  1-10 Minutes     Domestic         7    5
387  11MAR2013  LGA  CPH  No Delay         International    7    0
523  11MAR2013  LGA  ORD  1-10 Minutes     Domestic         7    4
982  11MAR2013  LGA  DFW  11+ Minutes      Domestic         7   14
622  11MAR2013  LGA  FRA  1-10 Minutes     International    7    9
821  11MAR2013  LGA  LHR  No Delay         International    7   -5
872  11MAR2013  LGA  LAX  1-10 Minutes     Domestic         7    3
416  11MAR2013  LGA  WAS  1-10 Minutes     Domestic         7    2
132  11MAR2013  LGA  YYZ  1-10 Minutes     International    7    7
829  11MAR2013  LGA  WAS  1-10 Minutes     Domestic         7    1
183  11MAR2013  LGA  WAS  1-10 Minutes     Domestic         7    3
271  11MAR2013  LGA  CDG  11+ Minutes      International    7   13
921  11MAR2013  LGA  DFW  No Delay         Domestic         7   -1
302  11MAR2013  LGA  WAS  11+ Minutes      Domestic         7   13
431  11MAR2013  LGA  LAX  1-10 Minutes     Domestic         7    1
308  11MAR2013  LGA  ORD  No Delay         Domestic         7   -1
182  12MAR2013  LGA  YYZ  1-10 Minutes     International    1    2
114  12MAR2013  LGA  LAX  No Delay         Domestic         1    0
202  12MAR2013  LGA  ORD  1-10 Minutes     Domestic         1    8
219  12MAR2013  LGA  LHR  11+ Minutes      International    1   13
439  12MAR2013  LGA  LAX  1-10 Minutes     Domestic         1    4
387  12MAR2013  LGA  CPH  1-10 Minutes     International    1   10
290  12MAR2013  LGA  WAS  No Delay         Domestic         1   -5
523  12MAR2013  LGA  ORD  No Delay         Domestic         1   -3
982  12MAR2013  LGA  DFW  1-10 Minutes     Domestic         1    8
622  12MAR2013  LGA  FRA  11+ Minutes      International    1   22
872  12MAR2013  LGA  LAX  1-10 Minutes     Domestic         1    6
416  12MAR2013  LGA  WAS  No Delay         Domestic         1   -3
132  12MAR2013  LGA  YYZ  1-10 Minutes     International    1    1
829  12MAR2013  LGA  WAS  1-10 Minutes     Domestic         1    3
183  12MAR2013  LGA  WAS  1-10 Minutes     Domestic         1   10
271  12MAR2013  LGA  CDG  No Delay         International    1   -6
921  12MAR2013  LGA  DFW  11+ Minutes      Domestic         1   14
302  12MAR2013  LGA  WAS  1-10 Minutes     Domestic         1    5
431  12MAR2013  LGA  LAX  1-10 Minutes     Domestic         1    7
308  12MAR2013  LGA  ORD  1-10 Minutes     Domestic         1    5
182  13MAR2013  LGA  YYZ  No Delay         International    2   -4
114  13MAR2013  LGA  LAX  1-10 Minutes     Domestic         2    6
202  13MAR2013  LGA  ORD  No Delay         Domestic         2   -9
219  13MAR2013  LGA  LHR  11+ Minutes      International    2   14
439  13MAR2013  LGA  LAX  1-10 Minutes     Domestic         2    6
290  13MAR2013  LGA  WAS  No Delay         Domestic         2   -1
523  13MAR2013  LGA  ORD  1-10 Minutes     Domestic         2    3
982  13MAR2013  LGA  DFW  No Delay         Domestic         2   -2
821  13MAR2013  LGA  LHR  No Delay         International    2   -2
872  13MAR2013  LGA  LAX  11+ Minutes      Domestic         2   13
416  13MAR2013  LGA  WAS  No Delay         Domestic         2   -3
132  13MAR2013  LGA  YYZ  1-10 Minutes     International    2    6
829  13MAR2013  LGA  WAS  1-10 Minutes     Domestic         2    6
183  13MAR2013  LGA  WAS  1-10 Minutes     Domestic         2    3
921  13MAR2013  LGA  DFW  11+ Minutes      Domestic         2   12
302  13MAR2013  LGA  WAS  1-10 Minutes     Domestic         2    8
431  13MAR2013  LGA  LAX  11+ Minutes      Domestic         2   17
308  13MAR2013  LGA  ORD  1-10 Minutes     Domestic         2    2
182  14MAR2013  LGA  YYZ  No Delay         International    3   -3
114  14MAR2013  LGA  LAX  11+ Minutes      Domestic         3   12
202  14MAR2013  LGA  ORD  1-10 Minutes     Domestic         3    2
219  14MAR2013  LGA  LHR  1-10 Minutes     International    3    3
439  14MAR2013  LGA  LAX  1-10 Minutes     Domestic         3    8
387  14MAR2013  LGA  CPH  No Delay         International    3   -9
290  14MAR2013  LGA  WAS  1-10 Minutes     Domestic         3    1
523  14MAR2013  LGA  ORD  11+ Minutes      Domestic         3   18
982  14MAR2013  LGA  DFW  No Delay         Domestic         3   -5
622  14MAR2013  LGA  FRA  No Delay         International    3   -5
821  14MAR2013  LGA  LHR  1-10 Minutes     International    3    9
872  14MAR2013  LGA  LAX  11+ Minutes      Domestic         3   15
416  14MAR2013  LGA  WAS  1-10 Minutes     Domestic         3    6
132  14MAR2013  LGA  YYZ  1-10 Minutes     International    3    5
829  14MAR2013  LGA  WAS  No Delay         Domestic         3  -10
183  14MAR2013  LGA  WAS  No Delay         Domestic         3    0
921  14MAR2013  LGA  DFW  1-10 Minutes     Domestic         3    2
302  14MAR2013  LGA  WAS  No Delay         Domestic         3    0
431  14MAR2013  LGA  LAX  1-10 Minutes     Domestic         3    1
308  14MAR2013  LGA  ORD  No Delay         Domestic         3   -9
182  15MAR2013  LGA  YYZ  1-10 Minutes     International    4    5
114  15MAR2013  LGA  LAX  No Delay         Domestic         4   -8
202  15MAR2013  LGA  ORD  1-10 Minutes     Domestic         4    4
219  15MAR2013  LGA  LHR  No Delay         International    4   -9
439  15MAR2013  LGA  LAX  No Delay         Domestic         4   -2
387  15MAR2013  LGA  CPH  11+ Minutes      International    4   26
290  15MAR2013  LGA  WAS  No Delay         Domestic         4   -5
523  15MAR2013  LGA  ORD  1-10 Minutes     Domestic         4    1
982  15MAR2013  LGA  DFW  1-10 Minutes     Domestic         4    7
622  15MAR2013  LGA  FRA  No Delay         International    4   -2
821  15MAR2013  LGA  LHR  No Delay         International    4   -9
872  15MAR2013  LGA  LAX  No Delay         Domestic         4   -1
416  15MAR2013  LGA  WAS  No Delay         Domestic         4   -2
132  15MAR2013  LGA  YYZ  1-10 Minutes     International    4    6
829  15MAR2013  LGA  WAS  No Delay         Domestic         4   -3
183  15MAR2013  LGA  WAS  No Delay         Domestic         4    0
271  15MAR2013  LGA  CDG  No Delay         International    4   -3
921  15MAR2013  LGA  DFW  1-10 Minutes     Domestic         4    4
302  15MAR2013  LGA  WAS  No Delay         Domestic         4   -2
431  15MAR2013  LGA  LAX  No Delay         Domestic         4    0
308  15MAR2013  LGA  ORD  1-10 Minutes     Domestic         4    7
182  16MAR2013  LGA  YYZ  1-10 Minutes     International    5    9
114  16MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    4
202  16MAR2013  LGA  ORD  No Delay         Domestic         5    0
219  16MAR2013  LGA  LHR  11+ Minutes      International    5   13
439  16MAR2013  LGA  LAX  No Delay         Domestic         5   -3
387  16MAR2013  LGA  CPH  No Delay         International    5   -1
290  16MAR2013  LGA  WAS  No Delay         Domestic         5   -1
523  16MAR2013  LGA  ORD  11+ Minutes      Domestic         5   14
982  16MAR2013  LGA  DFW  1-10 Minutes     Domestic         5    6
821  16MAR2013  LGA  LHR  1-10 Minutes     International    5    2
872  16MAR2013  LGA  LAX  1-10 Minutes     Domestic         5   10
416  16MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    6
132  16MAR2013  LGA  YYZ  No Delay         International    5    0
829  16MAR2013  LGA  WAS  No Delay         Domestic         5   -2
183  16MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    1
271  16MAR2013  LGA  CDG  11+ Minutes      International    5   20
921  16MAR2013  LGA  DFW  1-10 Minutes     Domestic         5    8
302  16MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    2
431  16MAR2013  LGA  LAX  No Delay         Domestic         5   -1
308  16MAR2013  LGA  ORD  No Delay         Domestic         5   -2
114  17MAR2013  LGA  LAX  11+ Minutes      Domestic         6   11
202  17MAR2013  LGA  ORD  11+ Minutes      Domestic         6   19
219  17MAR2013  LGA  LHR  1-10 Minutes     International    6    3
439  17MAR2013  LGA  LAX  No Delay         Domestic         6   -2
387  17MAR2013  LGA  CPH  No Delay         International    6   -8
290  17MAR2013  LGA  WAS  No Delay         Domestic         6   -4
523  17MAR2013  LGA  ORD  11+ Minutes      Domestic         6   17
982  17MAR2013  LGA  DFW  No Delay         Domestic         6   -1
622  17MAR2013  LGA  FRA  No Delay         International    6   -1
821  17MAR2013  LGA  LHR  No Delay         International    6   -7
872  17MAR2013  LGA  LAX  1-10 Minutes     Domestic         6    3
416  17MAR2013  LGA  WAS  No Delay         Domestic         6   -5
132  17MAR2013  LGA  YYZ  1-10 Minutes     International    6    6
829  17MAR2013  LGA  WAS  No Delay         Domestic         6    0
183  17MAR2013  LGA  WAS  No Delay         Domestic         6   -3
271  17MAR2013  LGA  CDG  11+ Minutes      International    6   12
921  17MAR2013  LGA  DFW  1-10 Minutes     Domestic         6    4
302  17MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    4
431  17MAR2013  LGA  LAX  1-10 Minutes     Domestic         6    3
308  17MAR2013  LGA  ORD  1-10 Minutes     Domestic         6    4
182  18MAR2013  LGA  YYZ  No Delay         International    7   -9
114  18MAR2013  LGA  LAX  1-10 Minutes     Domestic         7    5
202  18MAR2013  LGA  ORD  No Delay         Domestic         7    0
219  18MAR2013  LGA  LHR  No Delay         International    7  -10
439  18MAR2013  LGA  LAX  1-10 Minutes     Domestic         7    5
387  18MAR2013  LGA  CPH  No Delay         International    7   -6
290  18MAR2013  LGA  WAS  1-10 Minutes     Domestic         7    5
523  18MAR2013  LGA  ORD  No Delay         Domestic         7   -5
982  18MAR2013  LGA  DFW  11+ Minutes      Domestic         7   12
622  18MAR2013  LGA  FRA  No Delay         International    7   -7
821  18MAR2013  LGA  LHR  1-10 Minutes     International    7    9
872  18MAR2013  LGA  LAX  1-10 Minutes     Domestic         7   10
416  18MAR2013  LGA  WAS  1-10 Minutes     Domestic         7    2
132  18MAR2013  LGA  YYZ  No Delay         International    7   -5
829  18MAR2013  LGA  WAS  No Delay         Domestic         7    0
183  18MAR2013  LGA  WAS  No Delay         Domestic         7   -8
271  18MAR2013  LGA  CDG  1-10 Minutes     International    7    4
921  18MAR2013  LGA  DFW  1-10 Minutes     Domestic         7    2
302  18MAR2013  LGA  WAS  1-10 Minutes     Domestic         7    2
431  18MAR2013  LGA  LAX  No Delay         Domestic         7   -3
308  18MAR2013  LGA  ORD  No Delay         Domestic         7   -5
182  19MAR2013  LGA  YYZ  1-10 Minutes     International    1    6
114  19MAR2013  LGA  LAX  11+ Minutes      Domestic         1   16
202  19MAR2013  LGA  ORD  11+ Minutes      Domestic         1   14
219  19MAR2013  LGA  LHR  1-10 Minutes     International    1    4
439  19MAR2013  LGA  LAX  1-10 Minutes     Domestic         1   10
387  19MAR2013  LGA  CPH  1-10 Minutes     International    1    1
290  19MAR2013  LGA  WAS  11+ Minutes      Domestic         1   11
523  19MAR2013  LGA  ORD  11+ Minutes      Domestic         1   18
982  19MAR2013  LGA  DFW  1-10 Minutes     Domestic         1    1
622  19MAR2013  LGA  FRA  1-10 Minutes     International    1    2
872  19MAR2013  LGA  LAX  1-10 Minutes     Domestic         1    6
416  19MAR2013  LGA  WAS  No Delay         Domestic         1   -6
132  19MAR2013  LGA  YYZ  No Delay         International    1   -9
829  19MAR2013  LGA  WAS  1-10 Minutes     Domestic         1    2
183  19MAR2013  LGA  WAS  No Delay         Domestic         1   -3
271  19MAR2013  LGA  CDG  11+ Minutes      International    1   26
921  19MAR2013  LGA  DFW  1-10 Minutes     Domestic         1    1
302  19MAR2013  LGA  WAS  1-10 Minutes     Domestic         1    6
431  19MAR2013  LGA  LAX  No Delay         Domestic         1   -6
308  19MAR2013  LGA  ORD  No Delay         Domestic         1   -5
182  20MAR2013  LGA  YYZ  1-10 Minutes     International    2   10
114  20MAR2013  LGA  LAX  No Delay         Domestic         2   -1
202  20MAR2013  LGA  ORD  11+ Minutes      Domestic         2   19
219  20MAR2013  LGA  LHR  No Delay         International    2   -6
439  20MAR2013  LGA  LAX  No Delay         Domestic         2   -6
290  20MAR2013  LGA  WAS  1-10 Minutes     Domestic         2    3
523  20MAR2013  LGA  ORD  No Delay         Domestic         2   -7
982  20MAR2013  LGA  DFW  1-10 Minutes     Domestic         2    8
821  20MAR2013  LGA  LHR  1-10 Minutes     International    2    1
872  20MAR2013  LGA  LAX  1-10 Minutes     Domestic         2    9
416  20MAR2013  LGA  WAS  No Delay         Domestic         2   -1
132  20MAR2013  LGA  YYZ  1-10 Minutes     International    2    9
829  20MAR2013  LGA  WAS  1-10 Minutes     Domestic         2    3
183  20MAR2013  LGA  WAS  1-10 Minutes     Domestic         2    6
921  20MAR2013  LGA  DFW  1-10 Minutes     Domestic         2    3
302  20MAR2013  LGA  WAS  No Delay         Domestic         2   -4
431  20MAR2013  LGA  LAX  No Delay         Domestic         2   -4
308  20MAR2013  LGA  ORD  11+ Minutes      Domestic         2   13
182  21MAR2013  LGA  YYZ  No Delay         International    3   -6
114  21MAR2013  LGA  LAX  1-10 Minutes     Domestic         3    8
202  21MAR2013  LGA  ORD  No Delay         Domestic         3   -3
219  21MAR2013  LGA  LHR  1-10 Minutes     International    3    1
439  21MAR2013  LGA  LAX  No Delay         Domestic         3   -8
387  21MAR2013  LGA  CPH  No Delay         International    3   -1
290  21MAR2013  LGA  WAS  1-10 Minutes     Domestic         3    2
523  21MAR2013  LGA  ORD  1-10 Minutes     Domestic         3    9
982  21MAR2013  LGA  DFW  11+ Minutes      Domestic         3   20
622  21MAR2013  LGA  FRA  No Delay         International    3   -6
821  21MAR2013  LGA  LHR  1-10 Minutes     International    3    3
872  21MAR2013  LGA  LAX  No Delay         Domestic         3    0
416  21MAR2013  LGA  WAS  No Delay         Domestic         3   -5
132  21MAR2013  LGA  YYZ  1-10 Minutes     International    3    5
829  21MAR2013  LGA  WAS  1-10 Minutes     Domestic         3    1
183  21MAR2013  LGA  WAS  No Delay         Domestic         3   -9
271  21MAR2013  LGA  CDG  11+ Minutes      International    3   25
921  21MAR2013  LGA  DFW  1-10 Minutes     Domestic         3    5
302  21MAR2013  LGA  WAS  1-10 Minutes     Domestic         3    4
431  21MAR2013  LGA  LAX  11+ Minutes      Domestic         3   27
308  21MAR2013  LGA  ORD  1-10 Minutes     Domestic         3    5
182  22MAR2013  LGA  YYZ  No Delay         International    4    0
114  22MAR2013  LGA  LAX  11+ Minutes      Domestic         4   15
202  22MAR2013  LGA  ORD  No Delay         Domestic         4   -5
219  22MAR2013  LGA  LHR  No Delay         International    4   -5
439  22MAR2013  LGA  LAX  1-10 Minutes     Domestic         4    6
387  22MAR2013  LGA  CPH  1-10 Minutes     International    4    6
290  22MAR2013  LGA  WAS  No Delay         Domestic         4   -6
523  22MAR2013  LGA  ORD  11+ Minutes      Domestic         4   13
982  22MAR2013  LGA  DFW  1-10 Minutes     Domestic         4    6
622  22MAR2013  LGA  FRA  1-10 Minutes     International    4    5
821  22MAR2013  LGA  LHR  No Delay         International    4   -4
872  22MAR2013  LGA  LAX  1-10 Minutes     Domestic         4    9
416  22MAR2013  LGA  WAS  No Delay         Domestic         4   -4
132  22MAR2013  LGA  YYZ  1-10 Minutes     International    4    7
829  22MAR2013  LGA  WAS  1-10 Minutes     Domestic         4    6
271  22MAR2013  LGA  CDG  11+ Minutes      International    4   22
921  22MAR2013  LGA  DFW  No Delay         Domestic         4   -3
302  22MAR2013  LGA  WAS  1-10 Minutes     Domestic         4    8
431  22MAR2013  LGA  LAX  11+ Minutes      Domestic         4   16
308  22MAR2013  LGA  ORD  1-10 Minutes     Domestic         4    4
182  23MAR2013  LGA  YYZ  1-10 Minutes     International    5    6
114  23MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    3
202  23MAR2013  LGA  ORD  No Delay         Domestic         5   -1
219  23MAR2013  LGA  LHR  1-10 Minutes     International    5    4
439  23MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    6
387  23MAR2013  LGA  CPH  11+ Minutes      International    5   21
290  23MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    5
523  23MAR2013  LGA  ORD  No Delay         Domestic         5   -3
982  23MAR2013  LGA  DFW  No Delay         Domestic         5   -9
622  23MAR2013  LGA  FRA  11+ Minutes      International    5   34
821  23MAR2013  LGA  LHR  1-10 Minutes     International    5    1
872  23MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    9
416  23MAR2013  LGA  WAS  No Delay         Domestic         5    0
132  23MAR2013  LGA  YYZ  No Delay         International    5    0
829  23MAR2013  LGA  WAS  11+ Minutes      Domestic         5   11
183  23MAR2013  LGA  WAS  No Delay         Domestic         5    0
271  23MAR2013  LGA  CDG  1-10 Minutes     International    5    8
921  23MAR2013  LGA  DFW  1-10 Minutes     Domestic         5    2
302  23MAR2013  LGA  WAS  No Delay         Domestic         5   -6
431  23MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    4
308  23MAR2013  LGA  ORD  No Delay         Domestic         5   -3
182  24MAR2013  LGA  YYZ  No Delay         International    6   -8
114  24MAR2013  LGA  LAX  1-10 Minutes     Domestic         6    6
202  24MAR2013  LGA  ORD  No Delay         Domestic         6   -7
219  24MAR2013  LGA  LHR  No Delay         International    6   -3
439  24MAR2013  LGA  LAX  11+ Minutes      Domestic         6   13
387  24MAR2013  LGA  CPH  11+ Minutes      International    6   19
290  24MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    6
523  24MAR2013  LGA  ORD  No Delay         Domestic         6   -6
982  24MAR2013  LGA  DFW  No Delay         Domestic         6   -2
622  24MAR2013  LGA  FRA  11+ Minutes      International    6   28
821  24MAR2013  LGA  LHR  11+ Minutes      International    6   17
872  24MAR2013  LGA  LAX  No Delay         Domestic         6   -1
416  24MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    3
132  24MAR2013  LGA  YYZ  1-10 Minutes     International    6    2
829  24MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    4
183  24MAR2013  LGA  WAS  No Delay         Domestic         6   -4
271  24MAR2013  LGA  CDG  No Delay         International    6   -2
921  24MAR2013  LGA  DFW  1-10 Minutes     Domestic         6    9
302  24MAR2013  LGA  WAS  No Delay         Domestic         6   -4
431  24MAR2013  LGA  LAX  No Delay         Domestic         6   -3
308  24MAR2013  LGA  ORD  1-10 Minutes     Domestic         6    1
182  25MAR2013  LGA  YYZ  No Delay         International    7   -2
114  25MAR2013  LGA  LAX  No Delay         Domestic         7    0
202  25MAR2013  LGA  ORD  1-10 Minutes     Domestic         7    6
219  25MAR2013  LGA  LHR  11+ Minutes      International    7   14
439  25MAR2013  LGA  LAX  No Delay         Domestic         7   -4
387  25MAR2013  LGA  CPH  No Delay         International    7   -6
290  25MAR2013  LGA  WAS  No Delay         Domestic         7   -7
523  25MAR2013  LGA  ORD  No Delay         Domestic         7    0
982  25MAR2013  LGA  DFW  1-10 Minutes     Domestic         7    4
622  25MAR2013  LGA  FRA  No Delay         International    7   -4
821  25MAR2013  LGA  LHR  11+ Minutes      International    7   30
416  25MAR2013  LGA  WAS  1-10 Minutes     Domestic         7    3
132  25MAR2013  LGA  YYZ  1-10 Minutes     International    7    7
829  25MAR2013  LGA  WAS  No Delay         Domestic         7  -10
183  25MAR2013  LGA  WAS  No Delay         Domestic         7   -5
271  25MAR2013  LGA  CDG  1-10 Minutes     International    7    1
921  25MAR2013  LGA  DFW  1-10 Minutes     Domestic         7    3
302  25MAR2013  LGA  WAS  No Delay         Domestic         7   -5
431  25MAR2013  LGA  LAX  1-10 Minutes     Domestic         7    6
308  25MAR2013  LGA  ORD  11+ Minutes      Domestic         7   17
182  26MAR2013  LGA  YYZ  1-10 Minutes     International    1   10
114  26MAR2013  LGA  LAX  1-10 Minutes     Domestic         1    4
202  26MAR2013  LGA  ORD  1-10 Minutes     Domestic         1    8
219  26MAR2013  LGA  LHR  11+ Minutes      International    1   25
439  26MAR2013  LGA  LAX  11+ Minutes      Domestic         1   21
387  26MAR2013  LGA  CPH  11+ Minutes      International    1   18
290  26MAR2013  LGA  WAS  No Delay         Domestic         1    0
523  26MAR2013  LGA  ORD  1-10 Minutes     Domestic         1    9
982  26MAR2013  LGA  DFW  No Delay         Domestic         1   -8
622  26MAR2013  LGA  FRA  1-10 Minutes     International    1    3
872  26MAR2013  LGA  LAX  No Delay         Domestic         1   -4
416  26MAR2013  LGA  WAS  1-10 Minutes     Domestic         1    5
132  26MAR2013  LGA  YYZ  1-10 Minutes     International    1    1
829  26MAR2013  LGA  WAS  1-10 Minutes     Domestic         1    4
183  26MAR2013  LGA  WAS  1-10 Minutes     Domestic         1    2
271  26MAR2013  LGA  CDG  11+ Minutes      International    1   16
921  26MAR2013  LGA  DFW  1-10 Minutes     Domestic         1    3
302  26MAR2013  LGA  WAS  1-10 Minutes     Domestic         1    3
431  26MAR2013  LGA  LAX  1-10 Minutes     Domestic         1    9
308  26MAR2013  LGA  ORD  1-10 Minutes     Domestic         1    6
182  27MAR2013  LGA  YYZ  No Delay         International    2   -9
114  27MAR2013  LGA  LAX  11+ Minutes      Domestic         2   11
202  27MAR2013  LGA  ORD  1-10 Minutes     Domestic         2    6
219  27MAR2013  LGA  LHR  1-10 Minutes     International    2   10
439  27MAR2013  LGA  LAX  No Delay         Domestic         2    0
290  27MAR2013  LGA  WAS  No Delay         Domestic         2   -1
523  27MAR2013  LGA  ORD  No Delay         Domestic         2   -5
821  27MAR2013  LGA  LHR  1-10 Minutes     International    2    1
872  27MAR2013  LGA  LAX  1-10 Minutes     Domestic         2    1
416  27MAR2013  LGA  WAS  No Delay         Domestic         2    0
132  27MAR2013  LGA  YYZ  1-10 Minutes     International    2    4
829  27MAR2013  LGA  WAS  1-10 Minutes     Domestic         2    3
183  27MAR2013  LGA  WAS  1-10 Minutes     Domestic         2    2
921  27MAR2013  LGA  DFW  No Delay         Domestic         2   -5
302  27MAR2013  LGA  WAS  No Delay         Domestic         2   -4
431  27MAR2013  LGA  LAX  1-10 Minutes     Domestic         2    3
308  27MAR2013  LGA  ORD  11+ Minutes      Domestic         2   17
182  28MAR2013  LGA  YYZ  No Delay         International    3   -9
114  28MAR2013  LGA  LAX  1-10 Minutes     Domestic         3    5
202  28MAR2013  LGA  ORD  11+ Minutes      Domestic         3   13
219  28MAR2013  LGA  LHR  1-10 Minutes     International    3    6
439  28MAR2013  LGA  LAX  1-10 Minutes     Domestic         3    9
387  28MAR2013  LGA  CPH  11+ Minutes      International    3   12
290  28MAR2013  LGA  WAS  1-10 Minutes     Domestic         3    7
523  28MAR2013  LGA  ORD  11+ Minutes      Domestic         3   16
982  28MAR2013  LGA  DFW  1-10 Minutes     Domestic         3   10
622  28MAR2013  LGA  FRA  11+ Minutes      International    3   13
821  28MAR2013  LGA  LHR  1-10 Minutes     International    3    9
872  28MAR2013  LGA  LAX  No Delay         Domestic         3   -1
416  28MAR2013  LGA  WAS  No Delay         Domestic         3   -4
132  28MAR2013  LGA  YYZ  No Delay         International    3   -4
829  28MAR2013  LGA  WAS  1-10 Minutes     Domestic         3    8
183  28MAR2013  LGA  WAS  No Delay         Domestic         3   -2
271  28MAR2013  LGA  CDG  11+ Minutes      International    3   14
921  28MAR2013  LGA  DFW  No Delay         Domestic         3   -5
302  28MAR2013  LGA  WAS  No Delay         Domestic         3   -2
431  28MAR2013  LGA  LAX  No Delay         Domestic         3   -6
308  28MAR2013  LGA  ORD  No Delay         Domestic         3    0
182  29MAR2013  LGA  YYZ  1-10 Minutes     International    4   10
114  29MAR2013  LGA  LAX  No Delay         Domestic         4   -7
202  29MAR2013  LGA  ORD  No Delay         Domestic         4   -1
219  29MAR2013  LGA  LHR  11+ Minutes      International    4   27
439  29MAR2013  LGA  LAX  No Delay         Domestic         4   -4
387  29MAR2013  LGA  CPH  11+ Minutes      International    4   22
290  29MAR2013  LGA  WAS  1-10 Minutes     Domestic         4    6
523  29MAR2013  LGA  ORD  1-10 Minutes     Domestic         4    6
982  29MAR2013  LGA  DFW  No Delay         Domestic         4   -7
622  29MAR2013  LGA  FRA  1-10 Minutes     International    4    3
821  29MAR2013  LGA  LHR  11+ Minutes      International    4   14
872  29MAR2013  LGA  LAX  No Delay         Domestic         4   -4
416  29MAR2013  LGA  WAS  1-10 Minutes     Domestic         4    3
132  29MAR2013  LGA  YYZ  1-10 Minutes     International    4    5
183  29MAR2013  LGA  WAS  11+ Minutes      Domestic         4   11
271  29MAR2013  LGA  CDG  11+ Minutes      International    4   39
921  29MAR2013  LGA  DFW  11+ Minutes      Domestic         4   13
302  29MAR2013  LGA  WAS  No Delay         Domestic         4   -6
431  29MAR2013  LGA  LAX  11+ Minutes      Domestic         4   16
308  29MAR2013  LGA  ORD  No Delay         Domestic         4   -4
182  30MAR2013  LGA  YYZ  1-10 Minutes     International    5    2
114  30MAR2013  LGA  LAX  No Delay         Domestic         5   -7
202  30MAR2013  LGA  ORD  1-10 Minutes     Domestic         5    7
219  30MAR2013  LGA  LHR  No Delay         International    5    0
439  30MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    7
387  30MAR2013  LGA  CPH  1-10 Minutes     International    5    8
290  30MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    4
523  30MAR2013  LGA  ORD  1-10 Minutes     Domestic         5   10
982  30MAR2013  LGA  DFW  1-10 Minutes     Domestic         5    8
622  30MAR2013  LGA  FRA  1-10 Minutes     International    5    1
821  30MAR2013  LGA  LHR  No Delay         International    5   -1
872  30MAR2013  LGA  LAX  11+ Minutes      Domestic         5   12
416  30MAR2013  LGA  WAS  No Delay         Domestic         5   -4
132  30MAR2013  LGA  YYZ  1-10 Minutes     International    5    6
829  30MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    3
183  30MAR2013  LGA  WAS  1-10 Minutes     Domestic         5    3
271  30MAR2013  LGA  CDG  11+ Minutes      International    5   16
921  30MAR2013  LGA  DFW  No Delay         Domestic         5   -3
302  30MAR2013  LGA  WAS  No Delay         Domestic         5   -6
431  30MAR2013  LGA  LAX  1-10 Minutes     Domestic         5    2
308  30MAR2013  LGA  ORD  No Delay         Domestic         5   -1
182  31MAR2013  LGA  YYZ  No Delay         International    6   -6
114  31MAR2013  LGA  LAX  No Delay         Domestic         6   -2
202  31MAR2013  LGA  ORD  No Delay         Domestic         6   -8
219  31MAR2013  LGA  LHR  No Delay         International    6   -4
439  31MAR2013  LGA  LAX  1-10 Minutes     Domestic         6    7
387  31MAR2013  LGA  CPH  1-10 Minutes     International    6    9
290  31MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    6
523  31MAR2013  LGA  ORD  1-10 Minutes     Domestic         6    3
982  31MAR2013  LGA  DFW  1-10 Minutes     Domestic         6    7
622  31MAR2013  LGA  FRA  11+ Minutes      International    6   19
821  31MAR2013  LGA  LHR  1-10 Minutes     International    6    2
872  31MAR2013  LGA  LAX  No Delay         Domestic         6   -1
416  31MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    5
132  31MAR2013  LGA  YYZ  No Delay         International    6   -3
829  31MAR2013  LGA  WAS  No Delay         Domestic         6   -4
183  31MAR2013  LGA  WAS  1-10 Minutes     Domestic         6    6
271  31MAR2013  LGA  CDG  1-10 Minutes     International    6    7
921  31MAR2013  LGA  DFW  No Delay         Domestic         6   -1
302  31MAR2013  LGA  WAS  No Delay         Domestic         6   -2
431  31MAR2013  LGA  LAX  1-10 Minutes     Domestic         6    8
308  31MAR2013  LGA  ORD  1-10 Minutes     Domestic         6    1
;;;;
data certadv.stress18;
   input ID $ 1-4 Name $ 8-19 RestHR 25-26 MaxHR 33-35 RecHR 41-43
         TimeMin 51-52 TimeSec 61-62 Tolerance $ 70 Year 75-78;
datalines;
2458   Murray, W        72      185     128       12        38       D    2018
2462   Almers, C        68      171     133       10         5       I    2018
2523   Johnson, R       69      162     114        9        42       S    2018
2539   LaMance, K       75      168     141       11        46       D    2018
2555   King, E          70      167     122       13        13       I    2018
2563   Pitts, D         71      159     116       10        22       S    2018
2572   Oberon, M        74      177     138       12        11       D    2018
2574   Peterson, V      80      164     137       14         9       D    2018
2575   Quigley, M       74      152     113       11        26       I    2018
2584   Takahashi, Y     76      163     135       16         7       D    2018
2586   Derber, B        68      176     119       17        35       N    2018
2589   Wilcox, E        78      189     138       14        57       I    2018
;;;;
data certadv.stress17;
   input ID $ 1-4 Name $ 7-18 RestHR 25-26 MaxHR 32-34 RecHR 39-41
         TimeMin 48-49 TimeSec 57-58 Tolerance $ 65 Year 70-73;
datalines;
2501  Bonaventure, T    78     177    139      11       13      I    2017
2544  Jones, M          79     187    136      12       26      N    2017
2552  Reberson, P       69     158    139      15       41      D    2017
2568  Eberhardt, S      72     182    122      16       49      N    2017
2571  Nunnelly, A       65     181    141      15        2      I    2017
2578  Cameron, L        75     158    108      14       27      I    2017
2579  Underwood, K      72     165    127      13       19      S    2017
2588  Ivan, H           70     182    126      15       41      N    2017
2595  Warren, C         77     170    136      12       10      S    2017
;;;;
data certadv.mechanicslevel1;
   input EmpID $ 1-4 JobCode $ 9-11
         @19 Salary dollar7.;
   format salary dollar9.;
datalines;
1400    ME1       $41,677
1403    ME1       $39,301
1120    ME1       $40,067
1121    ME1       $40,757
1412    ME1       $38,919
1200    ME1       $38,942
1995    ME1       $40,334
1418    ME1       $39,207
;;;;
data certadv.mechanicslevel2;
   input EmpID $ 1-4 JobCode $ 9-11
         @19 Salary dollar7.;
   format salary dollar9.;
datalines;
1653    ME2       $49,151
1782    ME2       $49,483
1244    ME2       $51,695
1065    ME2       $49,126
1129    ME2       $48,901
1406    ME2       $49,259
1356    ME2       $51,617
1292    ME2       $51,367
1440    ME2       $50,060
1900    ME2       $49,147
1423    ME2       $50,082
1432    ME2       $49,458
1050    ME2       $49,234
1105    ME2       $48,727
;;;;
data certadv.mechanicslevel3;
   input EmpID $ 1-4 JobCode $ 9-11
         @19 Salary dollar7.;
   format salary dollar9.;
datalines;
1499    ME3       $60,235
1409    ME3       $58,171
1379    ME3       $59,170
1521    ME3       $58,136
1385    ME3       $61,460
1420    ME3       $60,299
1882    ME3       $58,153
;;;;
data certadv.schedule;
   input Course_Number 1-2 Course_Code $ 4-7 Location $ 9-15
         @17 Begin_Date date9. Teacher $ 27-47;
   format course_number 2. begin_date date9. location 15.;
   label course_code = 'Course Code'
         course_number = 'Course Number'
         begin_date = 'Begin'
         location = 'Location'
         teacher = 'Instructor';
   datalines;
 1 C001 Seattle 23OCT2018 Hallis, Dr. George
 2 C002 Dallas  04DEC2018 Wickam, Dr. Alice
 3 C003 Boston  08JAN2019 Forest, Mr. Peter
 4 C004 Seattle 22JAN2019 Tally, Ms. Julia
 5 C005 Dallas  26FEB2019 Hallis, Dr. George
 6 C006 Boston  02APR2019 Berthan, Ms. Judy
 7 C001 Dallas  21MAY2019 Hallis, Dr. George
 8 C002 Boston  11JUN2019 Wickam, Dr. Alice
 9 C003 Seattle 16JUL2019 Forest, Mr. Peter
10 C004 Dallas  13AUG2019 Tally, Ms. Julia
11 C005 Boston  17SEP2019 Tally, Ms. Julia
12 C006 Seattle 01OCT2019 Berthan, Ms. Judy
13 C001 Boston  12NOV2019 Hallis, Dr. George
14 C002 Seattle 03DEC2019 Wickam, Dr. Alice
15 C003 Dallas  07JAN2020 Forest, Mr. Peter
16 C004 Boston  21JAN2020 Tally, Ms. Julia
17 C005 Seattle 05FEB2020 Hallis, Dr. George
18 C006 Dallas  25FEB2020 Berthan, Ms. Judy
;;;;
data certadv.students;
   input Student_Name $ 1-25 Student_Company $ 29-68 City_State $ 71-90;
   label student_name = 'Student Name'
         student_company = 'Company'
         city_state = 'City,State';
   datalines4;
Abramson, Ms. Andrea        Eastman Developers                        Deerfield, IL
Alamutu, Ms. Julie          Reston Railway                            Chicago, IL
Albritton, Mr. Bryan        Special Services                          Oak Brook, IL
Allen, Ms. Denise           Department of Defense                     Bethesda, MD
Amigo, Mr. Bill             Assoc. of Realtors                        Chicago, IL
Avakian, Mr. Don            Reston Railway                            Chicago, IL
Babbitt, Mr. Bill           National Credit Corp.                     Chicago, IL
Baker, Mr. Vincent          Snowing Petroleum                         New Orleans, LA
Bates, Ms. Ellen            Reston Railway                            Chicago, IL
Belles, Ms. Vicki           Jost Hardware Inc.                        Toledo, OH
Benincasa, Ms. Elizabeth    Hospital Nurses Association               Naperville, IL
Bills, Ms. Paulette         Reston Railway                            Chicago, IL
Blair, Mr. Paul             Federal Lankmarks                         Washington, DC
Blayney, Ms. Vivian         Southern Gas Co.                          Los Angeles, CA
Boyd, Ms. Leah              United Shoes Co.                          Brea, CA
Brown, Mr. Michael          Swain Diagnostics Inc.                    Columbia, MD
Burns, Ms. Karen            Califonics Inc.                           Sacramento, CA
Carty, Mr. Howard           Hearit Telecommunications                 Washington, DC
Chan, Mr. John              California Lawyers Assn.                  Sacramento, CA
Chavez, Ms. Louise          US Express Corp.                          Fort Lauderdale, FL
Chevarley, Ms. Arlene       Motor Communications                      Chicago, IL
Chodnoff, Mr. Norman        NBA Insurance                             Chicago, IL
Chow, Ms. Sylvia            Bostic Amplifier Inc.                     Harrisburg, PA
Cichocki, Ms. Elizabeth     Valley Community College                  Palos Hill, IL
Clark, Mr. Rich             Assoc. of Realtors                        Chicago, IL
Clough, Ms. Patti           Reston Railway                            Chicago, IL
Coley, Mr. John             California Dept. of Insurance             Los Angeles, CA
Connick, Ms. Pat            Central Container Corporation             Chicago, IL
Conron, Ms. Karen B.        L&H Research                              Cincinnati, OH
Cookson, Ms. Michelle       Log Chemical                              Columbus, OH
Crace, Mr. Ron              Von Crump Seafood                         San Diego, CA
Davies, Ms. Leah            International Education Association       Washington, DC
Davis, Mr. Bruce            Semi;Conductor                            Oakland, CA
Dellmonache, Ms. Susan      US Express Corp.                          Fort Lauderdale, FL
Divjak, Ms. Theresa         US Weather Services                       Portland, ME
Dixon, Mr. Matt             Southern Edison                           Sacramento, CA
Dixon, Ms. Julie            Townsend Services                         Englewood, CO
Droddy, Mr. Steve           Allied Wood Corporation                   Nashville, TN
Dyer, Ms. Debra             Cetadyne Technologies                     Los Angeles, CA
Eckman, Mr. David           Grimm R&D                                 San Diego, CA
Edmonds, Mr. Neil           Montague Pharmaceuticals                  Summit, NJ
Edwards, Mr. Charles        Gorman Tire Corp.                         Akron, OH
Edwards, Ms. Kathy          Allied Wood Corporation                   Nashville, TN
Edwards, Ms. Sonia          Animal Hospital                           San Diego, CA
Elsins, Ms. Marisa F.       SSS Inc.                                  Annapolis, MD
Ferraro, Mr. Mark           Quantum Corporation                       Dallas, TX
Fink, Mr. Anthony           ACDD                                      St. Louis, MO
Fletcher, Mr. Nick          Pepson Manufacturing                      Albany, NY
Gandy, Dr. David            Paralegal Assoc.                          Austin, TX
Garrett, Mr. Tom            Reston Railway                            Chicago, IL
Garza, Ms. Cheryl           Admiral Research & Development Co.        Irvine, CA
Gash, Ms. Hedy              QA Information Systems Center             San Francisco, CA
Geatz, Mr. Patrick D.       San Juan Gas and Electric                 San Juan, PR
Gemelos, Mr. Jerry          Atlantic Airways, Inc.                    Atlanta, GA
Goyette, Mr. Lawrence       Headstrong Tire Corp.                     Torrington, CT
Graf, Ms. Margaret          Wood Surfaces Inc.                        Richmond, VA
Green, Mr. Pat              K&P Products                              Oakland, CA
Greep, Ms. Jennifer         K&P Products                              Oakland, CA
Griffin, Mr. Jim            Housers S&L                               Salinas, CA
Griffin, Mr. Lantz          Quantum Corporation                       Dallas, TX
Guay, Ms. Suzanne           U.S. Foreign Trade Assoc.                 Washington, DC
Hall, Ms. Sharon            Cetadyne Technologies                     Los Angeles, CA
Hamilton, Mr. Paul          Imperial Steel                            San Diego, CA
Hamilton, Ms. Alicia        Security Trust Corp.                      San Francisco, CA
Hamlet, Ms. Mary Ellen      First Bank of the Midwest                 Chicago, IL
Harrell, Mr. Ken            Information Mart                          Chicago, IL
Haubold, Ms. Ann            Reston Railway                            Chicago, IL
Hause, Mr. Manuel           Facsimile Holography                      Milwaukee, WI
Hickel, Mr. Douglas         Towncorp Savings of Illinois              Chicago, IL
Higgins, Ms. Anne           San Juan Gas and Electric                 San Juan, PR
Hill, Mr. Paul              Log Chemical                              Columbus, OH
Hipps, Mr. Rich             Assoc. of Realtors                        Chicago, IL
Hodge, Ms. Rita             Wilbur Wright Air Force Base              Mansfield, OH
Holbrook, Ms. Amy           Wooster Chemical                          Midland, MI
Howell, Mr. Jody            Reston Railway                            Chicago, IL
Hudock, Ms. Cathy           So. Cal. Medical Center                   San Diego, CA
Huels, Ms. Mary Frances     Basic Home Services                       Tarrytown, NY
Hurt, Ms. Kristen           Federated Bank                            Chicago, IL
Jacklin, Mr. Lantz          Quantum Corporation                       Dallas, TX
James, Ms. Anne             San Juan Gas and Electric                 San Juan, PR
Johnson, Mr. Todd           K&P Products                              Oakland, CA
Keever, Ms. Linda           Crossbow of California                    Oakland, CA
Kelley, Ms. Gail            Crossbow of California                    Oakland, CA
Kelly, Ms. Tamara           Cetadyne Technologies                     Los Angeles, CA
Kempster, Mr. Bob           Ronalds Corp.                             Oak Brook, IL
Kendig, Mr. James           Rocks International                       Phoenix, AZ
Kendig, Ms. Linda           Crossbow of California                    Oakland, CA
Kimble, Mr. John            Alforone Chemical                         St. Louis, MO
Kimpel, Ms. Janet           Roll Packaged Foods                       San Jose, CA
Kiraly, Mr. Bill            Washington International Corp.            Fort Wayne, IN
Kling, Mr. Kelly            NBA Insurance Co.                         Chicago, IL
Knight, Ms. Susan           K&P Products                              Oakland, CA
Kochen, Mr. Dennis          Reston Railway                            Chicago, IL
Koleff, Mr. Jim             Emulate Research                          Costa Mesa, CA
Kroeger, Ms. Beulah         Contractual Arbitrators                   Sacramento, CA
Kukenis, Ms. Valerie        USRRB                                     Chicago, IL
Laiken, Mr. Jim             Lorus Toy Co.                             Chicago, IL
Langballe, Mr. Ron          Dunnely Consultants                       Hamilton, ON
Larocque, Mr. Bret          Physicians IPA                            Phoenix, AZ
Lawee, Mr. Jackie           Special Services                          Oak Brook, IL
Ledford, Mr. Craig          Emulate Research                          Costa Mesa, CA
Lehmeyer, Ms. Jean          K&P Products                              Oakland, CA
Leon, Mr. Quinton           Dept. of Defense                          Washington, DC
Lewanwowski, Mr. Dale R.    US Forest Service                         Portland, OR
Licht, Mr. Bryan            SII                                       Edwardsville, IL
Liermann, Ms. Virginia      Metric Corp.                              Elkhart, IN
Lochbihler Mr. Mark         K&P Products                              Oakland, CA
Love, Mr. Michael           HIASIA                                    Houston, TX
Love, Ms. Cora              Polysteel Inc.                            Ogden, UT
Maurus, Mr. John            Howard Aircraft                           Buena Park, CA
McCoy, Mr. Phil             Donnelly Corp.                            Allentown, PA
McCoy, Ms. Gail             Crossbow of California                    Oakland, CA
McGillivray, Ms. Kathy      Allied Wood Corporation                   Nashville, TN
McKnight, Ms. Maureen E.    Federated Bank                            Chicago, IL
McLaughlin, Ms. Amy         Wooster Chemical                          Midland, MI
Merenstein, Mr. W.          Dunnely Consultants                       Hamilton, ON
Micheaux, Mr. John          Emulate Research                          Costa Mesa, CA
Mietlinski, Mr. Rich        Farmers Equity Assn.                      Omaha, NE
Mikles, Ms. Wendy           Southern Gas Co.                          Los Angeles, CA
Montgomery, Mr. Jeff        Bonstell Electronics                      Indianapolis, IN
Moore, Mr. John             California Dept. of Insurance             Los Angeles, CA
Moorman, Mr. Christopher    Facsimile Holography                      Milwaukee, WI
Morgan, Mr. Tommy           Autoloading Corp                          San Ramon, CA
Morgan, Ms. Kathy           Animal Hospital                           San Diego, CA
Muir, Mr. Anthony           NRCA-Central Region Office                St. Louis, MO
Myers, Mr. Fred             K&P Products                              Oakland, CA
Nandy, Ms. Brenda           K&P Products                              Oakland, CA
Newell, Mr. Paul            Log Chemical                              Columbus, OH
Ng, Mr. John                Board of Contractors                      Atlanta, GA
Nicholson, Ms. Elizabeth    Silver, Sachs & Co.                       New York, NY
Norton, Ms. Suzanne M.      Glimmer Cosmetics                         El Segundo, CA
O'Manique, Mr. Jon          International Cologen Res. Ctr.           Fort Collins, CO
O'Savio, Mr. Arnold Paul    K&P Products                              Oakland, CA
Owens, Mr. David            K&P Products                              Oakland, CA
Page, Mr. Scott             Applied Technologies                      Waukesha, WI
Pancoast, Ms. Jane          Chase Information Technology              Detroit, MI
Parker, Mr. Robert          SMASH Hardware Inc.                       Bozeman, MT
Paterson, Mr. Mark          Trader's Clearing House                   Chicago, IL
Patterson, Mr. Greg         Park Health Management                    Park Ridge, IL
Peavey, Ms. Judith          Facsimile Holography                      Milwaukee, WI
Peterson, Ms. Julie         Chase Information Technology              Detroit, MI
Pickens, Mr. Phillip        Ketchum Water and Power                   San Francisco, CA
Pickens, Ms. Margaret       Semi;Conductor                            Oakland, CA
Pilkenton, Ms. Sandra       US Treasury                               Washington, DC
Pledger, Ms. Terri          Candide Corporation                       Los Angeles, CA
Pressnall, Ms. Rona         Hearit Telecommunications                 Washington, DC
Principe, Mr. Ed            K&P Products                              Oakland, CA
Purvis, Mr. Michael         Roam Publishers                           Philadelphia, PA
Ramsey, Ms. Kathleen        Pacific Solid State Corp.                 Seattle, WA
Ray, Ms. Mary Frances       Basic Home Services                       Tarrytown, NY
Right, Ms. Tina             Olivier National Labs.                    Raleigh, NC
Ross, Ms. Cathy             So. Cal. Medical Center                   San Diego, CA
Rubin, Mr. Jimmie           National Immunology Laboratory            Birmingham, AL
Rubin, Ms. Naree            Paragon Pharmaceuticals                   Princeton, NJ
Rusnak, Ms. Mona            Rhodan Protection                         Des Plaines, IL
Sanders, Ms. Julie          Snowing Petroleum Services                New Orleans, LA
Sankey, Mr. Ken             NBA Insurance Co.                         Chicago, IL
Scannell, Ms. Robin         Amberly Corp.                             Fullerton, CA
Schier, Ms. Joan            Olivier National Labs.                    Raleigh, NC
Schwoebel, Mr. Roger        WAVCOMP                                   Pensacola, FL
Seitz, Mr. Adam             Lomax Services                            Chicago, IL
Shere, Mr. Brian            Trader's Clearing House                   Chicago, IL
Sheridan, Ms. Debra         Genetics Pharmaceuticals                  San Diego, CA
Shew, Ms. Marguerite        SSS Inc.                                  Annapolis, MD
Shipman, Ms. Jan            Southern Edison Co.                       Sacramento, CA
Short, Ms. Nancy            ABC, Inc.                                 Santa Clara, CA
Simon, Mr. David            Log Chemical                              Columbus, OH
Smith, Mr. Anthony          Candide Corporation                       Los Angeles, CA
Smith, Mr. Jack             Reston Railway                            Chicago, IL
Smith, Ms. Donna            Trader's Clearing House                   Chicago, IL
Smith, Ms. Jan              Reston Railway                            Chicago, IL
Snell, Dr. William J.       US Treasury                               Washington, DC
Stackhouse, Ms. Loretta     Donnelly Corp.                            Allentown, PA
Stebel, Mr. Thomas C.       Roam Publishers                           Philadelphia, PA
Stewart, Ms. Lora           Sandlot Enterprises                       San Diego, CA
Strah, Ms. Sonia            California Dept. of Insurance             Los Angeles, CA
Stromness, Ms. Mary         Housers S&L                               Salinas, CA
Sukumoljan, Mr. Robert      San Juan Gas and Electric                 San Juan, PR
Sulzbach, Mr. Bill          Sailbest Ships                            San Diego, CA
Sumner, Mr. Kenneth         NBAInsurance                              Chicago, IL
Swayze, Mr. Rodney          Reston Railway                            Chicago, IL
Taylor, Mr. Greg            Smash Consulting                          Decatur, IL
Trager, Ms. Pat             Family Support International              Washington, DC
Trice, Mr. Mike             Coastal Steel                             Chicago, IN
Truell, Ms. Joleen          Reston Railway                            Chicago, IL
Turner, Ms. Barbara         Gravely Finance Center                    Cleveland, OH
Upchurch, Ms. Holly         Sun Marketing                             Philadelphia, PA
Valeri, Mr. Marshall        SMASH Hardware Inc.                       Bozeman, MT
Vandenberg, Mr. Kurt        Northern Aircraft Division                Hawthorne, CA
Vandenberg, Ms. Susan       Paxson Autos                              Cupertino, CA
Varmha, Mr. Peter           Power Corporation                         Madison, WI
Visniski, Ms. Tracy         Washington Transit Authority              Washington, DC
Voboril, Mr. Jim            SMASH Hardware Inc.                       Bozeman, MT
Wallace, Mr. Jules          Reston Railway                            Chicago, IL
Walls, Mr. Curtis           Southern Edison Co.                       Sacramento, CA
Wang, Mr. David             Log Chemical                              Columbus, OH
Washington, Mr. Robert      Federal Lankmarks                         Washington, DC
Watts, Ms. Norma            Coastal Steel                             Chicago, IN
Wells, Mr. Roy              Gravy Finance Center                      Cleveland, OH
Williams, Mr. Gene          Snowing Petroleum                         New Orleans, LA
Williams, Mr. Gregory       US Treasury                               Washington, DC
Wilson, Mr. Vic             Gothambank                                New York, NY
Wingo, Mr. Jim              Rush Transit Comp.                        Chicago, IL
Woods, Mr. Joseph           Federal Landmarks                         Washington, DC
Wurzelbacher, Mr. Phil      Al's Discount Clothing                    Washington, DC
Young, Ms. Hedy             QA Information Systems Center             San Francisco, CA
Ziegler, Mr. David          US Express Corp.                          Fort Lauderdale, FL
;;;;
data certadv.register;
   input Student_Name $ 1-25 Course_Number 31-32 Paid $ 41;
   format course_number 2.;
   label course_number = 'Course Number'
         paid = 'Paid Status'
         student_name = 'Student Name';
   datalines;
Albritton, Mr. Bryan           1        Y
Amigo, Mr. Bill                1        N
Chodnoff, Mr. Norman           1        Y
Clark, Mr. Rich                1        Y
Crace, Mr. Ron                 1        Y
Dellmonache, Ms. Susan         1        Y
Dixon, Mr. Matt                1        Y
Edwards, Mr. Charles           1        N
Edwards, Ms. Sonia             1        Y
Elsins, Ms. Marisa F.          1        Y
Griffin, Mr. Lantz             1        Y
Hall, Ms. Sharon               1        Y
Haubold, Ms. Ann               1        N
Hodge, Ms. Rita                1        N
Knight, Ms. Susan              1        Y
Koleff, Mr. Jim                1        Y
Laiken, Mr. Jim                1        Y
McGillivray, Ms. Kathy         1        N
Merenstein, Mr. W.             1        Y
Pancoast, Ms. Jane             1        N
Sumner, Mr. Kenneth            1        Y
Washington, Mr. Robert         1        Y
Wurzelbacher, Mr. Phil         1        Y
Amigo, Mr. Bill                2        Y
Benincasa, Ms. Elizabeth       2        Y
Brown, Mr. Michael             2        Y
Divjak, Ms. Theresa            2        N
Edwards, Ms. Kathy             2        Y
Gandy, Dr. David               2        N
Hamilton, Ms. Alicia           2        Y
Harrell, Mr. Ken               2        N
Hill, Mr. Paul                 2        N
Holbrook, Ms. Amy              2        Y
James, Ms. Anne                2        Y
Kelly, Ms. Tamara              2        Y
Kling, Mr. Kelly               2        Y
Langballe, Mr. Ron             2        Y
Lewanwowski, Mr. Dale R.       2        N
Liermann, Ms. Virginia         2        Y
Nandy, Ms. Brenda              2        N
Ng, Mr. John                   2        N
Owens, Mr. David               2        Y
Shere, Mr. Brian               2        Y
Smith, Mr. Anthony             2        Y
Valeri, Mr. Marshall           2        Y
Watts, Ms. Norma               2        Y
Williams, Mr. Gene             2        N
Bills, Ms. Paulette            3        Y
Chevarley, Ms. Arlene          3        N
Clough, Ms. Patti              3        N
Crace, Mr. Ron                 3        Y
Davis, Mr. Bruce               3        Y
Elsins, Ms. Marisa F.          3        N
Gandy, Dr. David               3        Y
Gash, Ms. Hedy                 3        Y
Haubold, Ms. Ann               3        Y
Hudock, Ms. Cathy              3        Y
Kimble, Mr. John               3        N
Kochen, Mr. Dennis             3        Y
Larocque, Mr. Bret             3        Y
Licht, Mr. Bryan               3        Y
McKnight, Ms. Maureen E.       3        Y
Scannell, Ms. Robin            3        N
Seitz, Mr. Adam                3        Y
Smith, Ms. Jan                 3        N
Sulzbach, Mr. Bill             3        Y
Williams, Mr. Gene             3        Y
Bates, Ms. Ellen               4        Y
Boyd, Ms. Leah                 4        Y
Chan, Mr. John                 4        Y
Chevarley, Ms. Arlene          4        Y
Chow, Ms. Sylvia               4        N
Crace, Mr. Ron                 4        Y
Edwards, Mr. Charles           4        N
Garza, Ms. Cheryl              4        Y
Geatz, Mr. Patrick D.          4        Y
Keever, Ms. Linda              4        Y
Kelley, Ms. Gail               4        Y
Kendig, Mr. James              4        Y
Kimble, Mr. John               4        Y
Koleff, Mr. Jim                4        N
Montgomery, Mr. Jeff           4        N
Moore, Mr. John                4        Y
Page, Mr. Scott                4        Y
Parker, Mr. Robert             4        Y
Pledger, Ms. Terri             4        N
Snell, Dr. William J.          4        Y
Stackhouse, Ms. Loretta        4        Y
Sulzbach, Mr. Bill             4        Y
Swayze, Mr. Rodney             4        Y
Varmha, Mr. Peter              4        N
Visniski, Ms. Tracy            4        Y
Voboril, Mr. Jim               4        N
Ziegler, Mr. David             4        Y
Albritton, Mr. Bryan           5        Y
Babbitt, Mr. Bill              5        Y
Blayney, Ms. Vivian            5        N
Chavez, Ms. Louise             5        Y
Connick, Ms. Pat               5        Y
Davies, Ms. Leah               5        Y
Davis, Mr. Bruce               5        N
Edwards, Mr. Charles           5        Y
Edwards, Ms. Kathy             5        Y
Griffin, Mr. Jim               5        Y
Hickel, Mr. Douglas            5        N
Higgins, Ms. Anne              5        Y
Kiraly, Mr. Bill               5        Y
Lehmeyer, Ms. Jean             5        N
Lochbihler Mr. Mark            5        Y
Micheaux, Mr. John             5        Y
Montgomery, Mr. Jeff           5        N
Patterson, Mr. Greg            5        Y
Peterson, Ms. Julie            5        N
Rubin, Mr. Jimmie              5        N
Shipman, Ms. Jan               5        N
Short, Ms. Nancy               5        Y
Stewart, Ms. Lora              5        N
Sukumoljan, Mr. Robert         5        Y
Wang, Mr. David                5        Y
Abramson, Ms. Andrea           6        N
Brown, Mr. Michael             6        N
Crace, Mr. Ron                 6        N
Davis, Mr. Bruce               6        Y
Dixon, Ms. Julie               6        N
Droddy, Mr. Steve              6        N
Edmonds, Mr. Neil              6        Y
James, Ms. Anne                6        Y
Keever, Ms. Linda              6        N
Kiraly, Mr. Bill               6        Y
Kochen, Mr. Dennis             6        N
Lawee, Mr. Jackie              6        N
Ledford, Mr. Craig             6        Y
Leon, Mr. Quinton              6        Y
McGillivray, Ms. Kathy         6        Y
McLaughlin, Ms. Amy            6        Y
O'Savio, Mr. Arnold Paul       6        Y
Owens, Mr. David               6        Y
Rubin, Mr. Jimmie              6        Y
Rusnak, Ms. Mona               6        N
Seitz, Mr. Adam                6        Y
Smith, Mr. Jack                6        Y
Smith, Ms. Donna               6        Y
Trice, Mr. Mike                6        N
Voboril, Mr. Jim               6        Y
Washington, Mr. Robert         6        Y
Wells, Mr. Roy                 6        Y
Avakian, Mr. Don               7        Y
Babbitt, Mr. Bill              7        N
Bates, Ms. Ellen               7        Y
Burns, Ms. Karen               7        Y
Chan, Mr. John                 7        Y
Coley, Mr. John                7        N
Davies, Ms. Leah               7        Y
Gemelos, Mr. Jerry             7        Y
Keever, Ms. Linda              7        Y
Lawee, Mr. Jackie              7        Y
Leon, Mr. Quinton              7        Y
Montgomery, Mr. Jeff           7        Y
Paterson, Mr. Mark             7        Y
Peavey, Ms. Judith             7        Y
Sanders, Ms. Julie             7        N
Truell, Ms. Joleen             7        Y
Vandenberg, Mr. Kurt           7        N
Wilson, Mr. Vic                7        Y
Baker, Mr. Vincent             8        Y
Blayney, Ms. Vivian            8        Y
Boyd, Ms. Leah                 8        Y
Chevarley, Ms. Arlene          8        Y
Coley, Mr. John                8        Y
Crace, Mr. Ron                 8        Y
Garza, Ms. Cheryl              8        Y
Hamilton, Mr. Paul             8        Y
Huels, Ms. Mary Frances        8        Y
Kendig, Ms. Linda              8        N
Knight, Ms. Susan              8        Y
Koleff, Mr. Jim                8        Y
Leon, Mr. Quinton              8        N
Lochbihler Mr. Mark            8        Y
Nicholson, Ms. Elizabeth       8        Y
Purvis, Mr. Michael            8        N
Ramsey, Ms. Kathleen           8        N
Shipman, Ms. Jan               8        Y
Sulzbach, Mr. Bill             8        Y
Woods, Mr. Joseph              8        N
Divjak, Ms. Theresa            9        Y
Edwards, Mr. Charles           9        Y
Ferraro, Mr. Mark              9        Y
Garrett, Mr. Tom               9        N
Graf, Ms. Margaret             9        Y
Greep, Ms. Jennifer            9        Y
Griffin, Mr. Lantz             9        Y
Hamilton, Mr. Paul             9        Y
Hodge, Ms. Rita                9        Y
Holbrook, Ms. Amy              9        Y
Howell, Mr. Jody               9        N
James, Ms. Anne                9        Y
Koleff, Mr. Jim                9        Y
Kroeger, Ms. Beulah            9        N
Ledford, Mr. Craig             9        Y
Love, Ms. Cora                 9        Y
Maurus, Mr. John               9        Y
Micheaux, Mr. John             9        Y
Montgomery, Mr. Jeff           9        Y
Nandy, Ms. Brenda              9        Y
O'Savio, Mr. Arnold Paul       9        Y
Peterson, Ms. Julie            9        Y
Pilkenton, Ms. Sandra          9        N
Pressnall, Ms. Rona            9        Y
Sumner, Mr. Kenneth            9        N
Valeri, Mr. Marshall           9        Y
Wang, Mr. David                9        Y
Woods, Mr. Joseph              9        Y
Wurzelbacher, Mr. Phil         9        Y
Young, Ms. Hedy                9        Y
Abramson, Ms. Andrea          10        Y
Amigo, Mr. Bill               10        Y
Benincasa, Ms. Elizabeth      10        Y
Carty, Mr. Howard             10        Y
Coley, Mr. John               10        Y
Davis, Mr. Bruce              10        Y
Divjak, Ms. Theresa           10        Y
Gandy, Dr. David              10        Y
Gash, Ms. Hedy                10        Y
Greep, Ms. Jennifer           10        N
Harrell, Mr. Ken              10        Y
Hickel, Mr. Douglas           10        Y
Lochbihler Mr. Mark           10        Y
Love, Mr. Michael             10        Y
McCoy, Ms. Gail               10        Y
Muir, Mr. Anthony             10        Y
Peterson, Ms. Julie           10        Y
Ramsey, Ms. Kathleen          10        Y
Sankey, Mr. Ken               10        Y
Schwoebel, Mr. Roger          10        Y
Smith, Mr. Anthony            10        Y
Stewart, Ms. Lora             10        Y
Upchurch, Ms. Holly           10        N
Belles, Ms. Vicki             11        Y
Bills, Ms. Paulette           11        Y
Carty, Mr. Howard             11        Y
Cookson, Ms. Michelle         11        Y
Elsins, Ms. Marisa F.         11        Y
Garza, Ms. Cheryl             11        N
Greep, Ms. Jennifer           11        Y
Hause, Mr. Manuel             11        Y
Hudock, Ms. Cathy             11        Y
Kelly, Ms. Tamara             11        Y
Love, Mr. Michael             11        Y
Love, Ms. Cora                11        Y
McCoy, Mr. Phil               11        Y
Moorman, Mr. Christopher      11        N
Ng, Mr. John                  11        Y
Pickens, Ms. Margaret         11        N
Right, Ms. Tina               11        N
Rubin, Ms. Naree              11        Y
Sheridan, Ms. Debra           11        Y
Shew, Ms. Marguerite          11        N
Sumner, Mr. Kenneth           11        Y
Swayze, Mr. Rodney            11        N
Truell, Ms. Joleen            11        N
Upchurch, Ms. Holly           11        N
Vandenberg, Ms. Susan         11        Y
Washington, Mr. Robert        11        Y
Williams, Mr. Gregory         11        Y
Wingo, Mr. Jim                11        N
Blayney, Ms. Vivian           12        Y
Dellmonache, Ms. Susan        12        Y
Edwards, Mr. Charles          12        N
Ferraro, Mr. Mark             12        Y
Gemelos, Mr. Jerry            12        Y
Goyette, Mr. Lawrence         12        N
Griffin, Mr. Lantz            12        Y
Hickel, Mr. Douglas           12        Y
Hurt, Ms. Kristen             12        Y
Larocque, Mr. Bret            12        Y
Liermann, Ms. Virginia        12        Y
Lochbihler Mr. Mark           12        Y
Love, Ms. Cora                12        N
Nandy, Ms. Brenda             12        Y
Pickens, Mr. Phillip          12        Y
Ramsey, Ms. Kathleen          12        Y
Rubin, Ms. Naree              12        Y
Short, Ms. Nancy              12        Y
Williams, Mr. Gregory         12        Y
Woods, Mr. Joseph             12        Y
Allen, Ms. Denise             13        Y
Blayney, Ms. Vivian           13        Y
Brown, Mr. Michael            13        Y
Chavez, Ms. Louise            13        N
Cichocki, Ms. Elizabeth       13        Y
Conron, Ms. Karen B.          13        Y
Ferraro, Mr. Mark             13        Y
Fink, Mr. Anthony             13        Y
Gash, Ms. Hedy                13        Y
Graf, Ms. Margaret            13        Y
Green, Mr. Pat                13        Y
Hamilton, Mr. Paul            13        Y
Holbrook, Ms. Amy             13        Y
Johnson, Mr. Todd             13        Y
Kelly, Ms. Tamara             13        Y
Parker, Mr. Robert            13        Y
Purvis, Mr. Michael           13        Y
Ross, Ms. Cathy               13        Y
Schwoebel, Mr. Roger          13        Y
Shew, Ms. Marguerite          13        N
Smith, Mr. Anthony            13        Y
Stromness, Ms. Mary           13        N
Swayze, Mr. Rodney            13        Y
Taylor, Mr. Greg              13        Y
Trager, Ms. Pat               13        Y
Valeri, Mr. Marshall          13        Y
Williams, Mr. Gene            13        N
Wingo, Mr. Jim                13        Y
Alamutu, Ms. Julie            14        N
Avakian, Mr. Don              14        N
Chow, Ms. Sylvia              14        Y
Eckman, Mr. David             14        Y
Fletcher, Mr. Nick            14        N
Garrett, Mr. Tom              14        Y
Gemelos, Mr. Jerry            14        Y
Griffin, Mr. Jim              14        Y
Hall, Ms. Sharon              14        N
Hamlet, Ms. Mary Ellen        14        Y
Jacklin, Mr. Lantz            14        Y
Kendig, Mr. James             14        Y
Kimpel, Ms. Janet             14        Y
Kiraly, Mr. Bill              14        Y
Laiken, Mr. Jim               14        Y
McCoy, Ms. Gail               14        Y
Merenstein, Mr. W.            14        Y
Micheaux, Mr. John            14        Y
Mietlinski, Mr. Rich          14        Y
Moore, Mr. John               14        Y
Newell, Mr. Paul              14        Y
O'Manique, Mr. Jon            14        Y
O'Savio, Mr. Arnold Paul      14        Y
Pickens, Ms. Margaret         14        Y
Ray, Ms. Mary Frances         14        Y
Scannell, Ms. Robin           14        Y
Short, Ms. Nancy              14        Y
Smith, Ms. Donna              14        Y
Swayze, Mr. Rodney            14        N
Turner, Ms. Barbara           14        N
Vandenberg, Ms. Susan         14        Y
Voboril, Mr. Jim              14        Y
Wurzelbacher, Mr. Phil        14        N
Chavez, Ms. Louise            15        Y
Edwards, Ms. Kathy            15        Y
Garza, Ms. Cheryl             15        Y
Gemelos, Mr. Jerry            15        Y
Green, Mr. Pat                15        N
Hipps, Mr. Rich               15        N
Kiraly, Mr. Bill              15        Y
Knight, Ms. Susan             15        Y
Leon, Mr. Quinton             15        N
Lewanwowski, Mr. Dale R.      15        Y
McCoy, Mr. Phil               15        Y
Mikles, Ms. Wendy             15        N
Morgan, Ms. Kathy             15        N
Norton, Ms. Suzanne M.        15        Y
Ray, Ms. Mary Frances         15        Y
Right, Ms. Tina               15        N
Schier, Ms. Joan              15        Y
Smith, Mr. Anthony            15        Y
Smith, Ms. Donna              15        Y
Stebel, Mr. Thomas C.         15        Y
Voboril, Mr. Jim              15        Y
Wallace, Mr. Jules            15        Y
Williams, Mr. Gregory         15        N
Ziegler, Mr. David            15        N
Brown, Mr. Michael            16        Y
Clough, Ms. Patti             16        Y
Droddy, Mr. Steve             16        Y
Ferraro, Mr. Mark             16        Y
Garrett, Mr. Tom              16        N
Green, Mr. Pat                16        Y
Hodge, Ms. Rita               16        Y
Huels, Ms. Mary Frances       16        Y
James, Ms. Anne               16        Y
Kempster, Mr. Bob             16        Y
Kukenis, Ms. Valerie          16        Y
Lehmeyer, Ms. Jean            16        N
Lewanwowski, Mr. Dale R.      16        Y
Morgan, Mr. Tommy             16        N
Myers, Mr. Fred               16        Y
Ng, Mr. John                  16        Y
Owens, Mr. David              16        Y
Patterson, Mr. Greg           16        Y
Shere, Mr. Brian              16        N
Shew, Ms. Marguerite          16        Y
Simon, Mr. David              16        Y
Taylor, Mr. Greg              16        Y
Trager, Ms. Pat               16        Y
Truell, Ms. Joleen            16        N
Walls, Mr. Curtis             16        N
Wang, Mr. David               16        N
Woods, Mr. Joseph             16        N
Dyer, Ms. Debra               17        N
Fletcher, Mr. Nick            17        Y
Hamilton, Mr. Paul            17        N
Haubold, Ms. Ann              17        N
Holbrook, Ms. Amy             17        N
Kendig, Mr. James             17        N
Laiken, Mr. Jim               17        N
Leon, Mr. Quinton             17        Y
McGillivray, Ms. Kathy        17        Y
McLaughlin, Ms. Amy           17        Y
Moore, Mr. John               17        Y
Nandy, Ms. Brenda             17        Y
Principe, Mr. Ed              17        Y
Ray, Ms. Mary Frances         17        Y
Scannell, Ms. Robin           17        Y
Smith, Mr. Jack               17        Y
Sulzbach, Mr. Bill            17        Y
Williams, Mr. Gene            17        Y
Amigo, Mr. Bill               18        Y
Babbitt, Mr. Bill             18        Y
Bates, Ms. Ellen              18        Y
Benincasa, Ms. Elizabeth      18        Y
Blair, Mr. Paul               18        Y
Cookson, Ms. Michelle         18        Y
Dyer, Ms. Debra               18        Y
Elsins, Ms. Marisa F.         18        Y
Guay, Ms. Suzanne             18        Y
Huels, Ms. Mary Frances       18        Y
McCoy, Ms. Gail               18        Y
Parker, Mr. Robert            18        Y
Pickens, Ms. Margaret         18        Y
Ross, Ms. Cathy               18        Y
Stebel, Mr. Thomas C.         18        Y
Strah, Ms. Sonia              18        Y
Turner, Ms. Barbara           18        Y
Walls, Mr. Curtis             18        Y
Ziegler, Mr. David            18        Y
;;;;
data certadv.courses;
   input Course_Code $ 1-4 Course_Title $ 6-30 Days 32 Fee 34-37;
   format fee dollar5. days 1.;
   label course_code = 'Course Code'
         course_title = 'Description'
         days = 'Course Length'
         fee = 'Course Fee';
   datalines;
C001 Basic Telecommunications  3  795
C002 Structured Query Language 4 1150
C003 Local Area Networks       3  650
C004 Database Design           2  375
C005 Artificial Intelligence   2  400
C006 Computer Aided Design     5 1600
;;;;
data certadv.y02jan;
	input Week Sale @11 Day $9.;
	datalines;
1 1869.33 Monday
1 1689.01 Tuesday
1 2655.00 Wednesday
1 1556.23 Thursday
1 3341.11 Friday
2 2212.63 Monday
2 1701.85 Tuesday
2 1005.46 Wednesday
2 1990.86 Thursday
2 3642.53 Friday
3 1775.34 Monday
3 1639.72 Tuesday
3 2335.69 Wednesday
3 2863.82 Thursday
3 3010.17 Friday
4 1398.22 Monday
4 1330.58 Tuesday
4 1458.67 Wednesday
4 1623.42 Thursday
4 2336.00 Friday
5 2034.97 Monday
5 1803.04 Tuesday
5 1953.38 Wednesday
5 2064.67 Thursday
5 2336.44 Friday
6 1046.25 Monday
6 1334.85 Tuesday
6 1455.88 Wednesday
6 2288.30 Thursday
6 3401.68 Friday
7 1652.73 Monday
7 1987.24 Tuesday
7 1773.12 Wednesday
7 2468.81 Thursday
7 3014.25 Friday
8 1996.77 Monday
8 1843.54 Tuesday
8 1268.59 Wednesday
8 1663.84 Thursday
8 2657.44 Friday
9 1699.74 Monday
9 1798.32 Tuesday
9 1973.16 Wednesday
9 2634.84 Thursday
9 3219.98 Friday
10 1883.47 Monday
10 1432.83 Tuesday
10 1803.44 Wednesday
10 2137.49 Thursday
10 2750.70 Friday
;;;;
data certadv.revenue;
   attrib Origin length=$3;
   attrib Dest length=$3;
   attrib FlightID length=$7;
   attrib Date length=8 format=DATE9.;
   attrib Rev1st length=8;
   attrib RevBusiness length=8;
   attrib RevEcon length=8;

   infile datalines dsd;
   input
      Origin
      Dest
      FlightID
      Date
      Rev1st
      RevBusiness
      RevEcon
   ;
datalines4;
ANC,RDU,IA03400,20580,15829,28420,68688
ANC,RDU,IA03400,20592,20146,26460,72981
ANC,RDU,IA03400,20604,20146,23520,59625
ANC,RDU,IA03401,20587,15829,22540,58671
ANC,RDU,IA03401,20599,20146,22540,65826
CBR,WLG,IA10500,20582,15496,16687,28710
CBR,WLG,IA10500,20594,13708,19943,26928
CBR,WLG,IA10500,20606,16092,21164,27324
CBR,WLG,IA10501,20589,13112,16280,23760
CBR,WLG,IA10501,20601,16092,18722,30888
CCU,HKG,IA09900,20584,18306,19866,34875
CCU,HKG,IA09900,20596,18306,21252,27900
CCU,HKG,IA09900,20608,14916,21252,32400
CCU,HKG,IA09901,20591,16272,20790,32400
CCU,HKG,IA09901,20603,16272,19404,27225
CCU,PEK,IA09700,20586,19992,27832,36010
CCU,PEK,IA09700,20598,19992,23288,42381
CCU,PEK,IA09701,20581,19992,27832,39057
CCU,PEK,IA09701,20593,23324,28968,34902
CCU,PEK,IA09701,20605,18326,24992,42658
CCU,SIN,IA09300,20588,19318,23322,34086
CCU,SIN,IA09300,20600,18575,25350,29393
CCU,SIN,IA09301,20583,20061,21801,33592
CCU,SIN,IA09301,20595,19318,25857,32357
CCU,SIN,IA09301,20607,17089,25857,38285
CPT,FRA,IA08601,20591,40936,70563,107865
DEL,JRS,IA09000,20586,12372,19684,43092
DEL,JRS,IA09000,20598,12372,17575,52668
DEL,JRS,IA09001,20581,13403,18981,46854
DEL,JRS,IA09001,20593,14434,21090,50274
DEL,JRS,IA09001,20605,14434,16169,42066
DXB,FRA,IA07800,20588,18630,37224,59328
DXB,FRA,IA07800,20600,18630,40608,53148
DXB,FRA,IA07801,20583,19872,37224,60976
DXB,FRA,IA07801,20595,21114,43992,51912
DXB,FRA,IA07801,20607,18630,38070,63448
FRA,CPT,IA08501,20592,43344,86973,105468
FRA,DXB,IA07700,20587,19872,47376,58092
FRA,DXB,IA07700,20599,22356,43992,55620
FRA,DXB,IA07701,20582,23598,46530,62624
FRA,DXB,IA07701,20594,22356,41454,53972
FRA,DXB,IA07701,20606,19872,38070,60564
FRA,NBO,IA08700,20589,22694,30940,70478
FRA,NBO,IA08700,20601,21073,27625,68864
FRA,RDU,IA00400,20584,21132,30025,93015
FRA,RDU,IA00400,20596,22893,28824,87750
FRA,RDU,IA00400,20608,24654,30025,75465
FRA,RDU,IA00401,20591,19371,32427,76050
FRA,RDU,IA00401,20603,21132,28824,85410
HKG,CCU,IA10000,20586,18306,19404,32175
HKG,CCU,IA10000,20598,18984,23100,32400
HKG,CCU,IA10001,20581,17628,19404,33525
HKG,CCU,IA10001,20593,18984,23100,33975
HKG,CCU,IA10001,20605,18984,20328,30600
HKG,HND,IA10900,20588,19980,21672,36900
HKG,HND,IA10900,20600,19240,23184,33948
HKG,HND,IA10901,20583,17760,20160,32718
HKG,HND,IA10901,20595,19240,22176,36408
HKG,HND,IA10901,20607,19980,24192,30750
HKG,SYD,IA10100,20590,34074,41280,114478
HKG,SYD,IA10100,20602,34074,39990,101898
HKG,SYD,IA10101,20585,32181,39990,97495
HKG,SYD,IA10101,20597,32181,43860,107559
HND,HKG,IA11000,20580,19240,22680,34932
HND,HKG,IA11000,20592,17760,21168,36654
HND,HKG,IA11000,20604,18500,24696,30012
HND,HKG,IA11001,20587,20720,24192,32472
HND,HKG,IA11001,20599,19980,20160,34440
HND,SFO,IA11100,20582,33968,40516,107160
HND,SFO,IA11100,20594,33968,41963,137475
HND,SFO,IA11100,20606,31845,46304,121260
HND,SFO,IA11101,20589,38214,46304,118440
HND,SFO,IA11101,20601,40337,46304,133245
HNL,SFO,IA03000,20584,11856,16152,47888
HNL,SFO,IA03000,20596,10868,17498,51168
HNL,SFO,IA03000,20608,10868,16825,46248
HNL,SFO,IA03001,20591,10868,18171,48544
HNL,SFO,IA03001,20603,11856,19517,52808
JED,LHR,IA08200,20586,23161,44820,51435
JED,LHR,IA08200,20598,18285,44820,59535
JED,LHR,IA08201,20581,18285,44820,61560
JED,LHR,IA08201,20593,21942,35690,66015
JED,LHR,IA08201,20605,21942,43160,64800
JNB,LHR,IA08401,20586,34950,76224,121518
JRS,DEL,IA08900,20585,11341,18278,48564
JRS,DEL,IA08900,20597,13403,21090,43776
JRS,DEL,IA08901,20580,14434,16872,51300
JRS,DEL,IA08901,20592,11341,16169,54720
JRS,DEL,IA08901,20604,11341,21090,54378
LHR,JED,IA08100,20587,20723,40670,54270
LHR,JED,IA08100,20599,21942,42330,63990
LHR,JED,IA08101,20582,19504,37350,50625
LHR,JED,IA08101,20594,23161,46480,59535
LHR,JED,IA08101,20606,23161,38180,66015
LHR,JNB,IA08301,20587,41940,76224,111456
LHR,RDU,IA00200,20585,20800,30520,79650
LHR,RDU,IA00200,20597,19200,29430,80712
LHR,RDU,IA00201,20580,19200,26160,71154
LHR,RDU,IA00201,20592,19200,26160,73809
LHR,RDU,IA00201,20604,17600,26160,84429
NBO,FRA,IA08800,20587,19452,26520,73706
NBO,FRA,IA08800,20599,19452,32045,84466
PEK,CCU,IA09800,20582,20825,25560,41273
PEK,CCU,IA09800,20594,20825,22720,35456
PEK,CCU,IA09800,20606,23324,24424,38226
PEK,CCU,IA09801,20589,23324,27264,37949
PEK,CCU,IA09801,20601,23324,27264,40442
RDU,ANC,IA03300,20584,15829,24500,69165
RDU,ANC,IA03300,20596,18707,22540,72981
RDU,ANC,IA03300,20608,17268,29400,58671
RDU,ANC,IA03301,20591,17268,25480,76797
RDU,ANC,IA03301,20603,20146,29400,73458
RDU,FRA,IA00300,20586,21132,31226,94185
RDU,FRA,IA00300,20598,24654,30025,75465
RDU,FRA,IA00301,20581,24654,31226,72540
RDU,FRA,IA00301,20593,19371,34829,90090
RDU,FRA,IA00301,20605,21132,27623,80145
RDU,LHR,IA00100,20588,20800,32700,67968
RDU,LHR,IA00100,20600,22400,31610,77526
RDU,LHR,IA00101,20583,19200,30520,65313
RDU,LHR,IA00101,20595,17600,30520,79119
RDU,LHR,IA00101,20607,20800,25070,75933
SFO,HND,IA11200,20590,40337,49198,113505
SFO,HND,IA11200,20602,38214,50645,140295
SFO,HND,IA11201,20585,40337,47751,141000
SFO,HND,IA11201,20597,40337,46304,130425
SFO,HNL,IA02900,20580,13832,20190,42640
SFO,HNL,IA02900,20592,12844,16825,45592
SFO,HNL,IA02900,20604,11856,16152,48216
SFO,HNL,IA02901,20587,12844,16825,42640
SFO,HNL,IA02901,20599,13832,16825,45264
SIN,CCU,IA09400,20582,20804,24336,38038
SIN,CCU,IA09400,20594,16346,22308,37544
SIN,CCU,IA09400,20606,17832,25350,30628
SIN,CCU,IA09401,20589,17089,20787,38779
SIN,CCU,IA09401,20601,20061,24843,36556
SYD,HKG,IA10200,20584,34074,42570,108817
SYD,HKG,IA10200,20596,28395,38700,120768
SYD,HKG,IA10200,20608,35967,34830,123284
SYD,HKG,IA10201,20591,32181,39990,111333
SYD,HKG,IA10201,20603,34074,37410,107559
WLG,CBR,IA10600,20586,15496,17908,29106
;;;;
data certadv.ctargets;
   attrib Year length=8;
   attrib Jan length=8;
   attrib Feb length=8;
   attrib Mar length=8;
   attrib Apr length=8;
   attrib May length=8;
   attrib Jun length=8;
   attrib Jul length=8;
   attrib Aug length=8;
   attrib Sep length=8;
   attrib Oct length=8;
   attrib Nov length=8;
   attrib Dec length=8;

   infile datalines dsd;
   input
      Year
      Jan
      Feb
      Mar
      Apr
      May
      Jun
      Jul
      Aug
      Sep
      Oct
      Nov
      Dec
   ;
datalines4;
2016,192284420,86376721,28526103,260386468,109975326,102833104,196728648,236996122,112413744,125401565,72551855,136042505
2017,108645734,147656369,202158055,41160707,264294440,267135485,208694865,83456868,286846554,275721406,230488351,24901752
2018,85730444,74168740,39955768,312654811,318149340,187270927,123394421,34273985,151565752,141528519,178043261,181668256
;;;;
data certadv.expenses;
   attrib FlightID length=$8;
   attrib Date length=8 format=DATE9.;
   attrib Expenses length=8;

   infile datalines dsd;
   input
      FlightID
      Date
      Expenses
   ;
datalines4;
IA03400,20580,89155
IA03400,20592,39599
IA03400,20604,66800
IA03401,20587,33076
IA03401,20599,106032
IA10500,20582,47870
IA10500,20594,16106
IA10500,20606,29206
IA10501,20589,36028
IA10501,20601,23105
IA09900,20584,57302
IA09900,20596,4013
IA09900,20608,45662
IA09901,20591,1261
IA09901,20603,35690
IA09700,20586,73887
IA09700,20598,24281
IA09701,20581,12366
IA09701,20593,58435
IA09701,20605,12876
IA09300,20588,1200
IA09300,20600,38140
IA09301,20583,47081
IA09301,20595,9187
IA09301,20607,7020
IA08601,20591,135330
IA09000,20586,50055
IA09000,20598,10592
IA09001,20581,40542
IA09001,20593,58189
IA09001,20605,65363
IA07800,20588,53526
IA07800,20600,68259
IA07801,20583,59421
IA07801,20595,4758
IA07801,20607,119249
IA08501,20592,220266
IA07700,20587,111046
IA07700,20599,103568
IA07701,20582,22721
IA07701,20594,35768
IA07701,20606,48923
IA08700,20589,118044
IA08700,20601,30288
IA00400,20584,22754
IA00400,20596,47782
IA00400,20608,85973
IA00401,20591,25243
IA00401,20603,111484
IA10000,20586,18928
IA10000,20598,41392
IA10001,20581,34004
IA10001,20593,73228
IA10001,20605,53602
IA10900,20588,59709
IA10900,20600,72139
IA10901,20583,65168
IA10901,20595,1321
IA10901,20607,12752
IA10100,20590,11326
IA10100,20602,82918
IA10101,20585,87730
IA10101,20597,166744
IA11000,20580,76521
IA11000,20592,57428
IA11000,20604,31209
IA11001,20587,7196
IA11001,20599,67623
IA11100,20582,136366
IA11100,20594,111941
IA11100,20606,91650
IA11101,20589,5589
IA11101,20601,109002
IA03000,20584,3070
IA03000,20596,645
IA03000,20608,64552
IA03001,20591,61365
IA03001,20603,32840
IA08200,20586,53436
IA08200,20598,4647
IA08201,20581,38418
IA08201,20593,13157
IA08201,20605,61546
IA08401,20586,200962
IA08900,20585,324
IA08900,20597,55347
IA08901,20580,81810
IA08901,20592,51008
IA08901,20604,37740
IA08100,20587,70755
IA08100,20599,38436
IA08101,20582,28159
IA08101,20594,114963
IA08101,20606,4618
IA08301,20587,228761
IA00200,20585,71756
IA00200,20597,46757
IA00201,20580,21380
IA00201,20592,10399
IA00201,20604,72312
IA08800,20587,65422
IA08800,20599,109003
IA09800,20582,76750
IA09800,20594,11937
IA09800,20606,52557
IA09801,20589,69022
IA09801,20601,17768
IA03300,20584,75484
IA03300,20596,40757
IA03300,20608,27584
IA03301,20591,9143
IA03301,20603,11853
IA00300,20586,111428
IA00300,20598,53959
IA00301,20581,122441
IA00301,20593,9292
IA00301,20605,37431
IA00100,20588,41096
IA00100,20600,58541
IA00101,20583,21473
IA00101,20595,15504
IA00101,20607,42258
IA11200,20590,178573
IA11200,20602,124293
IA11201,20585,196476
IA11201,20597,69644
IA02900,20580,35539
IA02900,20592,73737
IA02900,20604,36738
IA02901,20587,49702
IA02901,20599,6174
IA09400,20582,80058
IA09400,20594,32235
IA09400,20606,25237
IA09401,20589,9714
IA09401,20601,33359
IA10200,20584,176807
IA10200,20596,122033
IA10200,20608,25537
IA10201,20591,97347
IA10201,20603,8864
IA10600,20586,15675
IA10600,20598,27220
IA10601,20581,39364
IA10601,20593,4991
;;;;
data certadv.acities;
   attrib City length=$22 label='City Where Airport is Located';
   attrib Code length=$3 label='Start Point';
   attrib Name length=$50 label='Airport Name';
   attrib Country length=$40 label='Country Where Airport is Located';

   infile datalines dsd;
   input
      City
      Code
      Name
      Country
   ;
datalines4;
Auckland,AKL,International,New Zealand
Amsterdam,AMS,Schiphol,Netherlands
"Anchorage, AK",ANC,Anchorage International Airport,USA
Stockholm,ARN,Arlanda,Sweden
Athens (Athinai),ATH,Hellinikon International Airport,Greece
"Birmingham, AL",BHM,Birmingham International Airport,USA
Bangkok,BKK,Don Muang International Airport,Thailand
"Nashville, TN",BNA,Nashville International Airport,USA
"Boston, MA",BOS,General Edward Lawrence Logan Internatio,USA
Brussels (Bruxelles),BRU,National/Zaventem,Belgium
"Canberra, Australian C",CBR,,Australia
Calcutta,CCU,Dum Dum International Airport,India
Paris,CDG,Charles de Gaulle,France
Kobenhavn (Copenhagen),CPH,Kastrup,Denmark
Cape Town,CPT,D.F. Malan,South Africa
Delhi,DEL,Indira Gandhi International Airport,India
"Dallas/Fort Worth, TX",DFW,Dallas/Fort Worth International Airport,USA
Dubai,DXB,,United Arab Emirates
Oslo,FBU,Fornebu,Norway
Roma (Rome),FCO,Leonardo da Vinci/Fiumicino,Italy
Frankfurt,FRA,Rhein-Main,Germany
"Glasgow, Scotland",GLA,Abbotsichn,United Kingdom
Geneva,GVA,Geneve-Cointrin,Switzerland
Helsinki,HEL,Vantaa,Finland
Hong Kong,HKG,Kai-Tak International Airport,Hong Kong
Tokyo,HND,Haneda,Japan
"Honolulu, HI",HNL,Honolulu International Airport,USA
"Washington, DC",IAD,Washington Dulles International Airport,USA
"Indianapolis, IN",IND,Indianapolis International Airport,USA
Jeddah,JED,King Abdul Aziz Airport,Saudi Arabia
"New York, NY",JFK,John F. Kennedy International Airport,USA
Johannesburg,JNB,Jan Smuts Airport,South Africa
Jerusalem,JRS,Atarot,Israel
"Los Angeles, CA",LAX,Los Angeles International Airport,USA
"London, England",LHR,Heathrow Airport,United Kingdom
Lisboa (Lisbon),LIS,Aeroporto da Portela de Sacavem,Portugal
Madrid,MAD,Barajas,Spain
"Kansas City, MO",MCI,Kansas City International Airport,USA
"Miami, FL",MIA,Miami International Airport,USA
"New Orleans, LA",MSY,New Orleans International Airport,USA
Nairobi,NBO,Jomo Kenyatta,Kenya
"Chicago, IL",ORD,Chicago-O'Hare International Airport,USA
Beijing (Peking),PEK,Capital,China
Praha (Prague),PRG,Ruzyne,Czech Republic
"Portland, ME",PWM,Portland International Jetport,USA
"Raleigh-Durham, NC",RDU,Raleigh-Durham International Airport,USA
"Seattle, WA",SEA,Seattle-Tacoma International Airport,USA
"San Francisco, CA",SFO,San Francisco International Airport,USA
Singapore,SIN,Changi International Airport,Singapore
"Sydney, New South Wale",SYD,Kingsford Smith,Australia
;;;;
data certadv.monthsum;
   attrib SaleMon length=$7 label='Sales Month';
   attrib RevCargo length=8 format=DOLLAR15.2;
   attrib Rev1st length=8 format=DOLLAR15.2;
   attrib RevBusiness length=8 format=DOLLAR15.2;
   attrib RevEcon length=8 format=DOLLAR15.2;
   attrib MonthNo length=8;

   infile datalines dsd;
   input
      SaleMon
      RevCargo
      Rev1st
      RevBusiness
      RevEcon
      MonthNo
   ;
datalines4;
JAN2016,171520869.1,51136353,34897844,169193900,1
JAN2017,238786807.599999,71197270,48749365,235462316,1
JAN2018,280350393,83667651,57385822,278553207,1
FEB2016,177671530.399999,52867177,36397032,175250984,2
FEB2017,215959695.5,64092727,44111168,212667536,2
FEB2018,253999924,75811358,51871453,251355652,2
MAR2016,196591378.2,58562490,40116649,193982585,3
MAR2017,239056025.55,71173645,48767636,235501953,3
MAR2018,281433310,83864006,57546222,278491696,3
APR2016,380804120.200003,113826330,77817068,375598996,4
APR2017,231609633.7,68910955,47381292,227978686,4
APR2018,272049319,81059042,55786262,269547946,4
MAY2016,196261573.201299,58604030,40112475,194336811,5
MAY2017,238245242.85,71099462,48712345,235727428,5
MAY2018,280369422,83864513,57572886,278797273,5
JUN2016,190560828.5,56741721,38819235,187727540,6
JUN2017,230952368.65,68888876,47285354,228396559,6
JUN2018,271894927,81059185,55809052,269688978,6
JUL2016,197163278.201299,58606766,40257451,193861879,7
JUL2017,239396211.7,71265477,48963239,235369298,7
JUL2018,280649618,83816720,57513302,278553244,7
AUG2016,196639501.099999,58583691,40137702,193618096,8
AUG2017,238629758.201299,71069513,48835260,235620482,8
AUG2018,281582229,83786273,57497600,277956633,8
SEP2016,190535012.499999,56702750,38989785,187695144,9
SEP2017,231186018.35,68862789,47306665,228130158,9
SEP2018,272253650,81013380,55709005,269787324,9
OCT2016,196957153.399998,58699076,40198082,194082116,10
OCT2017,238905712.4,71173722,48730203,235350192,10
OCT2018,280100981,83811034,57459052,278739086,10
NOV2016,190228066.7,56626819,38751654,187579685,11
NOV2017,231314162.65,68892713,47407571,227933862,11
NOV2018,272428947,81128123,55698892,269158794,11
DEC2016,196504412.999999,58561897,40418188,194509877,12
DEC2017,238689980.699999,71261837,48955361,236136735,12
DEC2018,272149940,81277002,55898552,269719327,12
;;;;
data certadv.dnunder;
   attrib FlightID length=$7 label='Flight Number';
   attrib RouteID length=$7 label='Route Number';
   attrib Date length=8 label='Scheduled Date of Flight' format=DATE9.;
   attrib Expenses length=8;

   infile datalines dsd;
   input
      FlightID
      RouteID
      Date
      Expenses
   ;
datalines4;
IA10200,0000102,20945,154269
IA10200,0000102,20953,175079
IA10200,0000102,20961,20041
IA10200,0000102,20969,124618
IA10304,0000103,20945,1167
IA10302,0000103,20948,836
IA10300,0000103,20951,2900
IA10304,0000103,20953,2259
IA10302,0000103,20956,1596
IA10300,0000103,20959,1831
IA10304,0000103,20961,2865
IA10302,0000103,20964,1259
IA10300,0000103,20967,622
IA10304,0000103,20969,1078
IA10302,0000103,20972,2413
IA10400,0000104,20945,495
IA10404,0000104,20947,1183
IA10402,0000104,20950,557
IA10400,0000104,20953,538
IA10404,0000104,20955,2199
IA10402,0000104,20958,292
IA10400,0000104,20961,1097
IA10404,0000104,20963,675
IA10402,0000104,20966,1533
IA10400,0000104,20969,2375
IA10404,0000104,20971,1870
IA10402,0000104,20974,599
IA10500,0000105,20951,24752
IA10500,0000105,20959,6599
IA10500,0000105,20967,14758
IA10600,0000106,20945,14986
IA10600,0000106,20953,5631
IA10600,0000106,20961,28187
IA10600,0000106,20969,59152
IA10704,0000107,20945,4846
IA10702,0000107,20948,4160
IA10700,0000107,20951,4036
IA10704,0000107,20953,6197
IA10702,0000107,20956,1265
IA10700,0000107,20959,5365
IA10704,0000107,20961,2278
IA10702,0000107,20964,3653
IA10700,0000107,20967,4706
IA10704,0000107,20969,6168
IA10702,0000107,20972,1656
IA10800,0000108,20945,667
IA10804,0000108,20947,5533
IA10802,0000108,20950,2030
IA10800,0000108,20953,451
IA10804,0000108,20955,5221
IA10802,0000108,20958,6019
IA10800,0000108,20961,4675
IA10804,0000108,20963,1190
IA10802,0000108,20966,1501
IA10800,0000108,20969,4869
IA10804,0000108,20971,1315
IA11802,0000108,20974,3720
;;;;
data certadv.flights;
   attrib flight length=$8;
   attrib temp length=8;
   attrib wspeed length=8;

   infile datalines dsd;
   input
      flight
      temp
      wspeed
   ;
datalines4;
IA2736,-8,9
IA6352,-4,16
;;;;
data certadv.contrib;
   attrib EmpID length=$6 label='Employee Identification Number' format=$6. informat=$6.;
   attrib QtrNum length=$8;
   attrib Amount length=8;

   infile datalines dsd;
   input
      EmpID:$6.
      QtrNum
      Amount
   ;
datalines4;
E00224,qtr1,12
E00224,qtr2,33
E00224,qtr3,22
E00224,qtr4,
E00367,qtr1,35
E00367,qtr2,48
E00367,qtr3,40
E00367,qtr4,30
E00441,qtr1,
E00441,qtr2,63
E00441,qtr3,89
E00441,qtr4,90
E00587,qtr1,16
E00587,qtr2,19
E00587,qtr3,30
E00587,qtr4,29
E00598,qtr1,4
E00598,qtr2,8
E00598,qtr3,6
E00598,qtr4,1
E00621,qtr1,10
E00621,qtr2,12
E00621,qtr3,15
E00621,qtr4,25
E00630,qtr1,67
E00630,qtr2,86
E00630,qtr3,52
E00630,qtr4,84
E00705,qtr1,9
E00705,qtr2,7
E00705,qtr3,49
E00705,qtr4,2
E00727,qtr1,8
E00727,qtr2,27
E00727,qtr3,25
E00727,qtr4,14
E00860,qtr1,10
E00860,qtr2,15
E00860,qtr3,6
E00860,qtr4,20
E00901,qtr1,19
E00901,qtr2,21
E00901,qtr3,3
E00901,qtr4,24
E00907,qtr1,18
E00907,qtr2,26
E00907,qtr3,46
E00907,qtr4,65
E00947,qtr1,8
E00947,qtr2,10
;;;;
data certadv.empdata;
   attrib Division length=$30 label='Division' format=$30. informat=$30.;
   attrib HireDate length=8 label='Employee Hire Date';
   attrib LastName length=$32 label='Employee Last Name' format=$32. informat=$32.;
   attrib FirstName length=$32 label='Employee First Name' format=$32. informat=$32.;
   attrib Country length=$25 label='Employee Country of Residence' format=$25. informat=$25.;
   attrib Location length=$16 label='Employee Office Location' format=$16. informat=$16.;
   attrib Phone length=$8 label='Employee Extension Number' format=$8. informat=$8.;
   attrib EmpID length=$6 label='Employee Identification Number' format=$6. informat=$6.;
   attrib JobCode length=$6 label='Job Code' format=$6. informat=$6.;
   attrib Salary length=8 label='Employee Salary' format=DOLLAR10. informat=DOLLAR10.;
   infile datalines dsd;
   input
      Division:$30.
      HireDate:BEST32.
      LastName:$32.
      FirstName:$32.
      Country:$25.
      Location:$16.
      Phone:$8.
      EmpID:$6.
      JobCode:$6.
      Salary:BEST32.
   ;
datalines4;
FLIGHT OPERATIONS,19758,MILLS,DOROTHY E,USA,CARY,2380,E00001,FLTAT3,25000
FINANCE & IT,18753,BOWER,EILEEN A.,USA,CARY,1214,E00002,FINCLK,27000
HUMAN RESOURCES & FACILITIES,19202,READING,TONY R.,USA,CARY,1428,E00003,VICEPR,120000
HUMAN RESOURCES & FACILITIES,19881,JUDD,CAROL A.,USA,CARY,2061,E00004,FACMNT,42000
AIRPORT OPERATIONS,19023,WONSILD,HANNA,DENMARK,COPENHAGEN,1086,E00005,GRCREW,19000
SALES & MARKETING,19439,ANDERSON,CHRISTOPHER,USA,CARY,1007,E00006,MKTCLK,31000
FLIGHT OPERATIONS,19440,MASSENGILL,ANNETTE M.,USA,CARY,2290,E00007,MECH01,29000
CORPORATE OPERATIONS,19733,BADINE,DAVID,CANADA,TORONTO,1000,E00008,OFFMGR,85000
FINANCE & IT,19887,DEMENT,CHARLES,USA,CARY,1506,E00009,ITPROG,34000
AIRPORT OPERATIONS,19284,FOSKEY,JERE D.,USA,CARY,1666,E00010,GRCREW,29000
FLIGHT OPERATIONS,19270,POOLE,JONI L.,USA,CARY,2594,E00011,FLTAT3,27000
SALES & MARKETING,19612,LEWIS,JOSEPH,USA,CARY,2207,E00012,MKTCLK,33000
HUMAN RESOURCES & FACILITIES,19585,DBAIBO,CATHRYN J.,USA,BOSTON,1002,E00013,RECEPT,22000
FLIGHT OPERATIONS,19852,KEARNEY,ANGELA E.,USA,CARY,2075,E00014,MECH02,19000
AIRPORT OPERATIONS,19484,BROWN,SHANNON T.,USA,CARY,1263,E00015,GRCSUP,41000
HUMAN RESOURCES & FACILITIES,19066,SIMPSON,ARTHUR P.,USA,CARY,2821,E00017,RESCLK,36000
HUMAN RESOURCES & FACILITIES,19447,CROSS,AARI Z.,USA,CARY,1459,E00018,FACMNT,33000
SALES & MARKETING,19107,DANZIN,MATHIAS,BELGIUM,BRUSSELS,1005,E00019,SALCLK,29000
HUMAN RESOURCES & FACILITIES,19710,JOHNSON,RANDALL D.,USA,CARY,1256,E00020,FACCLK,21000
SALES & MARKETING,19152,BAKER JR.,PEDRO,USA,HOUSTON,1001,E00021,SALMGR,43000
HUMAN RESOURCES & FACILITIES,19885,JOHNSON,NANCY C.,USA,CARY,1255,E00022,FACCLK,27000
FLIGHT OPERATIONS,19011,FORT,THERESA L.,USA,CARY,1172,E00023,FLTAT2,31000
FLIGHT OPERATIONS,19602,COCKERHAM,J. KEVIN,USA,CARY,1395,E00024,FLTAT3,21000
AIRPORT OPERATIONS,19339,BROCKLEBANK,ANNE V.,USA,CARY,1248,E00025,BAGCLK,23000
FINANCE & IT,19567,THOMPSON,AMY L.,USA,CARY,1516,E00026,ITSUPT,24000
FINANCE & IT,19998,BOWMAN,LYNNE C.,USA,CARY,1215,E00027,FINACT,31000
FINANCE & IT,19495,LICHTENSTEIN,MEIKE,GERMANY,FRANKFURT,1112,E00028,ITCLK,38000
AIRPORT OPERATIONS,19520,MAROON,SAMUEL PHILLIP,USA,CARY,1325,E00029,FLSCHD,17000
SALES & MARKETING,19922,BREWER,MARK,USA,AUSTIN,1009,E00030,MKTCLK,38000
FLIGHT OPERATIONS,19556,GOLDENBERG,DESIREE,USA,CARY,1741,E00031,PILOT3,28000
FINANCE & IT,19921,COUCH,VICKI A.,USA,CARY,1104,E00032,ITPROG,24000
FLIGHT OPERATIONS,19705,FISHER,ALEC,USA,CARY,1166,E00033,FLTAT2,35000
FLIGHT OPERATIONS,19980,TOMPKINS,JEFFREY J.,USA,CARY,2997,E00034,FLTAT3,28000
FINANCE & IT,19647,WEBB,JONATHAN W,USA,CARY,3115,E00035,ITSUPT,26000
FINANCE & IT,19592,REIBOLD,PETER,EUROPEAN HQ,FRANKFURT,1114,E00036,ITSUPT,20000
FINANCE & IT,19834,PEACE,NIK,UNITED KINGDOM,LONDON,1105,E00037,ITPROG,19000
HUMAN RESOURCES & FACILITIES,19826,SMITH,WILLIAM F.,USA,CARY,2853,E00038,FACCLK,20000
HUMAN RESOURCES & FACILITIES,19244,MCKINNON,VISH W.,CANADA,TORONTO,1053,E00039,FACCLK,38000
FLIGHT OPERATIONS,18730,WILLIAMS,ARLENE M.,USA,CARY,3157,E00040,FLTAT1,32000
SALES & MARKETING,19362,BRUTON,GAIL H.,CANADA,TORONTO,1008,E00041,MKTCLK,45000
AIRPORT OPERATIONS,18724,ANDERSON,GARY M.,USA,CARY,1045,E00042,BAGCLK,32000
FLIGHT OPERATIONS,19138,WIELENGA,NORMA JEAN,USA,CARY,3146,E00043,PILOT3,17000
SALES & MARKETING,19492,HALL,DREMA A.,USA,CARY,1804,E00044,SALCLK,25000
FINANCE & IT,19125,BELL,NIK,UNITED KINGDOM,LONDON,1011,E00045,FINMGR,21000
FLIGHT OPERATIONS,19000,GOODYEAR,GREGORY J.,USA,CARY,1754,E00046,FLTAT1,44000
FLIGHT OPERATIONS,19397,ECKHAUSEN,HANS,USA,CARY,1581,E00047,FLTAT3,40000
FLIGHT OPERATIONS,18724,MOELL,ESTHER,USA,CARY,2392,E00048,FLTAT3,19000
FLIGHT OPERATIONS,18758,CHASE JR.,MARJORIE J.,USA,CARY,1355,E00049,FLTAT1,29000
CORPORATE OPERATIONS,19434,DEXTER,NANCY A.,USA,PHOENIX,1000,E00050,OFFMGR,95000
FINANCE & IT,18435,LIVELY,ROBIN P.,USA,CARY,1307,E00051,ITPROG,19000
;;;;
data certadv.empdata(index=(EmpID/unique));
     set certadv.empdata;
run;
data certadv.cargorev;
   attrib Month length=8;
   attrib Date length=8;
   attrib RevCargo length=8;
   attrib Route length=$7;

   infile datalines dsd;
   input
      Month
      Date
      RevCargo
      Route
   ;
datalines4;
1,20610,2260,Route2
1,20610,220293,Route3
1,20610,4655,Route1
1,20610,4004,Route1
1,20611,8911,Route1
1,20611,102900,Route3
1,20612,1963,Route3
1,20612,3321,Route5
1,20612,2562,Route3
1,20612,9447,Route1
1,20612,47082,Route4
1,20613,4089,Route3
1,20613,1605,Route1
1,20614,1911,Route3
1,20614,7020,Route4
1,20614,6665,Route5
1,20614,5461,Route5
1,20614,5060,Route1
1,20614,2407,Route1
1,20614,53694,Route4
1,20615,5643,Route1
1,20616,4000,Route1
1,20616,120989,Route6
1,20617,7661,Route5
1,20617,5282,Route3
1,20617,3864,Route3
1,20617,190605,Route4
1,20617,2821,Route1
1,20617,4515,Route1
1,20618,2198,Route3
1,20618,4455,Route3
1,20618,21672,Route3
1,20618,5031,Route1
1,20619,43576,Route4
1,20619,5699,Route3
1,20619,3731,Route1
1,20620,4725,Route5
1,20620,71440,Route1
1,20620,7667,Route3
1,20620,4879,Route1
1,20620,3485,Route1
1,20620,2740,Route2
1,20620,44804,Route2
1,20621,2422,Route3
1,20621,3375,Route3
1,20621,4104,Route3
1,20622,2740,Route2
1,20622,3807,Route5
1,20622,5814,Route3
1,20622,49416,Route1
;;;;
data certadv.cargo15;
   attrib FlightID length=$7 label='Flight Number';
   attrib RouteID length=$7 label='Route Number';
   attrib Origin length=$3 label='Start Point';
   attrib Dest length=$3 label='Destination';
   attrib CapCargo length=8 label='Aircraft Capacity - Total Payload in Pounds' format=8. informat=8.;
   attrib Date length=8 label='Scheduled Date of Flight' format=DATE9.;
   attrib CargoWgt length=8 label='Weight of Cargo in Pounds';
   attrib CargoRev length=8 label='Revenue from Cargo' format=DOLLAR15.2;

   infile datalines dsd;
   input
      FlightID
      RouteID
      Origin
      Dest
      CapCargo:BEST32.
      Date
      CargoWgt
      CargoRev
   ;
datalines4;
IA00100,0000001,RDU,LHR,82400,20245,45600,111720
IA00100,0000001,RDU,LHR,82400,20457,44600,109270
IA00100,0000001,RDU,LHR,82400,20476,44600,109270
IA00100,0000001,RDU,LHR,82400,20489,47400,116130
IA00100,0000001,RDU,LHR,82400,20607,44200,108290
IA00101,0000001,RDU,LHR,82400,20245,48000,117600
IA00101,0000001,RDU,LHR,82400,20321,45400,111230
IA00101,0000001,RDU,LHR,82400,20344,49600,121520
IA00101,0000001,RDU,LHR,82400,20365,43000,105350
IA00101,0000001,RDU,LHR,82400,20474,47400,116130
IA00101,0000001,RDU,LHR,82400,20480,48800,119560
IA00200,0000002,LHR,RDU,82400,20292,46600,114170
IA00200,0000002,LHR,RDU,82400,20332,42800,104860
IA00200,0000002,LHR,RDU,82400,20558,44800,109760
IA00201,0000002,LHR,RDU,82400,20273,42200,103390
IA00201,0000002,LHR,RDU,82400,20292,43800,107310
IA00201,0000002,LHR,RDU,82400,20312,43000,105350
IA00201,0000002,LHR,RDU,82400,20371,43200,105840
IA00201,0000002,LHR,RDU,82400,20430,45800,112210
IA00201,0000002,LHR,RDU,82400,20467,44000,107800
IA00201,0000002,LHR,RDU,82400,20474,44400,108780
IA00201,0000002,LHR,RDU,82400,20478,47600,116620
IA00201,0000002,LHR,RDU,82400,20607,49200,120540
IA00300,0000003,RDU,FRA,82400,20270,44400,119880
IA00300,0000003,RDU,FRA,82400,20289,42800,115560
IA00300,0000003,RDU,FRA,82400,20304,45000,121500
IA00300,0000003,RDU,FRA,82400,20521,47200,127440
IA00300,0000003,RDU,FRA,82400,20530,44400,119880
IA00300,0000003,RDU,FRA,82400,20567,43800,118260
IA00301,0000003,RDU,FRA,82400,20313,44800,120960
IA00301,0000003,RDU,FRA,82400,20372,48800,131760
IA00301,0000003,RDU,FRA,82400,20450,45600,123120
IA00301,0000003,RDU,FRA,82400,20451,45400,122580
IA00301,0000003,RDU,FRA,82400,20463,43600,117720
IA00301,0000003,RDU,FRA,82400,20483,44800,120960
IA00301,0000003,RDU,FRA,82400,20558,45400,122580
IA00301,0000003,RDU,FRA,82400,20584,43400,117180
IA00301,0000003,RDU,FRA,82400,20605,48000,129600
IA00400,0000004,FRA,RDU,82400,20332,43600,117720
IA00400,0000004,FRA,RDU,82400,20429,43200,116640
IA00400,0000004,FRA,RDU,82400,20530,44400,119880
IA00400,0000004,FRA,RDU,82400,20575,49200,132840
IA00401,0000004,FRA,RDU,82400,20268,49800,134460
IA00401,0000004,FRA,RDU,82400,20572,45600,123120
IA00500,0000005,RDU,JFK,77400,20330,27000,7290
IA00500,0000005,RDU,JFK,77400,20344,26000,7020
IA00500,0000005,RDU,JFK,77400,20496,31600,8532
IA00500,0000005,RDU,JFK,77400,20539,25000,6750
IA00500,0000005,RDU,JFK,77400,20581,29600,7992
IA00501,0000005,RDU,JFK,77400,20477,33600,9072
;;;;
data certadv.cargo15(index=(FlghtDte=(flightid date)));
     set certadv.cargo15;
run;
data certadv.newcgnum;
   attrib FlightID length=$8;
   attrib RouteID length=$8;
   attrib Origin length=$8;
   attrib Dest length=$8;
   attrib CapCargo length=8;
   attrib Date length=8;
   attrib CargoWgt length=8;
   attrib CargoRev length=8;

   infile datalines dsd;
   input
      FlightID
      RouteID
      Origin
      Dest
      CapCargo
      Date
      CargoWgt
      CargoRev
   ;
datalines4;
IA00100,0000011,RDU,LHR,35055,21245,,121879.9
IA00101,0000011,LHR,RDU,35055,21321,14190,2322
IA00200,0000012,LHR,RDU,35055,21332,10102,9857.6
IA00300,0000013,RDU,FRA,35055,21289,,3973.2
IA00400,0000014,FRA,RDU,35055,21332,11770,5521.2
;;;;
data certadv.capinfo;
   attrib FlightID length=$7 label='Flight Number';
   attrib RouteID length=$7 label='Route Number';
   attrib Origin length=$3 label='Start Point';
   attrib Dest length=$3 label='Dest';
   attrib Cap1st length=8 label='Aircraft Capacity - First Class Passengers' format=8. informat=8.;
   attrib CapBusiness length=8 label='Aircraft Capacity - Business Class Passengers' format=8. informat=8.;
   attrib CapEcon length=8 label='Aircraft Capacity - Economy Class Passengers' format=8. informat=8.;

   infile datalines dsd;
   input
      FlightID
      RouteID
      Origin
      Dest
      Cap1st:BEST32.
      CapBusiness:BEST32.
      CapEcon:BEST32.
   ;
datalines4;
IA00100,0000001,RDU,LHR,14,30,163
IA00201,0000002,LHR,RDU,14,30,163
IA00300,0000003,RDU,FRA,14,30,163
IA00400,0000004,FRA,RDU,14,30,163
IA00500,0000005,RDU,JFK,16,,251
IA00600,0000006,JFK,RDU,16,,251
IA00700,0000007,RDU,SFO,16,,251
IA00800,0000008,SFO,RDU,16,,251
IA00900,0000009,RDU,LAX,16,,251
IA01000,0000010,LAX,RDU,16,,251
IA01100,0000011,RDU,ORD,12,,138
IA01200,0000012,ORD,RDU,12,,138
IA01300,0000013,RDU,IAD,12,,138
IA01400,0000014,IAD,RDU,12,,138
IA01500,0000015,RDU,SEA,16,,251
IA01600,0000016,SEA,RDU,16,,251
IA01700,0000017,SEA,SFO,12,,138
IA01800,0000018,SFO,SEA,12,,138
IA01900,0000019,RDU,BOS,12,,138
IA02000,0000020,BOS,RDU,12,,138
IA02100,0000021,RDU,DFW,12,,138
IA02200,0000022,DFW,RDU,12,,138
IA02300,0000023,RDU,BHM,12,,138
IA02400,0000024,BHM,RDU,12,,138
IA02500,0000025,RDU,IND,12,,138
IA02600,0000026,IND,RDU,12,,138
IA02700,0000027,RDU,MIA,12,,138
IA02800,0000028,MIA,RDU,12,,138
IA02900,0000029,SFO,HNL,14,30,163
IA03000,0000030,HNL,SFO,14,30,163
IA03100,0000031,SFO,ANC,16,,251
IA03200,0000032,ANC,SFO,16,,251
IA03300,0000033,RDU,ANC,14,30,163
IA03400,0000034,ANC,RDU,14,30,163
IA03500,0000035,RDU,BNA,12,,138
IA03600,0000036,BNA,RDU,12,,138
IA03700,0000037,RDU,MSY,12,,138
IA03800,0000038,MSY,RDU,12,,138
IA03900,0000039,RDU,MCI,12,,138
IA04000,0000040,MCI,RDU,12,,138
IA04100,0000041,RDU,PWM,12,,138
IA04200,0000042,PWM,RDU,12,,138
IA04300,0000043,LHR,CDG,14,,125
IA04400,0000044,CDG,LHR,14,,125
IA04500,0000045,LHR,GLA,14,,125
IA04600,0000046,GLA,LHR,14,,125
IA04700,0000047,LHR,FRA,14,,125
IA04800,0000048,FRA,LHR,14,,125
IA04900,0000049,LHR,BRU,14,,125
IA05000,0000050,BRU,LHR,14,,125
;;;;
data certadv.cap2017;
   attrib FlightID length=$7 label='Flight Number';
   attrib RouteID length=$7 label='Route Number';
   attrib Origin length=$3 label='Start Point';
   attrib Dest length=$3 label='Destination';
   attrib Cap1st length=8 label='Aircraft Capacity - First Class Passengers' format=8. informat=8.;
   attrib CapBusiness length=8 label='Aircraft Capacity - Business Class Passengers' format=8. informat=8.;
   attrib CapEcon length=8 label='Aircraft Capacity - Economy Class Passengers' format=8. informat=8.;
   attrib Date length=8 label='Scheduled Date of Flight' format=DATE9. informat=DATE9.;

   infile datalines dsd;
   input
      FlightID
      RouteID
      Origin
      Dest
      Cap1st:BEST32.
      CapBusiness:BEST32.
      CapEcon:BEST32.
      Date
   ;
datalines4;
IA00100,0000001,RDU,LHR,14,30,163,13JAN2017
IA00101,0000001,RDU,LHR,14,30,163,16JAN2017
IA00201,0000002,LHR,RDU,14,30,163,11JAN2017
IA00301,0000003,RDU,FRA,14,30,163,27JAN2017
IA00603,0000006,JFK,RDU,16,34,251,06JAN2017
IA00900,0000009,RDU,LAX,16,34,251,10JAN2017
IA00901,0000009,RDU,LAX,16,34,251,28JAN2017
IA00903,0000009,RDU,LAX,16,34,251,31JAN2017
IA01003,0000010,LAX,RDU,16,34,251,12JAN2017
IA01100,0000011,RDU,ORD,12,0,138,11JAN2017
IA01101,0000011,RDU,ORD,12,0,138,11JAN2017
IA01203,0000012,ORD,RDU,12,0,138,04JAN2017
IA01202,0000012,ORD,RDU,12,0,138,14JAN2017
IA01202,0000012,ORD,RDU,12,0,138,18JAN2017
IA01303,0000013,RDU,IAD,12,0,138,01JAN2017
IA01302,0000013,RDU,IAD,12,0,138,04JAN2017
IA01401,0000014,IAD,RDU,12,0,138,06JAN2017
IA01402,0000014,IAD,RDU,12,0,138,15JAN2017
IA01400,0000014,IAD,RDU,12,0,138,26JAN2017
IA01401,0000014,IAD,RDU,12,0,138,28JAN2017
IA01405,0000014,IAD,RDU,12,0,138,28JAN2017
IA01405,0000014,IAD,RDU,12,0,138,29JAN2017
IA01502,0000015,RDU,SEA,16,34,251,01JAN2017
IA01601,0000016,SEA,RDU,16,34,251,26JAN2017
IA01703,0000017,SEA,SFO,12,0,138,06JAN2017
IA01703,0000017,SEA,SFO,12,0,138,09JAN2017
IA01701,0000017,SEA,SFO,12,0,138,25JAN2017
IA01903,0000019,RDU,BOS,12,0,138,09JAN2017
IA02001,0000020,BOS,RDU,12,0,138,08JAN2017
IA02001,0000020,BOS,RDU,12,0,138,28JAN2017
IA02102,0000021,RDU,DFW,12,0,138,02JAN2017
IA02201,0000022,DFW,RDU,12,0,138,09JAN2017
IA02200,0000022,DFW,RDU,12,0,138,22JAN2017
IA02200,0000022,DFW,RDU,12,0,138,23JAN2017
IA02305,0000023,RDU,BHM,12,0,138,02JAN2017
IA02304,0000023,RDU,BHM,12,0,138,06JAN2017
IA02301,0000023,RDU,BHM,12,0,138,11JAN2017
IA02301,0000023,RDU,BHM,12,0,138,20JAN2017
IA02302,0000023,RDU,BHM,12,0,138,28JAN2017
IA02404,0000024,BHM,RDU,12,0,138,14JAN2017
IA02400,0000024,BHM,RDU,12,0,138,16JAN2017
IA02403,0000024,BHM,RDU,12,0,138,16JAN2017
IA02400,0000024,BHM,RDU,12,0,138,25JAN2017
IA02405,0000024,BHM,RDU,12,0,138,27JAN2017
IA02503,0000025,RDU,IND,12,0,138,21JAN2017
IA02504,0000025,RDU,IND,12,0,138,24JAN2017
IA02600,0000026,IND,RDU,12,0,138,02JAN2017
IA02605,0000026,IND,RDU,12,0,138,05JAN2017
IA02603,0000026,IND,RDU,12,0,138,16JAN2017
IA02703,0000027,RDU,MIA,12,0,138,17JAN2017
;;;;
data certadv.capacity;
   attrib FlightID length=$7 label='Flight Number';
   attrib RouteID length=$7 label='Route Number';
   attrib Origin length=$3 label='Start Point';
   attrib Dest length=$3 label='Destination';
   attrib Cap1st length=8 label='Aircraft Capacity - First Class Passengers' format=8. informat=8.;
   attrib CapBusiness length=8 label='Aircraft Capacity - Business Class Passengers' format=8. informat=8.;
   attrib CapEcon length=8 label='Aircraft Capacity - Economy Class Passengers' format=8. informat=8.;

   infile datalines dsd;
   input
      FlightID
      RouteID
      Origin
      Dest
      Cap1st:BEST32.
      CapBusiness:BEST32.
      CapEcon:BEST32.
   ;
datalines4;
IA00100,0000001,RDU,LHR,14,30,163
IA00201,0000002,LHR,RDU,14,30,163
IA00300,0000003,RDU,FRA,14,30,163
IA00400,0000004,FRA,RDU,14,30,163
IA00500,0000005,RDU,JFK,16,,251
IA00600,0000006,JFK,RDU,16,,251
IA00700,0000007,RDU,SFO,16,,251
IA00800,0000008,SFO,RDU,16,,251
IA00900,0000009,RDU,LAX,16,,251
IA01000,0000010,LAX,RDU,16,,251
IA01100,0000011,RDU,ORD,12,,138
IA01200,0000012,ORD,RDU,12,,138
IA01300,0000013,RDU,IAD,12,,138
IA01400,0000014,IAD,RDU,12,,138
IA01500,0000015,RDU,SEA,16,,251
IA01600,0000016,SEA,RDU,16,,251
IA01700,0000017,SEA,SFO,12,,138
IA01800,0000018,SFO,SEA,12,,138
IA01900,0000019,RDU,BOS,12,,138
IA02000,0000020,BOS,RDU,12,,138
IA02100,0000021,RDU,DFW,12,,138
IA02200,0000022,DFW,RDU,12,,138
IA02300,0000023,RDU,BHM,12,,138
IA02400,0000024,BHM,RDU,12,,138
IA02500,0000025,RDU,IND,12,,138
IA02600,0000026,IND,RDU,12,,138
IA02700,0000027,RDU,MIA,12,,138
IA02800,0000028,MIA,RDU,12,,138
IA02900,0000029,SFO,HNL,14,30,163
IA03000,0000030,HNL,SFO,14,30,163
IA03100,0000031,SFO,ANC,16,,251
IA03200,0000032,ANC,SFO,16,,251
IA03300,0000033,RDU,ANC,14,30,163
IA03400,0000034,ANC,RDU,14,30,163
IA03500,0000035,RDU,BNA,12,,138
IA03600,0000036,BNA,RDU,12,,138
IA03700,0000037,RDU,MSY,12,,138
IA03800,0000038,MSY,RDU,12,,138
IA03900,0000039,RDU,MCI,12,,138
IA04000,0000040,MCI,RDU,12,,138
IA04100,0000041,RDU,PWM,12,,138
IA04200,0000042,PWM,RDU,12,,138
IA04300,0000043,LHR,CDG,14,,125
IA04400,0000044,CDG,LHR,14,,125
IA04500,0000045,LHR,GLA,14,,125
IA04600,0000046,GLA,LHR,14,,125
IA04700,0000047,LHR,FRA,14,,125
IA04800,0000048,FRA,LHR,14,,125
IA04900,0000049,LHR,BRU,14,,125
IA05000,0000050,BRU,LHR,14,,125
;;;;
data certadv.westaust;
   attrib Code length=$3 label='Airport Code';
   attrib City length=$50 label='City Where Airport is Located';
   attrib Country length=$40 label='Country Where Airport is Located';
   attrib Name length=$50 label='Airport Name';

   infile datalines dsd;
   input
      Code
      City
      Country
      Name
   ;
datalines4;
AGY,"Argyle Downs, Western Australia",Australia,
ALH,"Albany, Western Australia",Australia,
BBE,"Big Bell, Western Australia",Australia,
BDW,"Bedford Downs, Western Australia",Australia,
BEE,"Beagle Bay, Western Australia",Australia,
BIW,"Billiluna Station, Western Australia",Australia,
BME,"Broome, Western Australia",Australia,
BQW,"Balgo Hills, Western Australia", Australia,
BUY,"Bunbury, Western Australia",Australia,
BVZ,"Beverley Springs, Western Australia",Australia,
BWB,"Barrow Island, Western Australia",Australia,
CBC,"Cherrabun, Western Australia",Australia,
CIE,"Collie, Western Australia",Australia,
COY,"Coolawanyah, Western Australia",Australia,
CRY,"Carlton Hill, Western Australia",Australia,
CUY,"Cue, Western Australia",Australia,
CVQ,"Carnarvon, Western Australia",Australia,
CXQ,"Christmas Creek, Western Australia",Australia,
DNM,"Denham, Western Australia",Australia,
DOX,"Dongara, Western Australia",Australia,
DRB,"Derby, Western Australia",Australia,
ENB,"Eneabba, Western Australia",Australia,
EPR,"Esperance, Western Australia",Australia,
EUC,"Eucla, Western Australia",Australia,
FIZ,"Fitzroy Crossing, Western Australia",Australia,
FOS,"Forrest, Western Australia",Australia,
FSL,"Fossil Downs, Western Australia",Australia,
GBV,"Gibb River, Western Australia",Australia,
GDD,"Gordon Downs, Western Australia",Australia,
GET,"Geraldton, Western Australia",Australia,
GLY,"Mt. Goldworthy, Western Australia",Australia,
GSC,"Gascoyne Junction, Western Australia",Australia,
HCQ,"Halls Creek, Western Australia",Australia,
HLL,"Hillside, Western Australia",Australia,
JAD,"Jandakot, Western Australia",Australia,
JFM,"Fremantle, Western Australia",Australia,
JUR,"Jurien Bay, Western Australia",Australia,
KAX,"Kalbarri, Western Australia",Australia,
KBD,"Kimberly Downs, Western Australia",Australia,
KDB,"Kambalda, Western Australia",Australia,
KGI,"Kalgoorlie, Western Australia",Australia,
KNI,"Katanning, Western Australia",Australia,
KNX,"Kununurra, Western Australia",Australia,
KTA,"Dampier, Western Australia",Australia,Karratha,
LDW,"Lansdowne Station, Western Australia",Australia,
LEA,"Learmouth (Exmouth), Western Australia",Australia,
LER,"Leinster, Western Australia",Australia,
LLL,"Lissadel, Western Australia",Australia,
LNO,"Leonora, Western Australia",Australia,
LVO,"Laverton, Western Australia",Australia,
;;;;
data certadv.newemps;
   attrib EmpID length=$6;
   attrib LastName length=$15;
   attrib Phone length=8;
   attrib Location length=$13;
   attrib Division length=$30;

   infile datalines dsd;
   input
      EmpID
      LastName
      Phone
      Location
      Division
   ;
datalines4;
E00490,CANCELLO,1015,ROME,FINANCE & IT
E00496,PRESTON,1111,LONDON,FINANCE & IT
E00499,ZILSTORFF,1087,COPENHAGEN,AIRPORT OPERATIONS
E00500,LEY,1110,FRANKFURT,FINANCE & IT
E00503,BRAMMER,1008,COPENHAGEN,SALES & MARKETING
E00514,JENSEN,1032,COPENHAGEN,AIRPORT OPERATIONS
E00515,MAGGS,1082,FRANKFURT,AIRPORT OPERATIONS
E00519,MOHRMANN,1119,FRANKFURT,AIRPORT OPERATIONS
E00530,FROMKORTH,1041,FRANKFURT,AIRPORT OPERATIONS
E00532,KOITZSCH,1095,FRANKFURT,FLIGHT OPERATIONS
E00191,GOH,1001,SINGAPORE,SALES & MARKETING
E00203,ISHII,1016,TOKYO,FINANCE & IT
E00251,TAKENAKA,1062,TOKYO,HUMAN RESOURCES & FACILITIES
E00270,YOSHIKAWA,1079,TOKYO,FLIGHT OPERATIONS
E00349,TIDBALL,1073,TOKYO,FLIGHT OPERATIONS
E00378,HIRATA,1009,TOKYO,SALES & MARKETING
E00399,NOMURA,1042,TOKYO,AIRPORT OPERATIONS
E00401,SATO,1053,TOKYO,HUMAN RESOURCES & FACILITIES
E00464,IMAKI,1012,TOKYO,FINANCE & IT
E00470,BABA,1005,TOKYO,SALES & MARKETING
E00531,LEONG,1002,SINGAPORE,HUMAN RESOURCES & FACILITIES
E00687,TANEBE,1064,TOKYO,AIRPORT OPERATIONS
E00761,WANG,1008,SINGAPORE,SALES & MARKETING
E00777,ARAI,1004,TOKYO,SALES & MARKETING
E00784,ZUSHI,1081,TOKYO,AIRPORT OPERATIONS
E00019,DANZIN,1005,BRUSSELS,SALES & MARKETING
E00059,BAUWENS,1001,BRUSSELS,SALES & MARKETING
E00068,PENDERGRASS,1060,SYDNEY,HUMAN RESOURCES & FACILITIES
E00070,TENGESDAL,1029,OSLO,HUMAN RESOURCES & FACILITIES
E00125,VRANCKX,1035,BRUSSELS,AIRPORT OPERATIONS
E00129,DIERCHX,1012,BRUSSELS,FINANCE & IT
E00131,STEENERSEN,1024,OSLO,HUMAN RESOURCES & FACILITIES
E00159,VANDENBUSSCHE,1034,BRUSSELS,AIRPORT OPERATIONS
E00228,MIDYA,1054,SYDNEY,HUMAN RESOURCES & FACILITIES
E00230,KOEKEMOER,1005,JOHANNESBURG,SALES & MARKETING
E00232,TREVEN,1006,LJUBLJANA,SALES & MARKETING
E00234,LAANTI,1013,HELSINKI,FINANCE & IT
E00253,LAHANE,1043,SYDNEY,AIRPORT OPERATIONS
E00266,TRAN,1075,SYDNEY,FLIGHT OPERATIONS
E00293,GUNDHUS,1007,OSLO,SALES & MARKETING
E00320,COOPMANS,1003,BRUSSELS,SALES & MARKETING
E00326,OSBORNE,1019,WELLINGTON,HUMAN RESOURCES & FACILITIES
E00335,RAICE,1063,SYDNEY,AIRPORT OPERATIONS
E00346,NICHOLSON,1017,WELLINGTON,HUMAN RESOURCES & FACILITIES
E00368,JONES,1040,SYDNEY,AIRPORT OPERATIONS
E00382,FORSTER,1023,SYDNEY,HUMAN RESOURCES & FACILITIES
E00389,LY,1003,HONG KONG,SALES & MARKETING
E00436,TAHTCHIEV,1028,OSLO,HUMAN RESOURCES & FACILITIES
E00449,SIU,1070,SYDNEY,FLIGHT OPERATIONS
E00450,MUSAKKA,1016,HELSINKI,FINANCE & IT
;;;;
data certadv.allemps;
   attrib EmpID length=$6;
   attrib LastName length=$15;
   attrib Phone length=$4;
   attrib Location length=$13;
   attrib Division length=$30;

   infile datalines dsd;
   input
      EmpID
      LastName
      Phone
      Location
      Division
   ;
datalines4;
E00010,FOSKEY,1666,CARY,AIRPORT OPERATIONS
E00015,BROWN,1263,CARY,AIRPORT OPERATIONS
E00025,BROCKLEBANK,1248,CARY,AIRPORT OPERATIONS
E00029,MAROON,1325,CARY,AIRPORT OPERATIONS
E00042,ANDERSON,1045,CARY,AIRPORT OPERATIONS
E00053,CURTIS,1468,CARY,AIRPORT OPERATIONS
E00056,POOLE,1068,TORONTO,AIRPORT OPERATIONS
E00062,JONES,2046,CARY,AIRPORT OPERATIONS
E00064,LOWMAN,2232,CARY,AIRPORT OPERATIONS
E00067,OJEDA,2483,CARY,AIRPORT OPERATIONS
E00069,STEWART JR.,2889,CARY,AIRPORT OPERATIONS
E00077,TRACEY,1520,CARY,AIRPORT OPERATIONS
E00078,STEVENSON,2886,CARY,AIRPORT OPERATIONS
E00079,STONE,1086,TORONTO,AIRPORT OPERATIONS
E00080,BAGGETT,1085,CARY,AIRPORT OPERATIONS
E00086,LYLE,1319,CARY,AIRPORT OPERATIONS
E00097,LUNNEY,2243,CARY,AIRPORT OPERATIONS
E00101,WALSH,3082,CARY,AIRPORT OPERATIONS
E00102,YON,3236,CARY,AIRPORT OPERATIONS
E00108,VAN DUSEN,1065,ROCKVILLE,AIRPORT OPERATIONS
E00111,HOTARD,1236,CARY,AIRPORT OPERATIONS
E00115,BAILEY,1087,CARY,AIRPORT OPERATIONS
E00119,REID,1433,CARY,AIRPORT OPERATIONS
E00121,SWEETLAND,2930,CARY,AIRPORT OPERATIONS
E00123,SCHWAB,1468,CARY,AIRPORT OPERATIONS
E00124,FIALA,1633,CARY,AIRPORT OPERATIONS
E00128,DAURITY,1119,CARY,AIRPORT OPERATIONS
E00138,RAY,2640,CARY,AIRPORT OPERATIONS
E00146,BROWNRIGG,1268,CARY,AIRPORT OPERATIONS
E00153,WALTERS,3084,CARY,AIRPORT OPERATIONS
E00155,BROWNING,1267,CARY,AIRPORT OPERATIONS
E00157,MUSISA,2436,CARY,AIRPORT OPERATIONS
E00158,DANA,1117,CARY,AIRPORT OPERATIONS
E00160,COX,1441,CARY,AIRPORT OPERATIONS
E00162,KEA,1265,CARY,AIRPORT OPERATIONS
E00164,SMITH,1085,TORONTO,AIRPORT OPERATIONS
E00174,BLAHUNKA,1039,CARY,AIRPORT OPERATIONS
E00177,NEWELL,1067,AUSTIN,AIRPORT OPERATIONS
E00185,BASS,1120,CARY,AIRPORT OPERATIONS
E00189,LAIR,1289,CARY,AIRPORT OPERATIONS
E00196,KELLY,1268,CARY,AIRPORT OPERATIONS
E00201,SMITH,2844,CARY,AIRPORT OPERATIONS
E00206,MURDOCK,2432,CARY,AIRPORT OPERATIONS
E00210,MACKENZIE,2249,CARY,AIRPORT OPERATIONS
E00213,DICKEY,1519,CARY,AIRPORT OPERATIONS
E00226,BAUCOM,1124,CARY,AIRPORT OPERATIONS
E00231,SPENCER,2868,CARY,AIRPORT OPERATIONS
E00236,BAILEY,1088,CARY,AIRPORT OPERATIONS
E00243,FILIPOWSKI,1635,CARY,AIRPORT OPERATIONS
E00249,YUAN,3241,CARY,AIRPORT OPERATIONS
;;;;
data certadv.one;
   input x @3 a $3-4;
datalines;
1 a
2 b
4 d
;;;;
data certadv.two;
input x @3 b $3-4;
datalines;
2 x
3 y
5 v
;;;;
data certadv.three;
   input X @3 A $3-4;
datalines;
1 a1
1 a2
2 b1
2 b2
4 d
;;;;
data certadv.four;
   input X @3 B $3-4;
datalines;
2 x1
2 x2
3 y
5 v
;;;;
data certadv.five;
input X @3 A $3-4;
datalines;
1 a 
2 b
3 c
;;;;
data certadv.six;
input X @3 B $3-4;
datalines;
1 x
2 y
3 z
;;;;
data certadv.store1;
input Wk Sales;
format Sales dollar8.2;
datalines;
1 515.07
2 772.29
3 888.88
4 1000.01
;;;;
data certadv.store2;
input Wk Sales;
format Sales dollar8.2;
datalines;
1 1368.99
2 1506.23
3 1200.57
4 1784.11
5 43.00
;;;;
data certadv.table1;
input G3 @4 Z $4-5;
datalines;
89 FL
46 UI
47 BA
;;;;
data certadv.table2;
input G3 @4 R $4-5;
datalines;
46 BC
85 FL
99 BA
;;;;
data certadv.wchill;
   attrib TmpNeg10 length=8;
   attrib TempNeg5 length=8;
   attrib Temp0 length=8;
   attrib Temp5 length=8;
   attrib Temp10 length=8;
   attrib Temp15 length=8;
   attrib Temp20 length=8;
   attrib Temp25 length=8;
   attrib Temp30 length=8;

   infile datalines dsd;
   input
      TmpNeg10
      TempNeg5
      Temp0
      Temp5
      Temp10
      Temp15
      Temp20
      Temp25
      Temp30
   ;
datalines4;
-22,-16,-11,-5,1,7,13,19,25
-28,-22,-16,-10,-4,3,9,15,21
-32,-26,-19,-13,-7,0,6,13,19
-35,-29,-22,-15,-9,-2,4,11,17
-37,-31,-24,-17,-11,-4,3,9,16
-39,-33,-26,-19,-12,-5,1,8,15
-41,-34,-27,-21,-14,-7,0,7,14
-43,-36,-29,-22,-15,-8,-1,6,13
;;;;
data certadv.salesstaff;
  infile datalines dsd truncover;
  input EmployeeID:12. JobTitle:$25. Salary:DOLLAR12. Gender:$6. BirthDate:DATE9. EmpHireDate:DATE9. EmpTermDate:DATE9. ManagerID:12. SSN:$16. EmployeeName:$40.;
  format EmployeeID 12. Salary DOLLAR12. BirthDate DATE9. EmpHireDate DATE9. EmpTermDate DATE9. ManagerID 12.;
  label EmployeeID="Employee ID" JobTitle="Employee Job Title" Salary="Employee Annual Salary" Gender="Employee Gender" BirthDate="Employee Birth Date" EmpHireDate="Employee Hire Date" EmpTermDate="Employee Termination Date" ManagerID="Manager for Employee";
datalines4;
120121,Sales Rep. II,"$26,600",Female,02AUG1948,01JAN1978,,120102,42-8321-982,"Elvish, Irenie"
120134,Sales Rep. II,"$28,015",Male,06JUN1953,01JAN1978,30JUN2010,120102,905-76-7767,"Shannan, Sian"
120151,Sales Rep. II,"$26,520",Female,21NOV1948,01JAN1978,,120103,798-16-4924,"Phaiyakounh, Julianna"
120154,Sales Rep. III,"$30,490",Female,20JUL1948,01JAN1978,,120102,534-14-1428,"Hayawardhana, Caterina"
120166,Sales Rep. IV,"$30,660",Male,14JUN1948,01JAN1978,31AUG2010,120102,878-79-9390,"Nowd, Fadi"
120172,Sales Rep. III,"$28,345",Male,01APR1948,01JAN1978,,120102,801-5A-3640,"Comber, Edwin"
120174,Sales Rep. I,"$26,850",Female,10JAN1948,01JAN1978,30OCT2009,120102,693-17-9406,"Simms, Doungkamol"
121018,Sales Rep. II,"$27,560",Female,03JAN1948,01JAN1978,30APR2007,121144,712-79-3016,"Magolan, Julienne"
121035,Sales Rep. II,"$26,460",Male,25MAR1948,01JAN1978,,121144,305-03-6563,"Blackley, James"
121041,Sales Rep. II,"$26,120",Female,04FEB1948,01JAN1978,,121144,114-96-2569,"Wetherington, Jaime"
121060,Sales Rep. III,"$28,800",Female,08JUN1948,01JAN1978,,121143,749-47-4742,"Spofford, Elizabeth"
121066,Sales Rep. II,"$27,250",Female,23AUG1948,01JAN1978,31OCT2009,121145,915-59-7961,"Norman, Ceresh"
121073,Sales Rep. I,"$27,100",Male,15MAY1953,01JAN1978,,121145,219-68-2436abc,"Court, Donald"
121075,Sales Rep. II,"$28,395",Female,23DEC1948,01JAN1978,,121145,161-74-5004,"Sugg, Kasha"
121086,Sales Rep. I,"$26,820",Male,16DEC1948,01JAN1978,,121143,248-50-7517,"Plybon, John-Michael"
121138,Sales Rep. I,"$27,265",Male,28FEB1953,01JAN1978,,121145,424-44-6422,"Tolley, Hershell"
120167,Sales Rep. I,"$25,185",Female,04MAY1958,01FEB1978,31MAR2010,120102,139-34-1780,"Tilley, Kimiko"
121053,Sales Rep. III,"$29,955",Female,23SEP1948,01FEB1978,,121143,973-70-5198,"Mcdade, Tywanna"
120178,Sales Rep. II,"$26,165",Male,23NOV1958,01APR1978,,120102,276-86-7310,"Plested, Billy"
121089,Sales Rep. II,"$28,095",Male,21AUG1958,01JUL1978,31OCT2010,121143,963-87-3695,"Sauder, Gregory"
121135,Sales Rep. I,"$27,010",Female,07JUN1958,01AUG1978,,121145,075-30-2918,"Ruta, Tammy"
120160,Sales Rep. I,"$27,115",Male,09SEP1958,01OCT1978,,120102,421-02-5121,"Segrave, Chuck"
121044,Sales Rep. I,"$25,660",Male,11DEC1958,01AUG1979,,121144,045-87-4776,"Abbott, Ray"
121025,Sales Rep. II,"$28,295",Male,10OCT1953,01SEP1979,,121144,438-56-4418,"Cassey, Barnaby"
121081,Sales Rep. III,"$30,235",Female,28MAR1953,01APR1980,,121143,,"Knudson, Susie"
121100,Sales Rep. II,"$28,135",Male,27APR1953,01APR1980,,121143,737-47-5975,"Cormell, Tzue-Ing"
121054,Sales Rep. III,"$29,805",Male,12NOV1958,01NOV1980,,121143,864-48-5995,"Pulliam, Daniel"
120173,Sales Rep. I,"$26,715",Male,23FEB1958,01JUN1981,31JUL2008,120102,546-22-9687,"Osborn, Hernani"
121071,Sales Rep. III,"$28,625",Male,10SEP1963,01SEP1981,,121145,556-65-5330,"Hoppmann, John"
121082,Sales Rep. III,"$28,510",Male,05JUL1953,01OCT1981,,121143,609-81-9148,"Debank, Richard"
120148,Sales Rep. III,"$28,480",Male,13SEP1953,01JUN1982,,120103,510-00-1866,"Zubak, Michael"
120122,Sales Rep. II,"$27,475",Female,27JUL1958,01JUL1982,,120102,089-47-5114,"Ngan, Christina"
121094,Sales Rep. I,"$26,555",Male,07JAN1958,01SEP1982,,121143,967-49-0193,"Tate, Larry"
120132,Sales Rep. III,"$28,525",Female,05APR1953,01OCT1982,,120102,456-22-3493,"Kaiser, Fancine"
121051,Sales Rep. I,"$26,025",Female,02MAY1953,01NOV1982,,121143,968-92-3216,"Myers, Glorina"
121078,Sales Rep. I,"$27,485",Male,01MAY1953,01NOV1982,,121143,242-70-4182,"Wende, Lionel"
120180,Sales Rep. II,"$26,970",Male,27JUN1958,01DEC1982,,120102,918-93-7071,"George, Vino"
120124,Sales Rep. I,"$26,480",Male,13MAY1963,01MAR1983,,120102,097-92-8395,"Daymond, Lucian"
120125,Sales Rep. IV,"$32,040",Male,06DEC1958,01MAR1983,31JUL2008,120102,257-58-1087,"Hofmeister, Fong"
121083,Sales Rep. I,"$27,245",Female,11MAR1963,01MAR1983,,121143,008-09-5291,"Sutton, Tingmei"
121090,Sales Rep. I,"$26,600",Female,19JUN1958,01FEB1984,,121143,607-53-3101,"Klibbe, Betty"
121039,Sales Rep. II,"$27,460",Male,03JUN1958,01MAY1984,,121144,561-54-0481,"Washington, Donald"
120146,Sales Rep. I,"$25,985",Male,02OCT1963,01AUG1984,30SEP2009,120103,713-92-9598,"Cederlund, Wendall"
121057,Sales Rep. I,"$25,125",Male,26DEC1963,01DEC1984,,121143,007-21-6147,"Voron, Tachaun"
121059,Sales Rep. II,"$27,425",Female,25OCT1963,01APR1985,31DEC2007,121143,107-05-5563,"Carhide, Jacqulin"
120164,Sales Rep. II,"$27,450",Female,26NOV1963,01FEB1986,,120102,347-93-6206,"Stamalis, Ranj"
120150,Sales Rep. III,"$29,965",Male,09JUL1958,01AUG1986,30APR2008,120103,234-49-7560,"Filo, John"
120143,Sales Rep. II,"$26,790",Male,17MAY1963,01OCT1986,,120103,255-77-5079,"Sloey, Phu"
121040,Sales Rep. III,"$29,525",Female,06JUL1963,01NOV1986,,121144,985-86-9431,"Darrohn, Brienne"
121076,Sales Rep. II,"$26,685",Male,09OCT1968,01JAN1987,31MAY2008,121143,389-24-3331,"Cobb, Micah"
121061,Sales Rep. III,"$29,815",Male,16JUL1958,01JUL1988,,121143,634-40-1176,"Hassam, Lauris"
120145,Sales Rep. II,"$26,060",Male,22JAN1968,01JUN1989,,120103,124-00-2425,"Aisbitt, Sandy"
121031,Sales Rep. III,"$28,060",Male,09JUL1968,01AUG1989,,121144,381-39-1694,"Filan, Scott"
120123,Sales Rep. I,"$26,190",Female,28SEP1968,01OCT1989,31JAN2009,120102,383-19-3715,"Hotstone, Kimiko"
120129,Sales Rep. III,"$30,070",Male,22NOV1968,01OCT1989,31MAR2007,120102,445-82-8341,"Roebuck, Alvin"
121104,Sales Rep. II,"$28,315",Female,12NOV1968,01APR1990,31JAN2006,121143,061-33-7488,"Johnson, Leoma"
120159,Sales Rep. IV,"$30,765",Female,24FEB1968,01JUL1990,,120102,534-77-3294,"Phoumirath, Lynelle"
120158,Sales Rep. III,"$36,605",Male,14JUL1968,01JUL1991,31AUG2009,120102,977-60-2710,"Pilgrim, Daniel"
121139,Sales Rep. II,"$27,700",Female,19AUG1963,01JUL1991,,121145,451-61-9583,"Mckee, Diosdado"
121080,Sales Rep. I,"$32,235",Male,24JAN1963,01SEP1991,,121143,086-57-3574,"Chinnis, Kumar"
121074,Sales Rep. I,"$26,990",Male,01MAR1963,01OCT1992,,121145,855-53-1211,"Michonski, Eric"
121091,Sales Rep. II,"$27,325",Male,19FEB1973,01JAN1993,,121143,882-12-1413,"Kadiri, Ernest"
121023,Sales Rep. I,"$26,010",Male,13MAR1968,01MAY1993,31AUG2009,121144,520-53-3109,"Fuller, Shawn"
121027,Sales Rep. II,"$26,165",Male,05MAY1968,01DEC1993,,121144,829-83-4727,"Rudder, Allan"
121029,Sales Rep. I,"$27,225",Male,22DEC1968,01DEC1993,,121144,153-16-2789,"Mcelwee, Kuo-Chung"
121109,Sales Rep. I,"$26,035",Male,05NOV1973,01MAY1994,,121143,481-31-7308,"Boulus, Harold"
121069,Sales Rep. II,"$26,195",Male,19MAR1973,01OCT1994,,121145,872-69-3273,"Lapsley, Jason"
120163,Sales Rep. II,"$26,735",Male,22MAY1968,01JAN1995,,120102,706-28-4290,"Magrath, Brett"
121084,Sales Rep. I,"$22,710",Male,16AUG1968,01JAN1995,,121143,534-92-2128,"Ould, Tulsidas"
121095,Sales Rep. II,"$28,010",Female,14APR1973,01JUL1995,,121143,175-95-9594,"Kratzke, Sara"
121064,Sales Rep. I,"$25,110",Male,28JAN1968,01SEP1995,,121145,163-54-3966,"Polky, Asishana"
121043,Sales Rep. II,"$28,225",Female,09NOV1973,01MAR1996,,121144,060-88-3887,"Kagarise, Sigrid"
121068,Sales Rep. II,"$27,550",Male,02DEC1973,01SEP1996,,121145,110-80-4309,"Osuba, Salaheloin"
120170,Sales Rep. III,"$28,830",Male,25FEB1978,01OCT1996,31OCT2010,120102,574-43-1404,"Kingston, Alban"
120149,Sales Rep. I,"$26,390",Female,21NOV1978,01JAN1997,,120103,905-60-3585,"Chantharasy, Judy"
121045,Sales Rep. II,"$28,560",Female,13JUN1968,01JAN1998,29FEB2008,121143,788-63-2249,"Hampton, Cascile"
121093,Sales Rep. I,"$27,410",Male,18JUL1968,01JAN1998,30JUN2007,121143,482-57-1127,"Vasconcellos, Carl"
121021,Sales Rep. IV,"$32,985",Female,10DEC1978,01MAR1998,,121144,337-71-9456,"Farren, Priscilla"
121096,Sales Rep. I,"$26,335",Male,18MAY1973,01MAY1999,,121143,810-60-4039,"Newstead, Robert"
121097,Sales Rep. II,"$26,830",Female,23OCT1978,01OCT1999,,121143,hello219-68-1098,"Chernega, Willeta"
121106,Sales Rep. I,"$25,880",Male,02FEB1973,01FEB2000,,121143,206-54-7999,"Hilburger, James"
120135,Sales Rep. IV,"$32,490",Male,26JAN1973,01OCT2001,30APR2008,120102,967-44-0288,"Platts, Alexei"
121079,Sales Rep. I,"$25,770",Male,03JUN1978,01NOV2001,,121143,369-24-2683,"Mees, Azmi"
120153,Sales Rep. I,"$27,260",Female,07MAY1983,01JAN2002,31JAN2010,120102,117-57-5009,"Waal, Samantha"
120177,Sales Rep. III,"$28,745",Female,05APR1983,01FEB2002,,120102,349-07-2227,"Kierce, Franca"
120127,Sales Rep. II,"$28,100",Female,04JAN1983,01NOV2002,,120102,036-29-9667,"Clarkson, Sharryn"
121087,Sales Rep. II,"$28,325",Female,07DEC1978,01MAR2003,31MAR2010,121143,788-14-2460,"O'Suilleabhain, Virtina"
121042,Sales Rep. III,"$28,845",Male,04APR1983,01NOV2003,,121144,888-84-0152,"Robbin-Coker, Joseph"
121099,Sales Rep. IV,"$32,725",Male,19MAR1983,01MAY2004,,121143,658-54-7772,"Mrvichin, Royall"
121030,Sales Rep. I,"$26,745",Male,12NOV1983,01FEB2005,,121144,523-63-5913,"Areu, Jeryl"
121140,Sales Rep. I,"$26,335",Male,23JAN1983,01APR2005,31JAN2010,121145,084-08-6174,"Briggi, Saunders"
121022,Sales Rep. IV,"$32,210",Male,28OCT1983,01FEB2006,31AUG2008,121144,355-45-0392,"Stevens, Robert"
121037,Sales Rep. III,"$28,310",Male,12JUN1978,01MAR2006,,121144,295-70-7059,"Miketa, Muthukumar"
121020,Sales Rep. IV,"$31,750",Female,23FEB1988,01MAY2006,,121144,703-63-9068,"Ridley, Cherda"
121092,Sales Rep. I,"$25,680",Female,08MAR1978,01AUG2006,,121143,447-78-9329,"Pritt, Gynell"
121058,Sales Rep. I,"$26,270",Male,12JUL1978,01OCT2006,,121143,821-15-1683,"Kohake, Del"
121136,Sales Rep. I,"$27,460",Female,15JUL1978,01DEC2006,30SEP2008,121145,954-18-9609,"Galarneau, Lesia"
120131,Sales Rep. I,"$26,910",Male,25SEP1983,01JAN2007,,120102,039-11-6094,"Surawski, Marinus"
121105,Sales Rep. III,"$29,545",Female,09MAY1983,01JAN2007,,121143,085-13-8459,"Savacool, Jessica"
120136,Sales Rep. I,"$26,605",Male,16SEP1983,01FEB2007,,120102,737-35-1762,"Leyden, Atul"
121056,Sales Rep. II,"$28,325",Female,05JUL1988,01MAY2007,,121143,823-65-9311,"Lyszyk, Stacey"
121036,Sales Rep. I,"$25,965",Female,18JUL1992,01OCT2007,31OCT2009,121144,314-13-2259,"Mesley, Teresa"
120179,Sales Rep. III,"$28,510",Male,15MAR1978,01JAN2008,31AUG2008,120102,728-25-9828,"Wills, Matsuoka"
121024,Sales Rep. II,"$26,600",Male,21SEP1988,01MAY2008,,121144,716-97-6713,"Westlund, Michael"
121019,Sales Rep. IV,"$31,320",Male,25JUN1990,01JUN2008,31JUL2009,121144,027-00-3578,"Desanctis, Scott"
121033,Sales Rep. III,"$29,775",Female,06NOV1990,01JUN2008,,121144,274-77-8534,"Snitzer, Kristie"
121072,Sales Rep. I,"$26,105",Male,10JAN1983,01SEP2008,31OCT2009,121145,802-74-3703,"North, Christer"
120152,Sales Rep. I,"$26,515",Male,01MAY1983,01APR2009,,120102,148-75-5338,"Dives, Sean"
121063,Sales Rep. II,"$35,990",Male,27JUL1983,01AUG2009,,121145,729-96-4035,"Kinol, Regi"
120162,Sales Rep. I,"$27,215",Male,05SEP1992,01FEB2010,,120102,943-43-0183,"Scordia, Randal"
121070,Sales Rep. III,"$29,385",Female,04NOV1988,01FEB2010,,121145,728-21-7433,"Holthouse, Agnieszka"
120137,Sales Rep. III,"$29,715",Female,12MAR1983,01MAR2010,,120102,402-94-7709,"Iyengar, Marina"
120156,Sales Rep. I,"$26,445",Female,01SEP1992,01MAR2010,,120102,772-99-2367,"Snellings, Gerry"
120165,Sales Rep. I,"$27,050",Male,19MAR1988,01MAR2010,,120102,181-00-5355,"Pretorius, Tadashi"
121032,Sales Rep. IV,"$31,335",Male,24FEB1992,01MAR2010,,121144,910-64-2664,"Smith, Nasim"
121067,Sales Rep. IV,"$31,865",Female,18JAN1990,01MAR2010,01SEP2010,121145,294-60-9411,"Macnair, Jeanilla"
120155,Sales Rep. III,"$29,990",Female,22APR1988,01APR2010,,120102,640-85-7012,"James, Narelle"
121026,Sales Rep. IV,"$31,515",Male,08NOV1990,01APR2010,,121144,162-30-9249,"Jaime, Terrill"
121065,Sales Rep. III,"$28,040",Female,05SEP1988,01APR2010,,121145,557-40-7901,"Malta, Corneille"
121137,Sales Rep. I,"$27,055",Male,18JAN1992,01APR2010,,121145,876-12-1631,"Boocks, Michael. R."
120130,Sales Rep. I,"$26,955",Male,14DEC1988,01MAY2010,,120102,143-12-4676,"Lyon, Kevin"
120141,Sales Rep. II,"$27,465",Female,12MAR1992,01MAY2010,,120103,283-90-3049,"Liebman, Amanda"
120169,Sales Rep. III,"$28,135",Male,02JAN1988,01MAY2010,,120102,966-26-7530,"Tannous, Cos"
121098,Sales Rep. I,"$27,475",Male,22MAR1992,01MAY2010,,121143,080-66-5221,"Heatwole, Hal"
121102,Sales Rep. I,"$27,115",Female,26JUN1983,01JUN2010,,121143,657-70-9638,"Flammia, Rocheal"
120138,Sales Rep. I,"$25,795",Female,11JUL1983,01JUL2010,,120102,373-16-4566,"Duckett, Shani"
120142,Sales Rep. III,"$29,695",Male,14JUN1990,01JUL2010,,120103,350-61-1042,"Eastley, Vincent"
121046,Sales Rep. I,"$25,845",Male,07SEP1988,01JUL2010,01JAN2011,121143,921-73-4364,"Mandzak, Roger"
121107,Sales Rep. IV,"$31,380",Female,24APR1990,01JUL2010,,121143,778-29-5999,"Anger, Rose"
120126,Sales Rep. II,"$26,780",Male,20SEP1992,01AUG2010,,120102,088-24-9595,"Denny, Satyakam"
121038,Sales Rep. I,"$25,285",Male,13FEB1992,01AUG2010,01FEB2011,121144,366-10-0075,"Anstey, David"
121055,Sales Rep. III,"$30,185",Male,08JAN1992,01AUG2010,,121143,174-95-3655,"Davis, Clement"
121062,Sales Rep. IV,"$30,305",Female,28OCT1988,01AUG2010,,121145,957-64-2816,"Armant, Debra"
120139,Sales Rep. II,"$26,810",Female,18AUG1990,01SEP2010,,120102,327-84-0220,"Wilson, Fang"
120171,Sales Rep. II,"$26,205",Female,19JUL1988,01SEP2010,,120102,314-53-2123,"Moody, Alena"
121047,Sales Rep. I,"$25,820",Female,26NOV1983,01SEP2010,01MAR2011,121143,856-23-7556,"Grzebien, Karen"
121048,Sales Rep. I,"$26,560",Female,24JUN1988,01SEP2010,01MAR2011,121143,410-21-8164,"Clark, Lawrie"
121103,Sales Rep. I,"$27,260",Male,28APR1992,01SEP2010,,121143,862-19-2330,"Farnsworth, Brian"
120133,Sales Rep. II,"$27,440",Female,22APR1990,01OCT2010,,120102,088-57-9593,"Soltau, Petrea"
120140,Sales Rep. I,"$26,970",Male,03AUG1992,01OCT2010,,120103,510-27-7886,"Minas, Michael"
120144,Sales Rep. III,"$30,265",Male,07MAR1990,01OCT2010,,120103,436-40-3617,"Barbis, Viney"
120147,Sales Rep. II,"$26,580",Female,19JAN1992,01OCT2010,,120103,002-76-2169,"Rusli, Skev"
120161,Sales Rep. III,"$30,785",Female,07MAR1992,01OCT2010,,120102,493-21-1108,"Martines, Rosette"
120175,Sales Rep. I,"$25,745",Male,18AUG1992,01OCT2010,,120102,602-65-4238,"Conolly, Andrew"
121077,Sales Rep. III,"$28,585",Male,05SEP1988,01OCT2010,,121143,445-56-8520,"Smotherly, Bryce"
120128,Sales Rep. IV,"$30,890",Female,14JUL1990,01NOV2010,,120102,107-58-5960,"Kletschkus, Monica"
120168,Sales Rep. I,"$25,275",Female,24MAR1988,01NOV2010,,120102,315-91-4521,"Barcoe, Selina"
120176,Sales Rep. I,"$26,095",Male,09NOV1990,01NOV2010,,120102,248-57-5992,"Pa, Koavea"
121028,Sales Rep. I,"$26,585",Male,27APR1992,01NOV2010,,121144,732-94-3985,"Smades, William"
121052,Sales Rep. II,"$26,900",Male,09JAN1990,01NOV2010,,121143,063-51-7196,"Fay, Richard"
121101,Sales Rep. I,"$25,390",Female,28AUG1990,01NOV2010,,121143,428-59-7468,"Buckner, Burnetta"
121108,Sales Rep. I,"$25,930",Female,04JUL1992,01NOV2010,01MAY2011,121143,076-69-8811,"Levi, Libby"
120157,Sales Rep. II,"$27,860",Male,21FEB1990,01DEC2010,,120102,546-36-2811,"Karavdic, Leonid"
120198,Sales Rep. III,"$28,025",Female,21JAN1992,01DEC2010,,120103,619-59-4011,"Body, Meera"
121049,Sales Rep. I,"$26,930",Female,14FEB1990,01DEC2010,,121143,008-90-9458,"Bataineh, Perrior"
121050,Sales Rep. II,"$26,080",Female,12JAN1990,01DEC2010,,121143,941-62-4741,"Capristo-Abramczyk, Patricia"
120146,Sales Rep. II,"$27,284",Male,02OCT1963,01JAN2011,,120103,713-92-9598,"Cederlund, Wendall"
121034,Sales Rep. II,"$27,110",Male,23AUG1992,01JAN2011,,121144,590-47-7664,"Kirkman, John"
121085,Sales Rep. IV,"$32,235",Male,12NOV1990,01JAN2011,,121143,157-59-1652,"Huslage, Rebecca"
121088,Sales Rep. I,"$27,240",Male,10JUN1992,01JAN2011,,121143,701-31-9529,"Kernitzki, Momolu"
120134,Sales Rep. II,"$29,416",Male,06JUN1953,01DEC2011,,120102,905-76-7767,"Shannan, Sian"
120166,Sales Rep. II,"$32,193",Male,14JUN1948,01DEC2011,,120102,878-79-9390,"Nowd, Fadi"
120167,Sales Rep. II,"$26,444",Female,04MAY1958,01DEC2011,,120102,139-34-1780,"Tilley, Kimiko"
;;;;
data certadv.airports;
   attrib ID length=3 label='Continent ID';
   attrib City length=$22 label='City Where Airport is Located';
   attrib Code length=$3 label='Airport Code';
   attrib AName length=$50 label='Airport Name';
   attrib Country length=$40;

   infile datalines dsd;
   input
      ID
      City
      Code
      AName
      Country
   ;
datalines4;
96,Auckland,AKL,International,New Zealand
93,Amsterdam,AMS,Schiphol,Netherlands
91,"Anchorage, AK",ANC,Anchorage International Airport,USA
93,Stockholm,ARN,Arlanda,Sweden
93,Athens (Athinai),ATH,Hellinikon International Airport,Greece
91,"Birmingham, AL",BHM,Birmingham International Airport,USA
95,Bangkok,BKK,Don Muang International Airport,Thailand
91,"Nashville, TN",BNA,Nashville International Airport,USA
91,"Boston, MA",BOS,General Edward Lawrence Logan Internatio,USA
93,Brussels (Bruxelles),BRU,National/Zaventem,Belgium
96,"Canberra, Australian C",CBR,,Australia
95,Calcutta,CCU,Dum Dum International Airport,India
93,Paris,CDG,Charles de Gaulle,France
93,Kobenhavn (Copenhagen),CPH,Kastrup,Denmark
94,Cape Town,CPT,D.F. Malan,South Africa
95,Delhi,DEL,Indira Gandhi International Airport,India
90,"Dallas/Fort Worth, TX",DFW,Dallas/Fort Worth International Airport,USA
95,Dubai,DXB,,United Arab Emirates
93,Oslo,FBU,Fornebu,Norway
93,Roma (Rome),FCO,Leonardo da Vinci/Fiumicino,Italy
93,Frankfurt,FRA,Rhein-Main,Germany
93,"Glasgow, Scotland",GLA,Abbotsichn,United Kingdom
93,Geneva,GVA,Geneve-Cointrin,Switzerland
93,Helsinki,HEL,Vantaa,Finland
95,Hong Kong,HKG,Kai-Tak International Airport,Hong Kong
95,Tokyo,HND,Haneda,Japan
90,"Honolulu, HI",HNL,Honolulu International Airport,USA
91,"Washington, DC",IAD,Washington Dulles International Airport,USA
91,"Indianapolis, IN",IND,Indianapolis International Airport,USA
95,Jeddah,JED,King Abdul Aziz Airport,Saudi Arabia
91,"New York, NY",JFK,John F. Kennedy International Airport,USA
94,Johannesburg,JNB,Jan Smuts Airport,South Africa
95,Jerusalem,JRS,Atarot,Israel
91,"Los Angeles, CA",LAX,Los Angeles International Airport,USA
93,"London, England",LHR,Heathrow Airport,United Kingdom
93,Madrid,MAD,Barajas,Spain
91,"Kansas City, MO",MCI,Kansas City International Airport,USA
91,"Miami, FL",MIA,Miami International Airport,USA
91,"New Orleans, LA",MSY,New Orleans International Airport,USA
94,Nairobi,NBO,Jomo Kenyatta,Kenya
91,"Chicago, IL",ORD,Chicago-O'Hare International Airport,USA
95,Beijing (Peking),PEK,Capital,China
93,Praha (Prague),PRG,Ruzyne,Czech Republic
91,"Portland, ME",PWM,Portland International Jetport,USA
91,"Raleigh-Durham, NC",RDU,Raleigh-Durham International Airport,USA
91,"Seattle, WA",SEA,Seattle-Tacoma International Airport,USA
91,"San Francisco, CA",SFO,San Francisco International Airport,USA
98,Singapore,SIN,Changi International Airport,Singapore
96,"Sydney, New South Wale",SYD,Kingsford Smith,Australia
;;;;
data certadv.continent;
attrib ID length=3 label='Continent ID';
attrib CtName length=$30 label='Continent Name';
  infile datalines dsd;
   input ID
         CtName
		 ;
datalines;
91,North America
93,Europe
94,Africa
95,Asia
96,Australia/Pacific
;;;;
proc sql;
   create view certadv.all as
      select students.student_name,
             schedule.course_number,
             paid, courses.course_code,
             location, begin_date,
             teacher, course_title, days, fee,
             student_company, city_state
         from certadv.schedule, certadv.students,
              certadv.register, certadv.courses
         where schedule.course_code =
               courses.course_code and
               schedule.course_number =
               register.course_number and
               students.student_name =
               register.student_name
         order by students.student_name,
                  courses.course_code;
quit;
proc sort data=certadv.monsal;
by ID;
run;
proc sort data=certadv.Stock6Mon out=certadv.Stock6Mon;
by Stock;
run;
data certadv.slogans (drop= Slogan1 Slogan2 Slogan3 sep);
   set certadv.slogans;
   sep=',';
   Slogans=catx(sep,Slogan1,Slogan2,Slogan3);
run;
data _null_;
   file "&path&delim.libname.sas";
   put '%let path='"&path;";
   put '%macro setdelim;';
   put '   %global delim;';
   put '   %if %index(&path,%str(/)) %then %let delim=%str(/);';
   put '   %else %let delim=%str(\);';
   put '%mend;';
   put '%setdelim';
   put 'libname certadv "&path";';
   put;
run;
