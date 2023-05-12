SELECT
COUNT(il.InvoiceId) AS TrackCount,
t.Name AS TrackName
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate LIKE '%2013%'
GROUP BY il.InvoiceId
ORDER BY TrackCount DESC
LIMIT 12
