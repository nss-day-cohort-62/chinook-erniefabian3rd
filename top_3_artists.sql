SELECT
COUNT(il.InvoiceId) AS TrackCount,
ar.Name AS ArtistName
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
JOIN Album al
    ON t.AlbumId = al.AlbumId
JOIN Artist ar
    ON ar.ArtistId = al.ArtistId
GROUP BY ArtistName
ORDER BY TrackCount DESC
LIMIT 3