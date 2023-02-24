/*
    Pull Email_ID from Email_Address value
*/
DECLARE @Email_ID INT;
INSERT INTO [CADEPT].[dbo].[Email](Email_Address)
VALUES('Joe.Keene@c-p.com')
SET @Email_ID = SCOPE_IDENTITY();

DECLARE 

INSERT INTO [CADEPT].[dbo].[Person]

(First_Name, Last_Name, Location_ID, Email_ID, Organization_ID, Project_Contact_Type_ID)

VALUES('Joe','Keene',40,@Email_ID, 1,2)