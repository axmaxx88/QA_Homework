--LTRIM, RTRIM � TRIM
SELECT ProductName AS [�������� ��������], 
	   LTRIM(ProductName) AS [LTRIM], 
	   RTRIM(ProductName) AS [RTRIM],
	   RTRIM(LTRIM(ProductName)) AS [RTRIM � LTRIM],
	   TRIM(ProductName) AS [TRIM]
FROM Goods;

--LOWER � UPPER
SELECT ProductName AS [�������� ��������], 
	   LOWER (ProductName) AS [LOWER], 
	   UPPER(ProductName) AS [UPPER]
FROM Goods;

--LEN
SELECT ProductName AS [�������� ��������], 
	   LEN(ProductName) AS [LEN],
	   LEN(LTRIM(ProductName)) AS [LTRIM � LEN]
FROM Goods;

--LEFT � RIGHT
SELECT ProductName AS [�������� ��������], 
	   LEFT(ProductName, 3) AS [LEFT], 
	   RIGHT(ProductName, 3) AS [RIGHT],
	   LEFT(LTRIM(ProductName), 3) AS [LEFT � LTRIM], 
	   RIGHT(RTRIM(ProductName), 3) AS [RIGHT � RTRIM]
FROM Goods;

--SUBSTRING
SELECT ProductName AS [�������� ��������], 
	   SUBSTRING(ProductName, 3, 5) AS [SUBSTRING]
FROM Goods;
