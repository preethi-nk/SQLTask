SELECT e.BusinessEntityID,DATEDIFF(YEAR,e.HireDate,GETDATE()) AS Years,r.Rate
FROM [AdventureWorks2019].[HumanResources].[Employee] AS e
LEFT JOIN [AdventureWorks2019].[HumanResources].[EmployeePayHistory] AS r
ON e.BusinessEntityID = r.BusinessEntityID
WHERE (e.OrganizationLevel='1')
ORDER BY Years DESC