SELECT TOP(5) BusinessEntityID,Bonus,SalesYTD
  FROM [AdventureWorks2019].[Sales].[SalesPerson]
  WHERE Bonus != '0.00'
  ORDER BY SalesYTD DESC

  GO
  SELECT BusinessEntityID,Bonus,SalesYTD
  FROM [AdventureWorks2019].[Sales].[SalesPerson]
  WHERE Bonus = '0.00'
  ORDER BY SalesYTD DESC
  