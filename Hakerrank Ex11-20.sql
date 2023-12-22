/*
Ex11 Weather Observation Station 7
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
Your result cannot contain duplicates.
*/

SELECT
	DISTINCT city 
FROM station 
WHERE city LIKE ('%a') 
	OR city LIKE ('%e') 
    OR city LIKE ('%i') 
    OR city LIKE ('%o') 
    OR city LIKE ('%u');
    
-- OR

SELECT 
	DISTINCT city 
FROM station 
WHERE city REGEXP '[aeiou]$';

/*
Ex12 Weather Observation Station 8 
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
as both their first and last characters. Your result cannot contain duplicates.
*/

SELECT
	DISTINCT city 
FROM station 
WHERE (city LIKE "%a" 
		OR city LIKE "%e" 
        OR city LIKE "%i" 
        OR city LIKE "%o" 
        OR city LIKE "%u") 
	AND 
		(city LIKE "a%" 
        OR city LIKE "e%" 
        OR city LIKE "i%" 
        OR city LIKE "o%" 
        OR city LIKE "u%");
-- OR

SELECT 
	DISTINCT city 
FROM station 
WHERE LOWER(city) REGEXP '^[a,e,i,o,u]' 
	AND LOWER(city) REGEXP '[a,e,i,o,u]$';
    
/*
Ex13 Weather Observation Station 9
Query the list of CITY names from STATION that do not start with vowels. 
Your result cannot contain duplicates.
*/

SELECT
	DISTINCT city 
FROM station 
WHERE city NOT LIKE ('a%') 
	AND city NOT LIKE ('e%') 
    AND city NOT LIKE ('i%') 
    AND city NOT LIKE ('o%') 
    AND city NOT like ('u%');
    
-- OR

SELECT 
	DISTINCT city 
FROM station
WHERE city NOT REGEXP "^[aeiou]";

/*
Ex14 Weather Observation Station 10
Query the list of CITY names from STATION that do not end with vowels. 
Your result cannot contain duplicates.
*/

SELECT 
	DISTINCT city 
FROM station 
WHERE city NOT LIKE ('%a') 
	AND city NOT LIKE ('%e') 
    AND city NOT LIKE ('%i') 
    AND city NOT LIKE ('%o') 
    AND city NOT LIKE ('%u');
    
-- OR

SELECT 
	DISTINCT city 
FROM station 
WHERE city NOT REGEXP '[aeiou]$';

/*
Ex15 Weather Observation Station 11
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates.
*/

SELECT
	DISTINCT city 
FROM station 
WHERE (city NOT LIKE ('a%') 
		AND city NOT LIKE ('e%') 
		AND city NOT LIKE ('i%') 
		AND city NOT LIKE ('o%') 
		AND city NOT LIKE ('u%')) 
    OR 
		(city NOT LIKE ('%a') 
        AND city NOT LIKE ('%e') 
        AND city NOT LIKE ('%i') 
        AND city NOT LIKE ('%o') 
        AND city NOT like ('%u'));
        
-- OR

SELECT 
	DISTINCT city 
FROM station 
WHERE city NOT REGEXP '^[aeiou]' 
	OR city NOT REGEXP '[aeiou]$';
    
/*
Ex16 Weather Observation Station 12
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
Your result cannot contain duplicates.
*/

SELECT
	DISTINCT city 
FROM station 
WHERE (city NOT LIKE ('a%') 
		AND city NOT LIKE ('e%') 
		AND city NOT LIKE ('i%') 
		AND city NOT LIKE ('o%') 
		AND city NOT LIKE ('u%')) 
    AND
		(city NOT LIKE ('%a') 
        AND city NOT LIKE ('%e') 
        AND city NOT LIKE ('%i') 
        AND city NOT LIKE ('%o') 
        AND city NOT like ('%u'));
        
-- OR

SELECT 
	DISTINCT city 
FROM station 
WHERE city NOT REGEXP '^[aeiou]' 
	AND city NOT REGEXP '[aeiou]$';
    
/*
Ex17 Employee Names
Write a query that prints a list of employee names (i.e.: the name attribute) 
from the Employee table in alphabetical order.
*/

SELECT 
	name 
FROM employee
ORDER BY name;

/*
Ex18
Write a query that prints a list of employee names (i.e.: the name attribute) for employees 
in Employee having a salary greater than 2000$ per month who have been employees for less than 10 months. 
Sort your result by ascending employee_id.
*/

SELECT 
	name 
FROM employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id;


