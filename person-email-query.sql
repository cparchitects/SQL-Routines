SELECT 
    p.*, 
    e.*,
    CASE 
        WHEN LEFT(e.Email_Address, CHARINDEX('.', e.Email_Address)-1) = p.First_Name 
        THEN 'True' 
        ELSE 'False' 
    END AS Comparison_Exact
FROM dbo.Person p
JOIN dbo.Email e ON p.Email_ID = e.Email_ID
WHERE e.Email_Address LIKE '%@c-p.com'
order by Comparison_Exact ASC