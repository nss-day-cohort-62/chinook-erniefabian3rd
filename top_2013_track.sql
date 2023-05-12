SELECT
COUNT(i.InvoiceId) AS TrackCount,
t.Name AS TrackName
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate LIKE '%2013%'
GROUP BY TrackName
HAVING TrackCount = 2
ORDER BY TrackCount DESC
