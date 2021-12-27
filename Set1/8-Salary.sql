CREATE PROC set1_8  @ID INT
AS
SELECT e.BusinessEntityID, DATEDIFF(YY, e.HireDate, GETDATE()) AS YearsOFWork,(DATEDIFF(YY, e.HireDate, GETDATE())*8*p.Rate*p.PayFrequency*365) AS Total_Salary 
FROM [AdventureWorks2019].[HumanResources].[Employee] e INNER JOIN
[AdventureWorks2019].[HumanResources].[EmployeePayHistory] p on e.BusinessEntityID = p.BusinessEntityID
WHERE e.BusinessEntityID = @ID
GO
