
 SELECT TOP (10) d.DepartmentID,AVG(r.Rate) AS Rate FROM [AdventureWorks2019].HumanResources.EmployeeDepartmentHistory AS d
 LEFT JOIN [AdventureWorks2019].HumanResources.EmployeePayHistory AS r 
 ON d.BusinessEntityID =  r.BusinessEntityID 
 GROUP BY d.DepartmentID
 ORDER BY Rate DESC
