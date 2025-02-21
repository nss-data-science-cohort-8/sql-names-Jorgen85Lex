SELECT *
FROM names;

SELECT SUM(num_registered)
FROM names;

SELECT name, year, COUNT(*) AS count
FROM names
GROUP BY name, year
ORDER BY count DESC
LIMIT 1;

SELECT MAX (year)
FROM names;

SELECT MIN(year)
FROM names;

SELECT year, COUNT(*) AS registered_count
FROM names 
GROUP BY year
ORDER BY registered_count DESC
LIMIT 1;

SELECT DISTINCT name
FROM names;

SELECT gender, COUNT(*) as count
FROM names
GROUP BY gender
ORDER BY count;

SELECT name, gender,SUM(num_registered) as total_registered
FROM names
WHERE gender = 'M'
GROUP BY name, gender
ORDER BY total_registered DESC
LIMIT 1;

SELECT name, gender, SUM(num_registered) AS total_registered
FROM names
WHERE gender = 'F'
	AND year 	BETWEEN 2000 AND 2009
GROUP BY name, gender
ORDER BY total_registered DESC
LIMIT 1;

SELECT year, COUNT(DISTINCT name) AS distinct_naming
FROM names
GROUP BY year
ORDER BY distinct_naming DESC
LIMIT 1;

SELECT name, gender, SUM(num_registered) AS total_registered
FROM names
WHERE gender = 'F'
	AND name LIKE 'X%'
GROUP BY name, gender
ORDER BY total_registered DESC
LIMIT 1;

SELECT DISTINCT Name
FROM names
WHERE SUBSTR(name, 1, 1) = 'Q'
  AND SUBSTR(name, 2, 1) != 'U';

SELECT DISTINCT name, SUM(num_registered) AS total_registered
FROM names
WHERE name IN ('Steven', 'Stephen')
GROUP BY name
ORDER BY total_registered DESC
LIMIT 2;

SELECT name
FROM names
GROUP BY name
HAVING COUNT(gender) = 2


