SELECT
c.FirstName || ' ' || c.LastName AS FullName,
i.InvoiceId,
i.InvoiceDate,
i.BillingCountry
FROM Invoice i
JOIN Customer c
    ON c.CustomerId = i.CustomerId
WHERE i.BillingCountry = 'Brazil'