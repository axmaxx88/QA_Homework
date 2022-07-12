--Nested query in select list
SELECT �.CategoryName AS [�������� ���������],
	   	  (SELECT COUNT(*) 
		   FROM Goods G
		   WHERE G.Category = �.CategoryId) AS [���������� �������]
FROM Categories �

--Nested query in select FROM
SELECT ProductId, ProductName 
FROM (SELECT ProductId, ProductName 
      FROM Goods
      WHERE Category = 1) AS Query;

--Nested query in section JOIN	  
SELECT Q1.ProductId, Q1.Price, Q2.CategoryName
FROM (SELECT ProductId, Price, Category 
      FROM Goods) AS Q1
INNER JOIN (SELECT CategoryId, CategoryName 
			FROM Categories) AS Q2 ON Q1.Category = Q2.CategoryId

--Nested query in section WHERE with operator =		
SELECT ProductId, ProductName
FROM Goods G
WHERE Category = (SELECT CategoryId
                  FROM Categories 
                  WHERE CategoryName = '��������� ����������');

--Nested query in section WHERE with operator IN
SELECT ProductId, ProductName
FROM Goods G
WHERE Category IN (SELECT CategoryId
                   FROM Categories);

--Multilpe nesting SQL queries
SELECT ProductId, ProductName
FROM (SELECT ProductId, ProductName 
      FROM Goods 
      WHERE Category = (SELECT CategoryId
                        FROM Categories 
                        WHERE CategoryName = '��������� ����������')
      ) AS Query;

	  