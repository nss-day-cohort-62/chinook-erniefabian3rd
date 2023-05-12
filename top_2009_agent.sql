SELECT
e.FirstName || ' ' || e.LastName AS FullName,
ROUND(SUM(i.Total),2) AS TotalSales
FROM Employee e
JOIN Customer c
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
WHERE i.InvoiceDate LIKE '%2009%'
GROUP BY e.EmployeeId
ORDER BY TotalSales DESC
LIMIT 1