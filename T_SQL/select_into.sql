--Exemple SELECT INTO
SELECT TRIM(G.ProductName) AS ProductName, C.CategoryName, G.Price 
INTO #TestTable
FROM Goods G
INNER JOIN Categories C ON G.Category = C.CategoryId
WHERE G.Category = 1;

SELECT * FROM #TestTable;
