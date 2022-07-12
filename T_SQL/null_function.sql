SELECT TRIM(ProductName) AS ProductName,
	   ProductDescription AS [Исходное значение],
	   ISNULL(ProductDescription, 'Без описания') AS [ISNULL],
	   COALESCE(ProductDescription, ProductName, 'Без описания') AS [COALESCE]
FROM Goods;
