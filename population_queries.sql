
-- Q: What years are covered by the dataset? 
SELECT DISTINCT year from population_years;


--Q: What is the largest population size for Gabon in this dataset?

SELECT year, MAX(population) as "Largest population"
FROM population_years
WHERE country = 'Gabon';


--Q: What were the 10 lowest population countries in 2005?
SELECT country, population
FROM population_years
WHERE year = 2005
ORDER BY 2 ASC
LIMIT 10;

--Q: What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT DISTINCT country
FROM population_years
WHERE population > 100 AND year = 2010;

--Q: How many countries in this dataset have the word “Islands” in their name?
SELECT  DISTINCT country
FROM population_years
WHERE country LIKE '%Islands%';

--Q: What is the difference in population between 2000 and 2010 in Indonesia?
SELECT population
FROM population_years
WHERE country = 'Indonesia' AND year = 2010;

SELECT population
FROM population_years
WHERE country = 'Indonesia' AND year = 2000;

SELECT 242.96834 - 214.67661 AS 'difference (millions)'

 
