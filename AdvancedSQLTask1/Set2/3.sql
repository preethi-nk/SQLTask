CREATE PROC set2_3sp_Sale @ID INT
AS

SELEcT s.SalesPersonID,n.FirstName,SUM(o.OrderQty) as OrderQuantity,o.ProductID 
FROM AdventureWorks2019.Sales.SalesPerson AS p
INNER JOIN AdventureWorks2019.Sales.SalesOrderHeader AS s on p.BusinessEntityID = s.SalesPersonID 
INNER JOIN AdventureWorks2019.Person.Person AS n ON p.BusinessEntityID = n.BusinessEntityID
INNER JOIN AdventureWorks2019.Sales.SalesOrderDetail o on s.SalesOrderID = o.SalesOrderID
WHERE ProductID = @ID
GROUP BY  p.BusinessEntityID,s.SalesPersonID,o.ProductID,n.FirstName 
ORDER BY OrderQuantity desc
GO