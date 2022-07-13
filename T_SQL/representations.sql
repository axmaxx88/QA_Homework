--creating representation
CREATE VIEW CountProducts
AS
	SELECT C.CategoryName AS CategoryName,
		   (SELECT COUNT(*) 
		    FROM Goods 
		    WHERE Category = C.CategoryId) AS CntProducts
	FROM Categories C;

--Referring to representation
SELECT * FROM CountProducts;
	
--Modifying representation
ALTER VIEW CountProducts
AS
	SELECT C.CategoryId,
		   C.CategoryName AS CategoryName,
		   (SELECT COUNT(*) 
		    FROM Goods 
		    WHERE Category = C.CategoryId) AS CntProducts
	FROM Categories C;

--Deleting representation
DROP VIEW CountProducts;

--Exemple
CREATE VIEW GoodsUpdate
AS
	SELECT ProductId, Category, ProductName, ProductDescription, Price
	FROM Goods;


SELECT * FROM GoodsUpdate;

UPDATE GoodsUpdate SET Price = Price + 10
WHERE Category = 2;


SELECT * FROM GoodsUpdate;
