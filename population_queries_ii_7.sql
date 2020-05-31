-- 7. What was the total population of each continent in 2010?
WITH africa AS (
	SELECT continent, year, SUM(population)
	FROM countries AS c
	JOIN population_years AS p
		ON c.id = p.country_id 
	WHERE c.continent = 'Africa'
		AND p.year = 2010
),
asia AS (
	SELECT continent, year, SUM(population)
	FROM countries AS c
	JOIN population_years AS p
		ON c.id = p.country_id 
	WHERE c.continent = 'Asia'
		AND p.year = 2010
), 
europe AS (
	SELECT continent, year, SUM(population)
	FROM countries AS c
	JOIN population_years AS p
		ON c.id = p.country_id 
	WHERE c.continent = 'Europe'
		AND p.year = 2010
),
north_america AS (
	SELECT continent, year, SUM(population)
	FROM countries AS c
	JOIN population_years AS p
		ON c.id = p.country_id 
	WHERE c.continent = 'North America'
		AND p.year = 2010
),
oceania AS(
	SELECT continent, year, SUM(population)
	FROM countries AS c
	JOIN population_years AS p
		ON c.id = p.country_id 
	WHERE c.continent = 'Oceania'
		AND p.year = 2010
),
south_america AS (
	SELECT continent, year, SUM(population)
	FROM countries AS c
	JOIN population_years AS p
		ON c.id = p.country_id 
	WHERE c.continent = 'South America'
		AND p.year = 2010
)
SELECT *
FROM africa
UNION 
SELECT *
FROM asia
UNION
SELECT *
FROM europe
UNION 
SELECT * 
FROM north_america
UNION 
SELECT *
FROM oceania
UNION
SELECT *
FROM south_america
ORDER BY 3 ASC;
