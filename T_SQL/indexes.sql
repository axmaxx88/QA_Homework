--Creating clustered index
CREATE UNIQUE CLUSTERED INDEX IX_Clustered ON Goods
(
	  ProductId ASC
);

--Creating nonclustered index
CREATE NONCLUSTERED INDEX IX_NonClustered ON Goods
(
	  Category ASC
);

--Deleting index
DROP INDEX IX_NonClustered ON Goods;

--Creating nonclustered index with an included column
CREATE NONCLUSTERED INDEX IX_NonClustered ON Goods
(
	Category ASC,
	ProductName ASC
)
	INCLUDE (Price);

--Creating nonclustered index with an included column (parameter DROP_EXISTING)
CREATE NONCLUSTERED INDEX IX_NonClustered ON Goods
(
	Category ASC,
	ProductName ASC
)
	INCLUDE (Price) 
WITH (DROP_EXISTING = ON);

