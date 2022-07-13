--Creating SEQUENCE primary value of 1 and increase by 1
CREATE SEQUENCE TestSequence
     START WITH 1
     INCREMENT BY 1;

--Creating SEQUENCE primary value of 0 and decrease by 1
CREATE SEQUENCE TestSequence
     START WITH 0
     INCREMENT BY -1;

--Creating SEQUENCE with maximum value	 
CREATE SEQUENCE TestSequence
     AS INT
     START WITH 1
     INCREMENT BY 1
     MINVALUE 1
     MAXVALUE 50;

--Modifying parameters with existing SEQUENCE
ALTER SEQUENCE TestSequence
     RESTART WITH 1
     INCREMENT BY 1
     MINVALUE 1
     MAXVALUE 50;

--Restart SEQUENCE
ALTER SEQUENCE TestSequence
     RESTART WITH 1;

--Access to SEQUENCE in SELECT
SELECT NEXT VALUE FOR TestSequence;
SELECT NEXT VALUE FOR TestSequence;
SELECT NEXT VALUE FOR TestSequence;

--Instruction INSERT INTO with using SEQUENCE
CREATE TABLE #TmpTable (
	ProductId INT NOT NULL,
	ProductName VARCHAR(100) NOT NULL
);

INSERT INTO #TmpTable
     VALUES (NEXT VALUE FOR TestSequence, 'Компьютер'),
            (NEXT VALUE FOR TestSequence, 'Монитор'),
            (NEXT VALUE FOR TestSequence, 'Клавиатура');

SELECT * FROM #TmpTable;

--Deleting SEQUENCE
DROP SEQUENCE TestSequence;		  