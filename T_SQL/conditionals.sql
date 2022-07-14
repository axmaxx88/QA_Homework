--Ex. 1
DECLARE @TestVar1 INT;
DECLARE @TestVar2 VARCHAR(20);

SET @TestVar1 = 5;

IF @TestVar1 > 0
	SET @TestVar2 = 'Больше 0'
ELSE
	SET @TestVar2 = 'Меньше 0'

SELECT @TestVar2 AS [Значение TestVar1];


--Ex. 2
DECLARE @TestVar1 INT;
DECLARE @TestVar2 VARCHAR(20);

SET @TestVar1 = 0;

IF @TestVar1 > 0
	SET @TestVar2 = 'Больше 0'

SELECT @TestVar2 AS [Значение TestVar1];


--Ex. 3
DECLARE @TestVar1 INT;
DECLARE @TestVar2 VARCHAR(20);

SET @TestVar1 = -5;

IF @TestVar1 > 0 OR @TestVar1 = -5
	SET @TestVar2 = 'Значение подходит'

SELECT @TestVar2 AS [Значение TestVar1];


--Ex. 4
DECLARE @TestVar VARCHAR(20);

IF EXISTS(SELECT * FROM Goods)
	SET @TestVar = 'Записи есть'
ELSE
	SET @TestVar = 'Записей нет'

SELECT @TestVar AS [Наличие записей];


--Ex. 5
DECLARE @TestVar1 INT;
DECLARE @TestVar2 VARCHAR(20);

SET @TestVar1 = 1;

SELECT @TestVar2 = CASE @TestVar1 WHEN 1 THEN 'Один'
								  WHEN 2 THEN 'Два'
								  ELSE 'Неизвестное'
			     END;

SELECT @TestVar2 AS [Число];


--Ex. 6
DECLARE @TestVar1 INT;
DECLARE @TestVar2 VARCHAR(20), @TestVar3 VARCHAR(20);

SET @TestVar1 = 5;

IF @TestVar1 NOT IN (0, 1, 2)
BEGIN
	
	SET @TestVar2 = 'Первая инструкция';
	SET @TestVar3 = 'Вторая инструкция';
	
END
SELECT @TestVar2 AS [Значение TestVar2],
	   @TestVar3 AS [Значение TestVar3];


--Ex. 7
DECLARE @A INT = 5,
        @B INT = 3,
        @true_value INT = 1,
        @false_value INT = 0;

SELECT IIF ( @A >= @B, @true_value, @false_value ) AS Result;
	   