SELECT 
	   ProductKey 
      ,OrderDateKey
      ,DueDateKey
      ,ShipDateKey
      ,CustomerKey
      ,SalesOrderNumber
      ,SalesAmount
FROM FactInternetSales
WHERE LEFT(DueDateKey,4) >=  YEAR(GETDATE())-2
ORDER BY OrderDateKey

