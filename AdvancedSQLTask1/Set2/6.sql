SELECT DISTINCT p.ProductID, t.TerritoryID, p.StandardCost, d.UnitPrice,(d.UnitPrice - p.StandardCost) as ChangeOfCost, t.SalesYTD, t.SalesLastYear,(t.SalesLastYear-t.SalesYTD)as ChangeOfSales
FROM  AdventureWorks2019.Production.Product AS p INNER JOIN
           AdventureWorks2019.Sales.SalesOrderDetail AS d  ON d.ProductID = p.ProductID INNER JOIN
             AdventureWorks2019.Sales.SalesOrderHeader AS o ON d.SalesOrderID = o.SalesOrderID INNER JOIN
             AdventureWorks2019.Sales.SalesTerritory AS t ON o.TerritoryID = t.TerritoryID
	 ORDER BY ChangeOfCost DESC, p.ProductID