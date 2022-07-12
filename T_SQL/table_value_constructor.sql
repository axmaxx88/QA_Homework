--Add data into table with VALUES
INSERT INTO Goods(Category, ProductName, ProductDescription, Price, OrderDate)
	VALUES (1, 'Системный блок ', NULL, 50, '01.12.2019 08:20:30'),
		   (1, ' Клавиатура', 'Подлежит ремонту',  30, '10.01.2020 09:00:00'),
		   (1, 'Монитор', NULL, 100, '05.02.2020 13:20:55'),
		   (2, 'Планшет  ',  NULL, 150, '15.03.2020 20:18:20'),
		   (2, '  Смартфон', 'Хорошее соотношение цена качество', 100,  '24.04.2020 11:30:45'),
		   (2, '123456789', NULL, 300, '18.05.2020 18:23:32');

--Table data generation with VALUES in the section FROM 
SELECT * FROM (VALUES (1, 'Компьютер', 500),
                      (2, 'Принтер', 300),
                      (3, 'Монитор', 300)
               ) AS TmpTable (ProductId, ProductName, Summa);

			   