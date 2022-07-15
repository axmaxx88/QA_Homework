--alter procedure
ALTER PROCEDURE TestProcedure
    (
        @Category INT,
        @ProductName VARCHAR(100),
        @Price MONEY = NULL --not required parameter
    )
AS
BEGIN
    
      --if the price was not added, then define average price
      IF @Price IS NULL
          SELECT @Price = ROUND(AVG(Price), 2)
          FROM Goods
          WHERE Category = @Category

      --Add new note
      INSERT INTO Goods(Category, ProductName, Price)
          VALUES (@Category, LTRIM(RTRIM(@ProductName)), @Price)

      SELECT * FROM Goods
      WHERE Category = @Category
END

GO

EXECUTE TestProcedure 1, 'Микрофон', 30
   