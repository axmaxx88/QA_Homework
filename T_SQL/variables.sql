--INT type variable declaration
DECLARE @TestVar INT;

--Set a value to a variable with SET
SET @TestVar = 10;

--Set a value to a variable with SELECT
SELECT @TestVar = 10;

--Set a value to a variable during declaration
DECLARE @TestVar INT = 10;

--Ex. Declaration and using variable
DECLARE @TestVar INT;

SET @TestVar = 10;

SELECT @TestVar * 5 AS [Результат];

--Ex. Declaration and using table variable
DECLARE @TestTable TABLE (ProductId INT IDENTITY(1,1) NOT NULL,
						  Category INT NOT NULL,
						  ProductName VARCHAR(100) NOT NULL,
						  Price Money NULL);

INSERT INTO @TestTable (Category, ProductName, Price)
	VALUES (1, 'Системный блок', 50),
		   (1, 'Клавиатура', 30),
		   (2, 'Смартфон', 100);	

SELECT * FROM @TestTable;

--Ex. Using global variable
SELECT @@SERVERNAME [Имя локального сервера], 
	   @@VERSION AS [Версия SQL сервера];
