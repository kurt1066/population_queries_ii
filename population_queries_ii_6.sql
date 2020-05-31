-- 6. How many countries have the word "The" in their name?
SELECT COUNT(name) AS 'COUNT(name) Countries with "The"'
FROM countries
WHERE name LIKE '% The%';