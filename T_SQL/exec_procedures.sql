--create procedure
CREATE PROCEDURE TestProcedure
  (
      @Category INT,
      @ProductName VARCHAR(100)
  )
  AS
  BEGIN
    --declare variable
    DECLARE @AVG_Price MONEY

    --define average price in category
    SELECT @AVG_Price = ROUND(AVG(Price), 2)
    FROM Goods 
    WHERE Category = @Category

    --insert new entry
    INSERT INTO Goods(Category, ProductName, Price)
          VALUES (@Category, LTRIM(RTRIM(@ProductName)), @AVG_Price)

  --return data
  SELECT * FROM Goods
  WHERE Category = @Category
END

GO

--call procedure
EXECUTE TestProcedure @Category = 1,
        @ProductName = 'Web-камера'

SELECT * FROM Categories