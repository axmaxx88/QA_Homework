SELECT OrderDate AS [Initial date],
	   GETDATE() AS [Current date],
	   DATENAME(M, OrderDate) AS [Date Name],
	   DATEPART(M, OrderDate) AS [Month number],
	   DAY(OrderDate) AS [Day],
	   MONTH(OrderDate) AS [MONTH],
	   YEAR(OrderDate) AS [Year],
	   DATEDIFF(D, '01.11.2019', OrderDate) AS [Amount of days],
	   DATEADD(D, 5, OrderDate) AS [+ 5 days],
	   ISDATE(OrderDate) AS [Is it a date]
FROM Goods;

SELECT DATEDIFF(D, OrderDate, GETDATE()) AS [Amount of date], DATEPART(yyyy, OrderDate) AS [Year]
FROM Goods;