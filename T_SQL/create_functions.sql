--create function
CREATE FUNCTION TestFunction
  (
    @ProductId INT --declare input parameters
  )
RETURNS VARCHAR(100) --type of returning result
AS 
BEGIN 
  --declare variable inside function
    DECLARE @ProductName VARCHAR(100);
  
  --getting the product name by its ID
    SELECT @ProductName = ProductName
    FROM Goods
    WHERE ProductId = @ProductId

  --returning result
  RETURN @ProductName
END

GO

--function call
SELECT dbo.TestFunction(1) AS Product_name


--function call. Passing a parameter to a function as a column
SELECT ProductId,
       ProductName,
       dbo.TestFunction(ProductId) AS Product_name
  FROM Goods 


GO

--create table function
CREATE FUNCTION FT_Test_Function
  (
    @CategoryId INT
  )
  RETURNS TABLE
  AS 
  RETURN(
    SELECT ProductId,
           ProductName,
           Price,
           Category
           FROM Goods
           WHERE Category = @CategoryId
        )
GO

SELECT * FROM dbo.FT_Test_Function(2) 
  

--create table function with few instruction

CREATE FUNCTION FT_Test_Function2
  (
    @Category INT,
    @Price MONEY
  )

RETURNS @TMPTable TABLE (ProductId INT,
                         ProductName VARCHAR(100),
                         Price MONEY,
                         Category INT
                        )
AS
BEGIN
  IF @Price < 0
    SET @Price = 0
  INSERT INTO @TMPTable
    SELECT ProductId,
           ProductName,
           Price,
           Category
    FROM Goods 
    WHERE Category = @Category AND Price <= @Price
  RETURN
END

GO 

SELECT * FROM dbo.FT_Test_Function2(2, 2000)


