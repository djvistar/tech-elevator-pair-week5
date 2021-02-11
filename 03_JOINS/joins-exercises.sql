-- Write queries to return the following:
-- The following queries utilize the "world" database.

-- 1. The city name, country name, and city population of all cities in Europe with population greater than 1 million
-- (36 rows)
SELECT ci.name, c.name, ci.population
FROM city ci
JOIN country c ON c.code = ci.countrycode
WHERE c.continent = 'Europe'
AND ci.population > 1000000;


-- 2. The city name, country name, and city population of all cities in countries where French is an official language and the city population is greater than 1 million
-- (2 rows)
SELECT ci.name, c.name, ci.population
FROM city ci
JOIN country c ON c.code = ci.countrycode
JOIN countrylanguage lan ON ci.countrycode = lan.countrycode
WHERE language = 'French'
AND isofficial = true
AND ci.population > 1000000;




-- 3. The name of the countries and continents where the language Javanese is spoken
-- (1 row)
SELECT c.name, c.continent
FROM country c
JOIN countrylanguage lan ON c.code = lan.countrycode
WHERE language = 'Javanese';


-- 4. The names of all of the countries in Africa that speak French as an official language
-- (5 row)
SELECT c.name
FROM country c
JOIN countrylanguage lan ON c.code = lan.countrycode
WHERE language = 'French'
AND isofficial = true
AND continent = 'Africa';


-- 5. The average city population of cities in Europe
-- (average city population in Europe: 287,684)
SELECT AVG(ci.population)
FROM city ci
JOIN country c ON ci.countrycode = c.code
WHERE continent = 'Europe';


-- 6. The average city population of cities in Asia
-- (average city population in Asia: 395,019)

-- 7. The number of cities in countries where English is an official language
-- (number of cities where English is official language: 523)

-- 8. The average population of cities in countries where the official language is English
-- (average population of cities where English is official language: 285,809)

-- 9. The names of all of the continents and the population of the continent’s largest city
-- (6 rows, largest population for North America: 8,591,309)

-- 10. The names of all of the cities in South America that have a population of more than 1 million people and the official language of each city’s country
-- (29 rows)
