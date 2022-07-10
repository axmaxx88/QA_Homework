--LTRIM, RTRIM è TRIM
SELECT ProductName AS [Initial value], 
	   LTRIM(ProductName) AS [LTRIM], 
	   RTRIM(ProductName) AS [RTRIM],
	   RTRIM(LTRIM(ProductName)) AS [RTRIM è LTRIM],
	   TRIM(ProductName) AS [TRIM]
FROM Goods;

--LOWER and UPPER
SELECT ProductName AS [Initial value], 
	   LOWER (ProductName) AS [LOWER], 
	   UPPER(ProductName) AS [UPPER]
FROM Goods;

--LEN
SELECT ProductName AS [Initial value], 
	   LEN(ProductName) AS [LEN],
	   LEN(LTRIM(ProductName)) AS [LTRIM è LEN]
FROM Goods;

--LEFT and RIGHT
SELECT ProductName AS [Initial value], 
	   LEFT(ProductName, 3) AS [LEFT], 
	   RIGHT(ProductName, 3) AS [RIGHT],
	   LEFT(LTRIM(ProductName), 3) AS [LEFT è LTRIM], 
	   RIGHT(RTRIM(ProductName), 3) AS [RIGHT è RTRIM]
FROM Goods;

--SUBSTRING
SELECT ProductName AS [Initial value], 
	   SUBSTRING(ProductName, 3, 5) AS [SUBSTRING]
FROM Goods;
