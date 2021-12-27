SELECT e.OrganizationLevel, SUM(r.Rate) AS SumOfPay FROM AdventureWorks2019.HumanResources.EmployeePayHistory AS r 
LEFT JOIN AdventureWorks2019.HumanResources.Employee AS e ON e.BusinessEntityID = r.BusinessEntityID
WHERE (e.OrganizationLevel <= 1) GROUP BY e.OrganizationLevel