SELECT DISTINCT I.WeekNumber, 
       I.UPC,
	   QO.OutOfStockQty,
	   QA.Inventory,
	   QP.OrderedQty,
	   QS.Sales
	   FROM [Part2].[dbo].[Inventory] AS I
	   LEFT JOIN
	   (SELECT UPC, WeekNumber, SUM(CAST(StoreQty AS INT)) AS OutOfStockQty FROM [Part2].[dbo].[Inventory] 
	    WHERE ActivityCode = 'QO'
        GROUP BY WeekNumber,UPC ) AS QO
		ON I.WeekNumber = QO.WeekNumber AND I.UPC = QO.UPC
	   LEFT JOIN
	   (SELECT UPC, WeekNumber, SUM(CAST(StoreQty AS INT))  AS Inventory FROM [Part2].[dbo].[Inventory] 
	    WHERE ActivityCode = 'QA'
        GROUP BY WeekNumber,UPC ) AS QA
		ON I.WeekNumber = QA.WeekNumber AND I.UPC = QA.UPC
	   LEFT JOIN
	   (SELECT UPC, WeekNumber, SUM(CAST(StoreQty AS INT)) AS OrderedQty FROM [Part2].[dbo].[Inventory] 
	    WHERE ActivityCode = 'QP'
        GROUP BY WeekNumber,UPC ) AS QP
		ON I.WeekNumber = QP.WeekNumber AND I.UPC = QP.UPC
	   LEFT JOIN 
	   (SELECT UPC, WeekNumber, SUM(CAST(StoreQty AS INT)) AS Sales FROM [Part2].[dbo].[Inventory] 
	    WHERE ActivityCode = 'QS'
        GROUP BY WeekNumber,UPC ) AS QS 
		ON I.WeekNumber = QS.WeekNumber AND I.UPC = QS.UPC
  ORDER BY WeekNumber, UPC  