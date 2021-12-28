CREATE PROCEDURE TerritoryAndDate
@Territory int,
@Dateinput date
AS
BEGIN
SELECT DISTINCT h.TerritoryID, h.StartDate, d.OrderQty as SalesUnit, i.Quantity as InventoryUnit, p.ProductID AS ProductId, p.Name
FROM   AdventureWorks2019.Production.Product AS p LEFT JOIN
             AdventureWorks2019.Production.ProductInventory AS i ON p.ProductID = i.ProductID LEFT JOIN
             AdventureWorks2019.Sales.SalesOrderDetail AS d ON p.ProductID = d.ProductID LEFT JOIN
             AdventureWorks2019.Sales.SalesOrderHeader AS o ON d.SalesOrderID = o.SalesOrderID LEFT JOIN
             AdventureWorks2019.Sales.SalesTerritory AS t ON o.TerritoryID =t.TerritoryID LEFT JOIN
             AdventureWorks2019.Sales.SalesTerritoryHistory AS h ON t.TerritoryID = h.TerritoryID 
WHERE h.TerritoryID = @Territory AND
      h.StartDate= @Dateinput 
ORDER BY InventoryUnit
END
GO

EXEC TerritoryAndDate 4, '2011-05-31 00:00:00.000'