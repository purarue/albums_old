USE scorealbums;
SELECT Genre.Description, COUNT(Album.AlbumID) as `Count` AVG(Album.Score) as `Average Score`
FROM Album
JOIN AlbumGenre ON Album.AlbumID = AlbumGenre.AlbumID
JOIN Genre ON AlbumGenre.GenreID = Genre.GenreID
WHERE Album.Score IS NOT NULL
GROUP BY Genre.GenreID
ORDER BY `Average Score` DESC
;
