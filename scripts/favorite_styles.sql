USE scorealbums;
SELECT Style.Description, COUNT(Album.AlbumID) as `Count`, AVG(Album.Score) as `Average Score`
FROM Album
JOIN AlbumStyle ON Album.AlbumID = AlbumStyle.AlbumID
JOIN Style ON AlbumStyle.StyleID = Style.StyleID
WHERE Album.Score IS NOT NULL
GROUP BY Style.StyleID
ORDER BY `Average Score` DESC
;
