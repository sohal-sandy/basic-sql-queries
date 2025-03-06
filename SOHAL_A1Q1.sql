
/*EDA*/
SELECT * FROM customers;

/*Q1A: */

SELECT 
	CONCAT (FirstName, ',', LastName) AS FullName,
	Company, 
	City, 
	State 
FROM 
	customers
ORDER BY 
	City;

/*Q1B:*/

SELECT 
	CONCAT (FirstName, ',', LastName) AS FullName, 
	Company, 
	City, 
	State 
FROM 
	customers
WHERE 
	Country='Canada' OR Country='USA'
ORDER BY 
	City;

/*Q1C:*/

SELECT 
	CONCAT (FirstName, ',', LastName) AS FullName, 
	Company, 
	City, 
	State 
FROM 
	customers
WHERE 
	LastName LIKE 'M%' 
AND 
	(Country='Canada' OR Country='USA')
ORDER BY 
	City;