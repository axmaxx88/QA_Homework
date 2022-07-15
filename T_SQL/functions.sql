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
  
   