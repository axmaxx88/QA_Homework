--���� �� ��������� ������� Goods � Categories �� ���������� ������ �����, �� �� �������������� ����� �������.
--�������� �������
CREATE TABLE Goods (
	ProductId INT IDENTITY(1,1) NOT NULL,
	Category INT NOT NULL,
	ProductName VARCHAR(100) NOT NULL,
	ProductDescription VARCHAR(100) NULL,
	Price MONEY NULL,
	OrderDate DATETIME NULL
);

--���������� ������ � �������
INSERT INTO Goods(Category, ProductName, ProductDescription, Price, OrderDate)
	VALUES (1, '��������� ���� ', NULL, 50, '01.12.2019 08:20:30'),
		   (1, ' ����������', '�������� �������',  30, '10.01.2020 09:00:00'),
		   (1, '�������', NULL, 100, '05.02.2020 13:20:55'),
		   (2, '�������  ',  NULL, 150, '15.03.2020 20:18:20'),
		   (2, '  ��������', '������� ����������� ���� ��������', 100,  '24.04.2020 11:30:45'),
		   (2, '123456789', NULL, 300, '18.05.2020 18:23:32');

--�������� ������� � �����������
CREATE TABLE Categories (
	CategoryId INT IDENTITY(1,1) NOT NULL,
	CategoryName VARCHAR(100) NOT NULL
);

--���������� ������ � ������� � �����������
INSERT INTO Categories
	VALUES ('������������� ����������'),
		   ('��������� ����������');
		   