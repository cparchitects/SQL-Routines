DECLARE @Building_Type_ID INT;
SET @Building_Type_ID = 7;

DECLARE @Status_ID INT;
SET @Status_ID = 1;

DECLARE @Program_Type_ID INT;
SET @Program_Type_ID = 1;


DECLARE @Location_ID INT;

INSERT INTO Location (Street_Number, Street_Name, City, State, Zip_Code, Country, County)  
VALUES ();  
SET @Location_ID = SCOPE_IDENTITY();

INSERT INTO Project (Project_Name, Project_Number, Store_Number, Building_Type_ID, Location_ID, Status_ID,
Program_Type_ID)
VALUES (,,, @Building_Type_ID, @Location_ID, @Status_ID, @Program_Type_ID)