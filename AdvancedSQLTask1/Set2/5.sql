CREATE PROCEDURE set2_5 
AS
DECLARE @Rev VARCHAR(MAX)  
SELECT @Rev = COALESCE(@Rev + '| ', '') + [Comments] 
FROM [AdventureWorks2019].[Production].[ProductReview]
WHERE (ProductID = '937')
SELECT @Rev AS [List of All Reviews]
GO

  
