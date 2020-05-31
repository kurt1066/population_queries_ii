-- 4. What country had the smallest population in 2007?
SELECT c.name AS 'country', c.continent, p.population, p.year 
FROM countries AS c
INNER JOIN population_years AS P
	ON c.id = p.country_id
WHERE p.year = 2007
	AND population IS NOT NULL 
ORDER BY population ASC
LIMIT 1;