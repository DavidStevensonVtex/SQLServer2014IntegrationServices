SELECT p.Name as ProductName, p.ProductNumber, DATENAME(mm, t.TransactionDate) AS TransMonth, SUM(t.Quantity) AS TotQuantity
FROM production.product p
	INNER JOIN production.TransactionHistory t
		ON t.ProductID = p.ProductID
WHERE t.TransactionDate BETWEEN '07/01/2013' AND '6/30/2014' 
GROUP BY p.Name, p.ProductNumber, DATENAME(mm, t.TransactionDate)
ORDER BY ProductName, DATENAME(mm, t.TransactionDate)

SELECT MIN(TransactionDate), MAX(TransactionDate)
FROM production.TransactionHistory ;

SELECT * FROM PivotTable ;