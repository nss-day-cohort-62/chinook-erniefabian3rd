SELECT 
il.*,
t.Name
FROM InvoiceLine il
JOIN Track t
    ON il.TrackId = t.TrackId