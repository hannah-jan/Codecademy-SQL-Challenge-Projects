-- Q: How many entries in the database are from Africa?
SELECT  continent, COUNT(*)
FROM countries
GROUP BY 1;

-- Q: What was the total population of Oceania in 2005?
WITH all_data AS(
SELECT *
FROM population_years
JOIN countries
ON countries.id = population_years.country_id)
SELECT continent, SUM(population) AS 'Total Population'
FROM all_data
WHERE year = 2005
GROUP BY 1;

-- Q: What is the average population of countries in South America in 2003?

SELECT continent, AVG(population) AS 'Average Population'
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2003
GROUP BY 1;


-- Q: What country had the smallest population in 2007?

SELECT name AS 'Country', MIN(population) AS 'Population'
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2007;

-- Q: What is the average population of Poland during the time period covered by this dataset?

SELECT name as 'Country', AVG(population) AS 'Average Population'
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE name = 'Poland';

-- Q: How many countries have the word "The" in their name?

SELECT DISTINCT * 
FROM countries
WHERE name LIKE '%The%';


-- Q: What was the total population of each continent in 2010?

WITH all_data AS(
SELECT *
FROM population_years
JOIN countries
ON countries.id = population_years.country_id)
SELECT continent, SUM(population) AS 'Total Population'
FROM all_data
WHERE year = 2010
GROUP BY 1;

