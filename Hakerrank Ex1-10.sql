# BASIC - MySQL

/*
Ex1 Revising the Select Query I
Query all columns for all American cities in the CITY table with populations larger than 100000. 
The CountryCode for America is USA.
*/

SELECT 
	* 
FROM city 
WHERE population > 100000 AND countrycode = 'USA';

/*
Ex2 Revising the Select Query II
Query the NAME field for all American cities in the CITY table with populations larger than 120000. 
The CountryCode for America is USA.
*/

SELECT
	name
FROM city
WHERE countrycode = 'USA' AND population > 120000;

/*
Ex3 Select All
Query all columns (attributes) for every row in the CITY table.
*/

SELECT 
	* 
FROM city;

/*
Ex4 Select By ID
Query all columns for a city in CITY with the ID 1661.
*/

SELECT
	*
FROM city 
WHERE id = 1661;

/*
Ex4 Japanese Cities' Attributes
Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
*/

SELECT
	*
FROM city 
WHERE countrycode = 'JPN';

/*
Ex5 Japanese Cities' Names
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
*/

SELECT
	name 
FROM city 
WHERE countrycode ='JPN';

/*
Ex6 Weather Observation Station 1
Query a list of CITY and STATE from the STATION table.
*/

SELECT
	city, 
    state 
FROM station;

/*
Ex7 Weather Observation Station 3
Query a list of CITY names from STATION for cities that have an even ID number. 
Print the results in any order, but exclude duplicates from the answer.
*/

SELECT
	DISTINCT city 
FROM station 
WHERE id % 2 = 0;

/*
Ex8 Weather Observation Station 4
Find the difference between the total number of CITY entries in the table 
and the number of distinct CITY entries in the table.
*/

SELECT
	COUNT(city) - COUNT(DISTINCT city) 
FROM station;

/*
Ex9 Weather Observation Station 5
Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, 
choose the one that comes first when ordered alphabetically.
You can write two separate queries to get the desired output. It need not be a single query.
*/

SELECT 
	city, 
    CHAR_LENGTH(city) AS name_length 
FROM station 
ORDER BY name_length, city 
LIMIT 1;

SELECT 
	city, 
    CHAR_LENGTH(city) AS name_length 
FROM station 
ORDER BY name_length DESC, city 
LIMIT 1;

/*
Ex10 Weather Observation Station 6
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates.
*/

SELECT
	DISTINCT city 
FROM station 
WHERE city LIKE ('a%') 
	OR city LIKE('e%') 
    OR city LIKE ('i%') 
    OR city LIKE ('o%') 
    OR city LIKE ('u%');
    
-- OR

SELECT 
    DISTINCT city 
FROM station 
WHERE city REGEXP "^[aeiou]";


