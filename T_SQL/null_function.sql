SELECT TRIM(ProductName) AS ProductName,
	   ProductDescription AS [�������� ��������],
	   ISNULL(ProductDescription, '��� ��������') AS [ISNULL],
	   COALESCE(ProductDescription, ProductName, '��� ��������') AS [COALESCE]
FROM Goods;
