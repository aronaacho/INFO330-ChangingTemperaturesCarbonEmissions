-- Finds the top 10 highest temperature change in the year 2000 (Mo)
//Updated Query 2000
SELECT countries_temp.country_id, country, MAX(Y2000) FROM countries_temp 
JOIN countries ON countries.country_id = countries_temp.country_id 
GROUP BY Y2000 
ORDER BY Y2000 
DESC LIMIT 10 OFFSET 1;

--Updated Query 2019
SELECT countries_temp.country_id, country, MAX(Y2019) FROM countries_temp 
JOIN countries ON countries.country_id = countries_temp.country_id 
GROUP BY Y2019
ORDER BY Y2019
DESC LIMIT 10 OFFSET 1;

-- Finds the 10 lowest temperature change in the year 2000 (Mo)
//Updated Query 2000
SELECT countries_temp.country_id, country, MIN(Y2000) FROM countries_temp 
JOIN countries ON countries.country_id = countries_temp.country_id 
GROUP BY Y2000 
ORDER BY Y2000 
ASC LIMIT 10;

--Updated Query 2019 
SELECT countries_temp.country_id, country, MIN(Y2019) FROM countries_temp 
JOIN countries ON countries.country_id = countries_temp.country_id 
GROUP BY Y2019
ORDER BY Y2019
ASC LIMIT 10;
