SELECT 
  s.SalesPersonID, s.TerritoryID,COUNT(s.SalesPersonID) AS SalesCount
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader] AS s
  INNER JOIN [AdventureWorks2019].[Sales].[SalesTerritoryHistory] AS p
  ON s.SalesPersonID = p.BusinessEntityID AND s.TerritoryID = p.TerritoryID
  GROUP BY s.SalesPersonID,s.TerritoryID
  ORDER BY s.SalesPersonID 

  