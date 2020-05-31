-- 3. What is the average population of countries in South America in 2003?
SELECT c.continent, p.year, AVG(population) 
FROM countries AS c
INNER JOIN population_years AS p
	ON c.id = p.country_id
WHERE c.continent = 'South America'
	AND p.year = 2003;