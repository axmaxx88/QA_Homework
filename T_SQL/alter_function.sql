ALTER FUNCTION TestFunction
  (
    @ProductId INT
  )
RETURNS VARCHAR(100)
AS
BEGIN
  DECLARE @CategoryName VARCHAR(100);
  SELECT @CategoryName = t2.CategoryName
  FROM Goods t1
  INNER JOIN Categories t2 ON t1.Category = t2.CategoryId
  WHERE t1.ProductId = @ProductId
  RETURN @CategoryName

END

GO

SELECT ProductId,
       ProductName,
       dbo.TestFunction(ProductId) AS [CategoryName]
  FROM Goods 