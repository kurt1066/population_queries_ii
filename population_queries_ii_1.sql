-- 1. How many entries in the database are from Africa?
SELECT DISTINCT continent, COUNT(*)
FROM countries
GROUP BY continent
ORDER BY 2 DESC;
