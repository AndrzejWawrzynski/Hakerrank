/*
Ex21 Revising Aggregations - The Sum Function
Query the total population of all cities in CITY where District is California.
*/

SELECT
    SUM(population) 
FROM city 
WHERE district LIKE 'California';

/*
Ex22 Revising Aggregations - The Count Function
Query a count of the number of cities in CITY having a Population larger than 100000.
*/

SELECT
    COUNT(name)
FROM city
WHERE population > 100000;

/*
Ex23 Revising Aggregations - Averages
Query the average population of all cities in CITY where District is California.
*/

SELECT
    AVG(population)
FROM city
WHERE district LIKE 'California';

/*
Ex24 Japan Population
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
*/

SELECT
    SUM(population)
FROM city
WHERE countrycode = 'JPN';

