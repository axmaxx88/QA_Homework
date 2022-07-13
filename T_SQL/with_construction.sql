--Exemple 1
WITH TestCTE (ProductId, ProductName, Price) AS
	(	
		--Query that returns certain data
		SELECT ProductId, ProductName, Price 
		FROM Goods
		WHERE Category = 1 
	)
--Query where we can use CTE
SELECT * FROM TestCTE


--Exemple 2
WITH TestCTE AS
	(	
		--Query that returns certain data
		SELECT ProductId, ProductName, Price 
		FROM Goods
		WHERE Category = 1 
	)
--Query where we can use CTE
SELECT * FROM TestCTE


--Exemple 3
WITH TestCTE1 AS --Первый запрос
	(	
		--Query with complex logic
		SELECT ProductId, Category, ProductName, Price 
		FROM Goods
	), 
TestCTE2 AS -- Второй запрос
	(
		--Complex query
		SELECT CategoryId, CategoryName 
		FROM Categories
	)
--Working with result sets of two queries
SELECT T1.ProductName, T2.CategoryName, T1.Price
FROM TestCTE1 T1
LEFT JOIN TestCTE2 T2 ON T1.Category = T2.CategoryId
WHERE T1.Category = 1


--Exemple 4
WITH TestCTE (UserID, Post, ManagerID, LevelUser) AS 
(-- Fine recursion anchor
  SELECT UserID, Post, ManagerID, 0 AS LevelUser 
  FROM TestTable 
  WHERE ManagerID IS NULL
  
  UNION ALL
  
  --Join with TestCTE
  SELECT t1.UserID, t1.Post, t1.ManagerID, t2.LevelUser + 1 
  FROM TestTable t1 
  JOIN TestCTE t2 ON t1.ManagerID=t2.UserID
)
SELECT * 
FROM TestCTE 
ORDER BY LevelUser


--Exemple 5
WITH TestCTE (UserID, Post, ManagerID, LevelUser) AS 
(-- Fine recursion anchor
  SELECT UserID, Post, ManagerID, 0 AS LevelUser 
  FROM TestTable 
  WHERE ManagerID IS NULL
  
  UNION ALL
  
  --Join with TestCTE
  SELECT t1.UserID, t1.Post, t1.ManagerID, t2.LevelUser + 1 
  FROM TestTable t1 
  JOIN TestCTE t2 ON t1.ManagerID=t2.UserID
)
SELECT * 
FROM TestCTE
WHERE LevelUser = 1
ORDER BY LevelUser


--Exemple 6
WITH TestCTE (UserID, Post, ManagerID, LevelUser) AS 
(-- Fine recursion anchor
  SELECT UserID, Post, ManagerID, 0 AS LevelUser 
  FROM TestTable 
  WHERE ManagerID IS NULL
  
  UNION ALL
  
  --Join with TestCTE
  SELECT t1.UserID, t1.Post, t1.ManagerID, t2.LevelUser + 1 
  FROM TestTable t1 
  JOIN TestCTE t2 ON t1.ManagerID=t2.UserID
)
SELECT * 
FROM TestCTE
ORDER BY LevelUser
OPTION (MAXRECURSION 5)