SELECT ProductKey
      ,EnglishProductName as Product_Name
	  ,C.EnglishProductCategoryName as Product_Category
	  ,S.EnglishProductSubcategoryName as Product_Subcategory
      ,Color as Product_Colour

	  ,Size as Product_Size
      ,ProductLine as Product_Line
      ,ModelName as Model
      ,EnglishDescription
	  ,ISNULL(Status,'Outdated')  AS Status
  FROM DimProduct P
  LEFT JOIN DimProductSubcategory S ON S.ProductSubcategoryKey = P.ProductSubcategoryKey 
   LEFT JOIN DimProductCategory C ON S.ProductCategoryKey = C.ProductCategoryKey 
  ORDER BY ProductKey

