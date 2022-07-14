--PRINT
DECLARE @TestVar INT = 1;
IF @TestVar > 0  
	PRINT 'Значение переменной больше 0';
ELSE
	PRINT 'Значение переменной меньше или равно 0';

	
--RETURN
DECLARE @TestVar INT = 0;
IF @TestVar < 0
	RETURN
	
SELECT @TestVar AS [Результат];


--GOTO 
DECLARE @TestVar INT = 0;

METKA: --set a mark

SET @TestVar += 1; --increase the value in the variable

--check the value
IF @TestVar < 10
	--if it is bigger then return to the mark
	GOTO METKA
	
SELECT @TestVar AS [Результат];

--GOTO 
DECLARE @Rezult INT = 0;

IF @TestVar <= 0
	GOTO METKA

SET @Rezult = 10 / @TestVar;

METKA: --set a mark

SELECT @Rezult AS [Результат];


--WAITFOR
--pause for 5 seconds
WAITFOR DELAY '00:00:05';
SELECT 'Продолжение выполнения инструкции' AS [Test]

--pause till 10 o'clock
WAITFOR TIME '10:00:00';
SELECT 'Продолжение выполнения инструкции' AS [Test]
