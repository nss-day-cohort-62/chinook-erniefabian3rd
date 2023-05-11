SELECT
i.Total,
c.FirstName || ' ' || c.LastName AS CustomerFullName,
c.Country,
e.FirstName || ' ' || e.LastName AS AgentFullName
FROM Customer c
JOIN Invoice i
    ON i.CustomerId = c.CustomerId
JOIN Employee e
    ON e.EmployeeId = c.SupportRepId