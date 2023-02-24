/* Starting off at value 61 bc that's the value of the last entry in the Email table */

/*ITERATOR*/
DECLARE @varEmail_ID  INT;
SET     @varEmail_ID = 61;

/*CONST*/
DECLARE @varLocation_ID             INT;
SET     @varLocation_ID =            40;

DECLARE @varOrganization_ID         INT;
SET     @varOrganization_ID =         1;

DECLARE @varProject_Contact_Type_ID INT;
SET     @varProject_Contact_Type_ID = 2;

/* Declare variables to hold values from CSV file */
DECLARE @fName VARCHAR(255);
DECLARE @lName VARCHAR(255);

/* Declare cursor to read values from CSV file */
DECLARE csv_cursor CURSOR FOR
SELECT first_name, last_name
FROM your_csv_file;

/* Open the cursor */
OPEN csv_cursor;

/* Fetch the first row */
FETCH NEXT FROM csv_cursor INTO @fName, @lName;

/* Loop through all the rows in the CSV file */
WHILE @@FETCH_STATUS = 0
BEGIN
  /* Insert the current row into the Person table */
  INSERT INTO [CADEPT].[dbo].[Person]
    (First_Name, Last_Name, Location_ID, Email_ID, Organization_ID, Project_Contact_Type_ID)
  VALUES
    (@fName, @lName, @varLocation_ID, @varEmail_ID, @varOrganization_ID, @varProject_Contact_Type_ID);

  /* Increment the Email_ID variable */
  SET @varEmail_ID = @varEmail_ID + 1;

  /* Fetch the next row */
  FETCH NEXT FROM csv_cursor INTO @fName, @lName;
END

/* Close the cursor */
CLOSE csv_cursor;

/* Deallocate the cursor */
DEALLOCATE csv_cursor;
