-- 2. What was the total population of Oceania in 2005?

SELECT c.continent, p.year, SUM(population)
FROM countries AS c
JOIN population_years AS p
	ON c.id = p.country_id 
WHERE c.continent = 'Oceania'
	AND p.year = 2005;
