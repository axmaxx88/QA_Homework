--Adding restriction NOT NULL
ALTER TABLE Goods ALTER COLUMN Price Money NOT NULL;

--Creating restriction PRIMARY KEY at the column level
CREATE TABLE TestTable(
	CategoryId INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_TestTable PRIMARY KEY,
	CategoryName VARCHAR(100) NOT NULL
);

--Creating restriction PRIMARY KEY at the table level
CREATE TABLE TestTable2(
	CategoryId INT IDENTITY(1,1) NOT NULL,
	CategoryName VARCHAR(100) NOT NULL,
	CONSTRAINT PK_TestTable2 PRIMARY KEY (CategoryId)
);

--Adding PRIMARY KEY to existing table
ALTER TABLE Goods ADD CONSTRAINT PK_Goods PRIMARY KEY (ProductId);

ALTER TABLE Categories ADD CONSTRAINT PK_Categories PRIMARY KEY (CategoryId);

--Deleting test tables
DROP TABLE TestTable;
DROP TABLE TestTable2;

--Creating test table with PRIMARY KEY
CREATE TABLE Categories_Tmp(
	CategoryId INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Categories_Tmp PRIMARY KEY,
	CategoryName VARCHAR(100) NOT NULL
);

--Creating test table with PRIMARY KEY and FOREIGN KEY restrict
CREATE TABLE Goods_Tmp (
	ProductId INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Goods_Tmp PRIMARY KEY,
	Category INT NOT NULL,
	ProductName VARCHAR(100) NOT NULL,
	Price MONEY NULL,
	CONSTRAINT FK_Category FOREIGN KEY (Category) REFERENCES Categories_Tmp (CategoryId)
	ON DELETE CASCADE
	ON UPDATE NO ACTION
);

--Attempt to insert data
INSERT INTO Goods_Tmp(Category, ProductName, Price)
	VALUES (1, 'Системный блок', 50);

--Deleting test tables
DROP TABLE Goods_Tmp;
DROP TABLE Categories_Tmp;

--Adding FOREIGN KEY restrict to table
ALTER TABLE Goods ADD CONSTRAINT FK_Category FOREIGN KEY (Category) 
	REFERENCES Categories (CategoryId);

--Creating restrict UNIQUE during creating table		
CREATE TABLE TestTable(
	Column1 INT NOT NULL CONSTRAINT UQ_Column1 UNIQUE,
	Column2 INT NOT NULL,
	Column3 INT NOT NULL,
	CONSTRAINT UQ_Column2 UNIQUE (Column2)
);

--Adding restrict UNIQUE to existing table
ALTER TABLE TestTable ADD CONSTRAINT UQ_Column3 UNIQUE (Column3);

--Deleting test table
DROP TABLE TestTable;

--Creating restrict CHECK during creating table
CREATE TABLE TestTable(
	Column1 INT NOT NULL,
	Column2 INT NOT NULL,
	CONSTRAINT CK_Column1 CHECK (Column1 <> 0)
);

--Adding restrict CHECK to existing table
ALTER TABLE TestTable ADD CONSTRAINT CK_Column2 CHECK (Column2 > Column1);

--Deleting test table
DROP TABLE TestTable;

--Creating restrict DEFAULT during creating table
CREATE TABLE TestTable(
	Column1 INT NULL CONSTRAINT DF_Column1 DEFAULT (1),
	Column2 INT NULL
);

--Addind restrict DEFAULT to existing table
ALTER TABLE TestTable ADD CONSTRAINT DF_Column2 DEFAULT (2) FOR Column2;

--Deleting test table
DROP TABLE TestTable;

--Deleting restrict FOREIGN KEY
ALTER TABLE Goods DROP CONSTRAINT FK_Category;
