/* 3.a : Aggregation*/

SELECT * FROM albums;
SELECT * FROM tracks;


/* JOIN*/

SELECT 
	a.Title AS 'Album Title' , 
	COUNT (t.TrackId) AS 'Number of Tracks'
FROM 
	albums AS a
LEFT JOIN 
	tracks as t
ON 
	a.AlbumId = t.AlbumId
GROUP BY 
	a.AlbumId, a.Title
ORDER BY 
	a.Title;




/* 3.b : HAVING CLAUSE*/

SELECT 
	a.Title AS 'Album Title' , 
	COUNT (t.TrackId) AS 'Number of Tracks'
FROM 
	albums AS a
LEFT JOIN 
	tracks as t
ON 
	a.AlbumId = t.AlbumId
GROUP BY 
	a.AlbumId, a.Title
HAVING 
	COUNT (t.TrackId) > 10
ORDER BY 
	a.Title;