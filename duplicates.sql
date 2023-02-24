SELECT Email_ID, COUNT(*)
FROM [dbo].[Person]
GROUP BY Email_ID
HAVING COUNT(*) > 1;