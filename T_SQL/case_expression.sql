--Simple expression CASE
SELECT ProductId,
	   CASE ProductId WHEN 1 THEN 'Один'
					  WHEN 2 THEN 'Два'
					  WHEN 3 THEN 'Три'
					  WHEN 4 THEN 'Четыре'
					  WHEN 5 THEN 'Пять'
					  ELSE '' 
		END AS IdText
FROM Goods;

--Search expression CASE example
SELECT ProductId,
	   CASE WHEN ProductId = 1 THEN 'Один'
            WHEN ProductId = 2 THEN 'Два'
            WHEN ProductId = 3 THEN 'Три'
            WHEN ProductId = 4 THEN 'Четыре'
            WHEN ProductId = 5 THEN 'Пять'
            ELSE '' 
        END AS IdText
FROM Goods;

--More complex search expression CASE example
  SELECT ProductId, Price,
	   CASE WHEN Price > 100 THEN 'Больше 100'
            WHEN Price = 100 THEN 'Равно 100'
            WHEN Price < 100 THEN 'Меньше 100'
            WHEN Price = 50 AND ProductId = 1 THEN 'Цена равна 50 и Id равен 1'
            ELSE 'Нет подходящего условия' 
       END AS Result
FROM Goods;
