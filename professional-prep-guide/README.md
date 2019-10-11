# Using Sample Data

This README contains instructions for creating practice data sets for some of the examples in the SAS Certified Professional Prep Guide: Advanced Programming Using SAS 9.4.

## Requirements

To complete the examples in this book, you must have access to SAS windowing environment, SAS Enterprise Guide, SAS Studio, or SAS University Edition.


## File Contents


- [cre8data.sas](https://github.com/sassoftware/sas-cert-prep-data/blob/master/professional-prep-guide/cre8data.sas) contains SAS code to set up your SAS library with data sets. 


- [cred8permdata.sas ](https://github.com/sassoftware/sas-cert-prep-data/blob/master/professional-prep-guide/cre8permdata.sas) contains SAS code that creates your SAS data sets. 

## Setting Up Practice Data for SAS onDemand for Academics

To set up your sample data program in SAS OnDemand:

1. Navigate to [https://github.com/sassoftware/sas-cert-prep-data](https://github.com/sassoftware/sas-cert-prep-data).
2. Click on the **[professional-prep-guide directory](https://github.com/sassoftware/sas-cert-prep-data/tree/master/professional-prep-guide)**.
3. Open the **[cre8data.sas](https://github.com/sassoftware/sas-cert-prep-data/blob/master/professional-prep-guide/cre8data.sas)** program and click **Raw**. Right-click anywhere on the screen and select **Save As**. Save the **cre8data.sas** to a location that is accessible to SAS.
4. Open the **[cre8premdata.sas](https://github.com/sassoftware/sas-cert-prep-data/blob/master/professional-prep-guide/cre8permdata.sas)** program and click **Raw**. Right-click anywhere on the screen and select **Save As**. Save the **cre8premdata.sas** to the same location as **cre8data.sas**. 
5. Log on to SAS OnDemand for Academics and open SAS Studio.
6. Right-click the **Files** (Home) folder, and then select **New**→**Folder**.
7. Name the new folder **certadv** and click **Save**.
8. Right-click the **certadv** folder and select **Upload Files**.
9. Click **Choose Files** and navigate to the **certadv** folder within the practice-data folder on your local machine.
10. Select all program files and click **Open**. All available programs are listed under **Select Files**. Click **Upload**.
11. Open and edit the **cre8data.sas** program.
12. In the Path macro variable, replace `/folders/myfolders` with the path to the **certadv** folder. Right-click the **certadv** folder in SAS Studio and click **Properties**. Copy the path in the Location box and paste it into your %LET statement. 
13. Save and then run the **cre8data.sas** program.

## Setting Up Practice Data on Other SAS Environments

To set up your sample data program on other SAS environments:

1. Navigate to [https://github.com/sassoftware/sas-cert-prep-data](https://github.com/sassoftware/sas-cert-prep-data).
2. Click on the **[professional-prep-guide directory](https://github.com/sassoftware/sas-cert-prep-data/tree/master/professional-prep-guide)**.
3. Open the **[cre8data.sas](https://github.com/sassoftware/sas-cert-prep-data/blob/master/professional-prep-guide/cre8data.sas)** program and click **Raw**. Right-click anywhere on the screen and select **Save As**. Save the **cre8data.sas** to a location that is accessible to SAS. 

	**Note:** It is recommended that you create a folder in a location that is accessible to SAS and name that folder certadv. All of the librefs associated with the Professional Prep Guide uses the certadv libref. 

4. Open the **[cre8premdata.sas](https://github.com/sassoftware/sas-cert-prep-data/blob/master/professional-prep-guide/cre8permdata.sas)** program and click **Raw**. Right-click anywhere on the screen and select **Save As**. Save the **cre8premdata.sas** to the same location as **cre8data.sas**. 
5. Open the **cre8data.sas** program in the SAS environment of your choice. 

	SAS Studio: In the Navigation pane, expand **Files and Folders** and then navigate to the folder where you saved your practice data. 
	
	SAS Enterprise Guide: In the Servers list, expand **Servers** → **Local** → **Files**, and then navigate to the folder where you saved your practice data. 

	SAS windowing environment: Click **File**→ **Open Program**, and then navigate to the folder where you saved your practice data. 

6. In the Path macro variable, replace `/folders/myfolders` with the path to the folder where you saved your practice data and run the program `%let path=/folders/myfolders/my-folder-name;`.

	*Important:* The location that you specify for the Path macro variable and the location of your downloaded SAS programs should be the same location. Otherwise, the cre8data.sas program cannot create the practice data.

Your practice data is now created and ready for you to use. 
	
**Note:** When you end your SAS session, the Path macro variable in the **cre8data.sas** program is reset. To avoid having to rerun **cre8data.sas** every time, run the **libname.sas** program from your sample data folder to restore the libraries.
	

