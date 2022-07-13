--Creating temporary table
CREATE TABLE #TmpTable(
	ProductId INT IDENTITY(1,1) NOT NULL,
	ProductName VARCHAR(100) NOT NULL,
	Price	Money NOT NULL
);

--Using temporary table
INSERT INTO #TmpTable (ProductName, Price)
	VALUES ('Смартфон', 100),
		   ('Компьютер', 300);

SELECT * FROM #TmpTable;

--Deleting temporary table
DROP TABLE #TmpTable;

