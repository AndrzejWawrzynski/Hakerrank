/*
Ex31 Weather Observation Station 14
Query the greatest value of the Northern Latitudes (LAT_N) from STATION 
that is less than 137.2345. Truncate your answer to 4 decimal places.
*/

SELECT
    ROUND(MAX(lat_n),4)
FROM station
WHERE lat_n < 137.2345;

/*
Ex32 Weather Observation Station 15
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION 
that is less than 137.2345 . Round your answer to 4 decimal places.
*/

SELECT
    ROUND(long_w,4)
FROM station
WHERE lat_n = 
(
	SELECT 
		MAX(lat_n) 
	FROM station 
	WHERE lat_n < 137.2345
);

/*
Ex33 Weather Observation Station 16
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. 
Round your answer to 4 decimal places.
*/

SELECT
    ROUND(MIN(lat_n),4)
FROM station
WHERE lat_n > 38.7780;

/*
Ex34 
Query the Western Longitude (LONG_W) where the smallest Northern Latitude (LAT_N) 
in STATION is greater than 38.7780. Round your answer to 4 decimal places.
*/

SELECT
    ROUND(long_w,4)
FROM station
WHERE lat_n = 
(
    SELECT
        MIN(lat_n)
    FROM station
    WHERE lat_n > 38.7780
);

/*
Ex35 Population Census
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT
    SUM(city.population)
FROM city
JOIN country
ON city.countrycode = country.code
WHERE country.continent LIKE 'Asia';

/*
Ex36 African Cities
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT
    city.name
FROM city
JOIN country
ON city.countrycode = country.code
WHERE country.continent LIKE 'Africa';

/*
Ex37 Average Population of Each Continent
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT
    country.continent,
    FLOOR(AVG(city.population))
FROM city
JOIN country
ON city.countrycode = country.code
GROUP BY country.continent;

/*
Ex38 Draw The Triangle 1
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
* * * * *
* * * *
* * *
* *
*

Write a query to print the pattern P(20).
*/

DELIMITER $$
CREATE PROCEDURE pattern(n INT)
BEGIN 
    DECLARE i INT DEFAULT n;
        WHILE i > 0 DO
            SELECT IF (i = 0, '*', REPEAT('* ', i));
            SET i = i - 1;
        END WHILE;
END $$
DELIMITER ;
CALL pattern(20);

-- OR

DELIMITER $$
CREATE PROCEDURE pattern()
BEGIN 
    DECLARE i INT DEFAULT 20;
        WHILE i > 0 DO
            SELECT IF (i = 0, '*', REPEAT('* ', i));
            SET i = i - 1;
        END WHILE;
END $$
DELIMITER ;
CALL pattern();

/*
Ex39 Draw The Triangle 2
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
*
* * 
* * *
* * * *
* * * * *
Write a query to print the pattern P(20).
*/

DELIMITER $$
CREATE PROCEDURE pattern2()
BEGIN
	DECLARE i INT DEFAULT 1;
        WHILE i < 21 DO
			SELECT REPEAT('* ', i);
			SET i = i + 1;
        END WHILE;
END $$
DELIMITER ;
CALL pattern2()

-- OR

DELIMITER $$
CREATE PROCEDURE pattern2(n INT)
BEGIN
	DECLARE i INT DEFAULT 1;
        WHILE i < n DO
			SELECT IF (i = 1, '*', REPEAT('* ', i));
			SET i = i + 1;
        END WHILE;
END $$
DELIMITER ;
CALL pattern2(21)

/*
Ex40 



