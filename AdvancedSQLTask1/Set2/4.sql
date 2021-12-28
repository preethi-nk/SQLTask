
SELECT ProductID, ReviewerName, EmailAddress, Rating
      FROM [AdventureWorks2019].[Production].[ProductReview] 
	  WHERE ProductID =
	   (SELECT ProductID FROM [AdventureWorks2019].[Production].[ProductReview] 
	    GROUP BY ProductID 
		HAVING COUNT(ProductID)>1)