SELECT DepartmentID, COUNT(ShiftID) AS Shiftid
  FROM [AdventureWorks2019].[HumanResources].[EmployeeDepartmentHistory] 
  WHERE ShiftID = '3'
  GROUP BY DepartmentID ORDER BY Shiftid DESC
