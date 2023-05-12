SELECT
il.*,
t.Name AS TrackName,
ar.Name AS ArtistName
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
JOIN Album al
    ON t.AlbumId = al.AlbumId
JOIN Artist ar
    ON al.ArtistId = ar.ArtistId