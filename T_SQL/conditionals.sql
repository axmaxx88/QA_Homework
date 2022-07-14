--Ex. 1
DECLARE @TestVar1 INT;
DECLARE @TestVar2 VARCHAR(20);

SET @TestVar1 = 5;

IF @TestVar1 > 0
	SET @TestVar2 = '������ 0'
ELSE
	SET @TestVar2 = '������ 0'

SELECT @TestVar2 AS [�������� TestVar1];


--Ex. 2
DECLARE @TestVar1 INT;
DECLARE @TestVar2 VARCHAR(20);

SET @TestVar1 = 0;

IF @TestVar1 > 0
	SET @TestVar2 = '������ 0'

SELECT @TestVar2 AS [�������� TestVar1];


--Ex. 3
DECLARE @TestVar1 INT;
DECLARE @TestVar2 VARCHAR(20);

SET @TestVar1 = -5;

IF @TestVar1 > 0 OR @TestVar1 = -5
	SET @TestVar2 = '�������� ��������'

SELECT @TestVar2 AS [�������� TestVar1];


--Ex. 4
DECLARE @TestVar VARCHAR(20);

IF EXISTS(SELECT * FROM Goods)
	SET @TestVar = '������ ����'
ELSE
	SET @TestVar = '������� ���'

SELECT @TestVar AS [������� �������];


--Ex. 5
DECLARE @TestVar1 INT;
DECLARE @TestVar2 VARCHAR(20);

SET @TestVar1 = 1;

SELECT @TestVar2 = CASE @TestVar1 WHEN 1 THEN '����'
								  WHEN 2 THEN '���'
								  ELSE '�����������'
			     END;

SELECT @TestVar2 AS [�����];


--Ex. 6
DECLARE @TestVar1 INT;
DECLARE @TestVar2 VARCHAR(20), @TestVar3 VARCHAR(20);

SET @TestVar1 = 5;

IF @TestVar1 NOT IN (0, 1, 2)
BEGIN
	
	SET @TestVar2 = '������ ����������';
	SET @TestVar3 = '������ ����������';
	
END
SELECT @TestVar2 AS [�������� TestVar2],
	   @TestVar3 AS [�������� TestVar3];


--Ex. 7
DECLARE @A INT = 5,
        @B INT = 3,
        @true_value INT = 1,
        @false_value INT = 0;

SELECT IIF ( @A >= @B, @true_value, @false_value ) AS Result;
	   