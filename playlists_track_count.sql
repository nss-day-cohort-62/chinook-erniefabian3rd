SELECT
COUNT(*) AS TotalNumTracks,
pl.Name
FROM PlaylistTrack pt
JOIN Playlist pl
    ON pt.PlaylistId = pl.PlaylistId
GROUP BY pl.Name
