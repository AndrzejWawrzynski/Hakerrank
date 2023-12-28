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



