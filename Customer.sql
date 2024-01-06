SELECT 
	   CustomerKey AS Customer_Key
      ,FirstName AS First_Name
	  ,LastName AS Last_Name
      ,FirstName + ' ' + LastName AS Full_Name
      ,CASE Gender WHEN 'M' THEN 'Male' else 'Female' END AS Gender
      ,DateFirstPurchase AS First_Purchase_Date
	  ,g.City
FROM DimCustomer c
JOIN DimGeography g
ON c.geographykey = g.geographykey
ORDER BY Customer_Key