SELECT
e.FirstName || ' ' || e.LastName AS FullName,
ROUND(SUM(i.Total),2) AS TotalSales
FROM Employee e
JOIN Customer c
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId