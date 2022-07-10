--LTRIM, RTRIM и TRIM
SELECT ProductName AS [Исходное значение], 
	   LTRIM(ProductName) AS [LTRIM], 
	   RTRIM(ProductName) AS [RTRIM],
	   RTRIM(LTRIM(ProductName)) AS [RTRIM и LTRIM],
	   TRIM(ProductName) AS [TRIM]
FROM Goods;

--LOWER и UPPER
SELECT ProductName AS [Исходное значение], 
	   LOWER (ProductName) AS [LOWER], 
	   UPPER(ProductName) AS [UPPER]
FROM Goods;

--LEN
SELECT ProductName AS [Исходное значение], 
	   LEN(ProductName) AS [LEN],
	   LEN(LTRIM(ProductName)) AS [LTRIM и LEN]
FROM Goods;

--LEFT и RIGHT
SELECT ProductName AS [Исходное значение], 
	   LEFT(ProductName, 3) AS [LEFT], 
	   RIGHT(ProductName, 3) AS [RIGHT],
	   LEFT(LTRIM(ProductName), 3) AS [LEFT и LTRIM], 
	   RIGHT(RTRIM(ProductName), 3) AS [RIGHT и RTRIM]
FROM Goods;

--SUBSTRING
SELECT ProductName AS [Исходное значение], 
	   SUBSTRING(ProductName, 3, 5) AS [SUBSTRING]
FROM Goods;
