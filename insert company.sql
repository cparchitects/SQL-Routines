/*
	Script for adding companies into the DB
*/

DECLARE @Location_ID INT;
DECLARE @Phone_ID INT;
DECLARE @Email_ID INT;

-- Insert email into Location table and get its ID� 
�INSERT INTO Location (Street_Number, Street_Name, City, State, Zip_Code, Country, County)� 
�VALUES ('2240', 'West First St Ste 101', 'Fort Myers', 'FL', '33901', 'USA', 'Lee County');� 
�SET @Location_ID = SCOPE_IDENTITY();� 

-- Insert email into Phone table and get its ID� 
�INSERT INTO Phone (Phone_Number, Phone_Type_ID)� 
�VALUES ('239-210-0455', 1);
�SET @Phone_ID = SCOPE_IDENTITY();� 

-- Insert email into Email table and get its ID� 
�INSERT INTO Email (Email_Address)� 
�VALUES ('info@creightondev.com');� 
�SET @Email_ID = SCOPE_IDENTITY();� 


-- Declare variables for Organization_ID to be used to push in with project data
DECLARE @Organization_ID INT;


-- Insert Company data into Organization table and get its ID�for the Project Insert link 
�INSERT INTO Organization (Name, Location_ID, Phone_ID, Email_ID, Organization_Type_ID)� 
�VALUES ('Creighton Companies, LLC', @Location_ID, @Phone_ID, @Email_ID, 2);� 

/*
INSERT INTO dbo.Project (Project_Name, Project_Number, Store_Number, Building_Type_ID, Location_ID, Status_ID,
Program_Type_ID)

VALUES 
('Warehouse Expansion', 'GHI789', 91011, 3, 5678, 3, 3);
*/