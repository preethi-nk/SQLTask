CREATE PROCEDURE Currency @Date nvarchar(30) AS
SELECT CurrencyRateID
      ,CurrencyRateDate
      ,AverageRate AS StartRate
      ,EndOfDayRate
  FROM [AdventureWorks2019].[Sales].[CurrencyRate]
  WHERE CurrencyRateDate = @Date
  GO