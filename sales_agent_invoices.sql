SELECT
e.FirstName || ' ' || e.LastName AS FullName,
i.InvoiceId
FROM Customer c
JOIN Employee e
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
WHERE e.Title = 'Sales Support Agent'