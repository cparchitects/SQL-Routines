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

VALUES
('Accladios', 'Georges', @varLocation_ID, @varEmail_ID + 1, @varOrganization_ID, @varProject_Contact_Type_ID),
('Aguirre', 'Rincon', @varLocation_ID, @varEmail_ID + 2, @varOrganization_ID, @varProject_Contact_Type_ID),
('Ward', 'Bruce', @varLocation_ID, @varEmail_ID + 3, @varOrganization_ID, @varProject_Contact_Type_ID),
('Lowe', 'Jacquelynn', @varLocation_ID, @varEmail_ID + 4, @varOrganization_ID, @varProject_Contact_Type_ID),
('Vito', 'Bettyanne', @varLocation_ID, @varEmail_ID + 5, @varOrganization_ID, @varProject_Contact_Type_ID),
('Rivera', 'Vilmary', @varLocation_ID, @varEmail_ID + 6, @varOrganization_ID, @varProject_Contact_Type_ID),
('Byrd', 'Cory', @varLocation_ID, @varEmail_ID + 7, @varOrganization_ID, @varProject_Contact_Type_ID),
('Ventura', 'Garcia', @varLocation_ID, @varEmail_ID + 8, @varOrganization_ID, @varProject_Contact_Type_ID),
('Rodriguez', 'Jose', @varLocation_ID, @varEmail_ID + 9, @varOrganization_ID, @varProject_Contact_Type_ID),
('Neminath', 'Sirigoud', @varLocation_ID, @varEmail_ID + 10, @varOrganization_ID, @varProject_Contact_Type_ID),
('Wright', 'Mari', @varLocation_ID, @varEmail_ID + 11, @varOrganization_ID, @varProject_Contact_Type_ID),
('Ashwathi', 'Ravi', @varLocation_ID, @varEmail_ID + 12, @varOrganization_ID, @varProject_Contact_Type_ID),
('Podlecki', 'Catharina', @varLocation_ID, @varEmail_ID + 13, @varOrganization_ID, @varProject_Contact_Type_ID),
('LaSalle', 'Steve', @varLocation_ID, @varEmail_ID + 14, @varOrganization_ID, @varProject_Contact_Type_ID),
('Le', 'Eliza', @varLocation_ID, @varEmail_ID + 15, @varOrganization_ID, @varProject_Contact_Type_ID),
('MacLeod', 'Rebecca', @varLocation_ID, @varEmail_ID + 16, @varOrganization_ID, @varProject_Contact_Type_ID),
('Nelson', 'Caleb', @varLocation_ID, @varEmail_ID + 17, @varOrganization_ID, @varProject_Contact_Type_ID),
('Corredor', 'Angelica', @varLocation_ID, @varEmail_ID + 18, @varOrganization_ID, @varProject_Contact_Type_ID),
('Robles', 'Eduardo', @varLocation_ID, @varEmail_ID + 19, @varOrganization_ID, @varProject_Contact_Type_ID),
('Schmidt', 'Lindsay', @varLocation_ID, @varEmail_ID + 20, @varOrganization_ID, @varProject_Contact_Type_ID),
('Derek', 'Deschler', @varLocation_ID, @varEmail_ID + 21, @varOrganization_ID, @varProject_Contact_Type_ID);