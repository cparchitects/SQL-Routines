/*
	Script for adding organizations into the DB
*/

DECLARE @Location_ID INT;
DECLARE @Phone_ID INT;
DECLARE @Email_ID INT;

DECLARE @Organization_Type_ID INT;
SET @Organization_Type_ID = 2;

DECLARE @Phone_Type_ID INT;
SET @Phone_Type_ID = 1;

INSERT INTO Location (Street_Number, Street_Name, City, State, Zip_Code, Country, County)
VALUES ('424', 'East Central Boulevard, Suite 542', 'Orlando', 'FL', '32801', 'USA', 'Orange County');
SET @Location_ID = SCOPE_IDENTITY();

-- Insert email into Phone table and get its ID 
INSERT INTO Phone (Phone_Number, Phone_Type_ID) 
VALUES ('407-416-9960', @Phone_Type_ID);
SET @Phone_ID = SCOPE_IDENTITY(); 

-- Insert email into Email table and get its ID 
INSERT INTO Email (Email_Address) 
VALUES (NULL);
SET @Email_ID = SCOPE_IDENTITY();

-- Declare variables for Organization_ID to be used to push in with project data
DECLARE @Organization_ID INT;

-- Insert Company data into Organization table and get its IDfor the Project Insert link 
INSERT INTO Organization (Name, Location_ID, Phone_ID, Email_ID, Organization_Type_ID) 
VALUES ('Eleven 18 Architecture LLC', @Location_ID, @Phone_ID, @Email_ID, @Organization_Type_ID);