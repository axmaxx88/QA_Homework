--Ex. 1
DECLARE @CountAll INT = 0;
--Start cycle
WHILE @CountAll < 10
BEGIN
	SET @CountAll = @CountAll + 1;
END
SELECT @CountAll AS [Результат];

--Ex. 2
DECLARE @CountAll INT = 0;
-- Start cycle
WHILE @CountAll < 10
BEGIN
	SET @CountAll += 1;
	IF @CountAll = 5
		BREAK
END
SELECT @CountAll AS [Результат];

--Ex. 3
DECLARE @Cnt INT = 0;
DECLARE @CountAll INT = 0;
--Start cycle
WHILE @CountAll < 10
BEGIN
	SET @CountAll += 1;
	IF @CountAll = 5
		CONTINUE
	SET @Cnt += 1;
END

SELECT @CountAll AS [CountAll], 
	   @Cnt AS [Cnt];
