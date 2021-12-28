SELECT [1],[2],[3],[4],[5],[6],[7],[8],[9],[10]
  FROM (SELECT SalesPersonID, [TerritoryID] FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
               WHERE SalesPersonID='275')Tab1
  PIVOT
  (COUNT(SalesPersonID) FOR TerritoryID IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10]))AS PivotTable
