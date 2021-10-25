use scorealbums;
SELECT Reason.Description, COUNT(Album.AlbumID) as `Count`, AVG(Album.Score) as `Average Score`
FROM Album
JOIN AlbumReason ON Album.AlbumID = AlbumReason.AlbumID
JOIN Reason ON AlbumReason.ReasonID = Reason.ReasonID
WHERE Album.Score IS NOT NULL
GROUP BY Reason.ReasonID
ORDER BY `Average Score` DESC
;
