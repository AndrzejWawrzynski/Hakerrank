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

/*
Ex25 Population Density Difference
Query the difference between the maximum and minimum populations in CITY.
*/

SELECT
    (MAX(population) - MIN(population))
FROM city;

/*
Ex26 Average Population
Query the average population for all cities in CITY, rounded down to the nearest integer.
*/

SELECT
    ROUND(AVG(population))
FROM city;

/*
Ex27 The Blunder
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
but did not realize her keyboard's '0' key was broken until after completing the calculation. 
She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), 
and the actual average salary.
Write a query calculating the amount of error (i.e.:  actual - miscalculated average monthly salaries), 
and round it up to the next integer.
*/

SELECT 
    ROUND(AVG(Salary)) - ROUND(AVG(REPLACE(Salary, 0, "")))
FROM employees;

/*
Ex28 Top Earners
We define an employee's total earnings to be their monthly salary x month worked, 
and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees 
who have maximum total earnings. Then print these values as  2 space-separated integers.
*/

SELECT
    CONCAT (MAX(salary*months), ' ', COUNT(*)) 
FROM employee 
WHERE salary*months = (SELECT MAX(salary*months) FROM employee);

/*
Ex29 Weather Observation Station 2
Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.
*/

SELECT
    ROUND(SUM(lat_n),2),
    ROUND(SUM(long_w),2)
FROM station;

/*
Ex30 Weather Observation Station 13
Query the sum of Northern Latitudes (LAT_N) from STATION 
having values greater than 38.7880 and less than 137.2345. 
Truncate your answer to 4 decimal places.
*/

SELECT
    ROUND(SUM(lat_n),4)
FROM station
WHERE lat_n BETWEEN 38.7879 AND 137.2344;

-- OR

SELECT
    ROUND(SUM(lat_n),4)
FROM station
WHERE lat_n > 38.7880 AND lat_n < 137.2345;

