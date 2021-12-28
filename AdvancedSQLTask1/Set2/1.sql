SELECT 
(SELECT SUM(o.UnitPriceDiscount) FROM AdventureWorks2019.Sales.SalesOrderHeader s
INNER JOIN AdventureWorks2019.Sales.SalesOrderDetail o 
ON s.SalesOrderID = o.SalesOrderID
WHERE s.CreditCardID IS NULL)AS NormalDiscount, 

(SELECT SUM(o.UnitPriceDiscount) FROM AdventureWorks2019.Sales.SalesOrderHeader s 
INNER JOIN AdventureWorks2019.Sales.SalesOrderDetail o 
ON s.SalesOrderID = o.SalesOrderID
WHERE s.CreditCardID IS NOT NULL) AS CreditCardDiscount 

