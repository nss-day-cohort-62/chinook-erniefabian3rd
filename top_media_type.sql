SELECT
COUNT(il.InvoiceId) AS MediaTypeCount,
mt.Name AS MediaTypeName
FROM InvoiceLine il
JOIN Track t
    ON il.TrackId = t.TrackId
JOIN MediaType mt
    ON mt.MediaTypeId = t.MediaTypeId
GROUP BY MediaTypeName
ORDER BY MediaTypeCount DESC
LIMIT 1