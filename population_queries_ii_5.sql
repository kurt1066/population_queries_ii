-- 5. What is the average population of Poland during the time period covered by this dataset?
SELECT c.name, AVG(p.population) AS 'AVG(population) year 2000-2010'
FROM countries AS c
INNER JOIN population_years AS p
	ON c.id = p.country_id
WHERE c.name = 'Poland';