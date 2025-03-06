/*JOINING TABLES
Q2.A :

2a: Write a query white returns the following information from the Artist, Albums
and Tracks tables:
a. Artist Name
b. Album Title
c. Track Names
Order the results by Artists
Note: To save the scripts you can start by authoring in a text file and then use the
.read command to execute the file. To help you write the queries, you can view and
download the sample database details and diagram at SQLite Sample Database And
Its Diagram (in PDF format) (sqlitetutorial.net)


*/

/* EDA */
SELECT * FROM artists;
SELECT * FROM albums;
SELECT * FROM tracks;

/* 2A */

SELECT 
	artists.name AS 'Artist Name', 
	albums.Title AS 'Album Title',  
	tracks.name AS 'Track Name'
FROM 
	((albums
INNER JOIN 
	artists ON albums.ArtistId=artists.ArtistId)
INNER JOIN 
	tracks ON albums.AlbumId=tracks.AlbumId)
ORDER BY 
	artists.name;


/* 2.b */
SELECT 
	artists.name AS 'Artist Name', 
	albums.Title AS 'Album Title' ,  
	tracks.name AS 'Track Name'
FROM 
	((albums
INNER JOIN 
	artists ON albums.ArtistId=artists.ArtistId)
INNER JOIN 
	tracks ON albums.AlbumId=tracks.AlbumId)
WHERE 
	tracks.name LIKE '%dancing%'
ORDER BY 
	artists.name;

	
	
/* 2.c */
/* EDA */
SELECT * FROM employees;

SELECT 
	CONCAT (e.FirstName, ' ', e.LastName) AS Employee, 
	CONCAT (m.FirstName, ' ', m.LastName) AS Manager
FROM 
	employees AS e
INNER JOIN 
	employees AS m 
ON 
	e.ReportsTo = m.EmployeeId;


/* 2.d */


SELECT 
	CONCAT (e.FirstName, ' ', e.LastName) AS Employee, 
	CASE
		WHEN e.ReportsTo IS NULL THEN CONCAT (e.FirstName, ' ', e.LastName)
		ELSE CONCAT(m.FirstName, ' ', m.LastName)
	END AS Manager
FROM 
	employees AS e
LEFT JOIN 
	employees AS m 
ON 
	e.ReportsTo = m.EmployeeId;



