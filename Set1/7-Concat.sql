CREATE PROCEDURE Employee @ID int
AS
SELECT e.BusinessEntityID,
       p.FirstName,
	   datediff( YY, e.BirthDate, getdate()) AS Age,
	   h.DepartmentID,
	   UPPER(CONCAT(LEFT(d.Name, 2),  RIGHT(d.Name, 2))) AS DepartmentName
FROM [AdventureWorks2019].[HumanResources].[Employee] AS e
INNER JOIN [AdventureWorks2019].[Person].[Person] AS p ON e.BusinessEntityID = p.BusinessEntityID
INNER JOIN [AdventureWorks2019].[HumanResources].[EmployeeDepartmentHistory] AS h  ON e.BusinessEntityID = h.BusinessEntityID
INNER JOIN [AdventureWorks2019].[HumanResources].[Department] AS d ON h.DepartmentID = d.DepartmentID
WHERE e.BusinessEntityID=@ID
ORDER BY e.BusinessEntityID