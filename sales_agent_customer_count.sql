SELECT
e.FirstName || ' ' || e.LastName AS FullName,
COUNT(c.CustomerId) AS CustomerCount
FROM Employee e
JOIN Customer c
    ON e.EmployeeId = c.SupportRepId
GROUP BY c.SupportRepId