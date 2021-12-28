CREATE VIEW [Maximum Salary By Employee of Highest Title] AS
SELECT e.OrganizationLevel, MAX(r.Rate) AS MaxPay, r.BusinessEntityID FROM AdventureWorks2019.HumanResources.EmployeePayHistory AS r 
LEFT JOIN AdventureWorks2019.HumanResources.Employee AS e ON e.BusinessEntityID = r.BusinessEntityID
WHERE (e.OrganizationLevel <= 1) 
GROUP BY e.OrganizationLevel,r.BusinessEntityID
ORDER BY MaxPay DESC

GO
