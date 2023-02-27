/*VARIABLE*/
DECLARE @varEmail_ID  INT;
SET     @varEmail_ID = 342;

DECLARE @fName VARCHAR(255);
DECLARE @lName VARCHAR(255);

/*CONST*/
DECLARE @varLocation_ID             INT;
SET     @varLocation_ID =            40;

DECLARE @varOrganization_ID         INT;
SET     @varOrganization_ID =         1;

DECLARE @varProject_Contact_Type_ID INT;
SET     @varProject_Contact_Type_ID = 2;

/*Writing to DB*/
INSERT INTO [CADEPT].[dbo].[Person]
  (First_Name, Last_Name, Location_ID, Email_ID, Organization_ID, Project_Contact_Type_ID)

VALUES ()