-- Finds country with the min source of carbon emissions from 2000 to 2019
SELECT countries_emissions.country_id, (countries_emissions.Y2019 - countries_emissions.Y2000) AS emissions_difference,countries.country
from countries_emissions 
JOIN countries on countries_emissions.country_id = countries.country_id
GROUP BY countries.country
ORDER BY emissions_difference ASC
LIMIT 11;

-- Finding the continent with the largest change in emissions
SELECT continents.continent, SUM(countries_emissions.Y2019 - countries_emissions.Y2000) AS emissions_change
FROM countries_emissions 
JOIN countries  ON countries_emissions.country_id = countries.country_id
JOIN continents_countries  ON countries.country_id = continents_countries.country_id
JOIN continents ON continents_countries.continent_id = continents.continent_id
GROUP BY continents.continent
ORDER BY emissions_change DESC;