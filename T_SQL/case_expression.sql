--Simple expression CASE
SELECT ProductId,
	   CASE ProductId WHEN 1 THEN '����'
					  WHEN 2 THEN '���'
					  WHEN 3 THEN '���'
					  WHEN 4 THEN '������'
					  WHEN 5 THEN '����'
					  ELSE '' 
		END AS IdText
FROM Goods;

--Search expression CASE example
SELECT ProductId,
	   CASE WHEN ProductId = 1 THEN '����'
            WHEN ProductId = 2 THEN '���'
            WHEN ProductId = 3 THEN '���'
            WHEN ProductId = 4 THEN '������'
            WHEN ProductId = 5 THEN '����'
            ELSE '' 
        END AS IdText
FROM Goods;

--More complex search expression CASE example
  SELECT ProductId, Price,
	   CASE WHEN Price > 100 THEN '������ 100'
            WHEN Price = 100 THEN '����� 100'
            WHEN Price < 100 THEN '������ 100'
            WHEN Price = 50 AND ProductId = 1 THEN '���� ����� 50 � Id ����� 1'
            ELSE '��� ����������� �������' 
       END AS Result
FROM Goods;
