--Creating table
CREATE TABLE TestTable (
	UserID INT NOT NULL,
	Post VARCHAR(100) NOT NULL,
	ManagerID INT NULL
);

--Adding data to the table
INSERT INTO TestTable(UserID, Post, ManagerID)
	VALUES (1, 'Директор', NULL),
		   (2, 'Главный бухгалтер', 1),
		   (3, 'Бухгалтер', 2),
		   (4, 'Начальник отдела продаж', 1),
		   (5, 'Старший менеджер по продажам', 4),
		   (6, 'Менеджер по продажам', 5),
		   (7, 'Начальник отдела информационных технологий', 1),
		   (8, 'Старший программист', 7),
		   (9, 'Программист', 8),
		   (10, 'Системный администратор', 7);