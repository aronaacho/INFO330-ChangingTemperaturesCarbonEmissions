-- NORMALIZATION

.import global_temp_change_UPDATED.csv temp_change
.import carbon_emissions_UPDATED.csv emissions
.import country_continents_UPDATED.csv countries_continents

-- changing to proper data types 
-- emissions
// creating emissions_temp_table table with proper types
CREATE TABLE emissions_datatype (
  "Country" TEXT,
  "Source" TEXT,
  "Y2000" FLOAT,
  "Y2001" FLOAT,
  "Y2002" FLOAT,
  "Y2003" FLOAT,
  "Y2004" FLOAT,
  "Y2005" FLOAT,
  "Y2006" FLOAT,
  "Y2007" FLOAT,
  "Y2008" FLOAT,
  "Y2009" FLOAT,
  "Y2010" FLOAT,
  "Y2011" FLOAT,
  "Y2012" FLOAT,
  "Y2013" FLOAT,
  "Y2014" FLOAT,
  "Y2015" FLOAT,
  "Y2016" FLOAT,
  "Y2017" FLOAT,
  "Y2018" FLOAT,
  "Y2019" FLOAT
);

INSERT INTO emissions_datatype 
SELECT
  Country,
  Source,
	Y2000,
	Y2001,
	Y2002,
	Y2003,
	Y2004,
	Y2005,
	Y2006,
	Y2007,
	Y2008,
	Y2009,
	Y2010,
	Y2011,
	Y2012,
	Y2013,
	Y2014,
	Y2015,
	Y2016,
	Y2017,
	Y2018,
	Y2019
FROM emissions;

DROP TABLE emissions;

ALTER TABLE emissions_datatype
RENAME TO emissions;

-- temp_change
CREATE TABLE temp_datatype (
  "Area Code" TEXT,
  "Country" TEXT,
  "Y2000" FLOAT,
  "Y2001" FLOAT,
  "Y2002" FLOAT,
  "Y2003" FLOAT,
  "Y2004" FLOAT,
  "Y2005" FLOAT,
  "Y2006" FLOAT,
  "Y2007" FLOAT,
  "Y2008" FLOAT,
  "Y2009" FLOAT,
  "Y2010" FLOAT,
  "Y2011" FLOAT,
  "Y2012" FLOAT,
  "Y2013" FLOAT,
  "Y2014" FLOAT,
  "Y2015" FLOAT,
  "Y2016" FLOAT,
  "Y2017" FLOAT,
  "Y2018" FLOAT,
  "Y2019" FLOAT
);

INSERT INTO temp_datatype 
SELECT
	'Area Code',
	Country,
	Y2000,
	Y2001,
	Y2002,
	Y2003,
	Y2004,
	Y2005,
	Y2006,
	Y2007,
	Y2008,
	Y2009,
	Y2010,
	Y2011,
	Y2012,
	Y2013,
	Y2014,
	Y2015,
	Y2016,
	Y2017,
	Y2018,
	Y2019
FROM temp_change;

DROP TABLE temp_change;

ALTER TABLE temp_datatype
RENAME TO temp_change;

-- making countries table
CREATE TABLE countries (country_id INTEGER PRIMARY KEY, country TEXT, continent TEXT);
INSERT INTO countries (country, continent) SELECT name, region from countries_continents;

-- making continents table
CREATE TABLE continents (continent_id INTEGER PRIMARY KEY, continent TEXT);
INSERT INTO continents (continent) SELECT DISTINCT region from countries_continents;

-- making continents_countries linking table
CREATE TABLE continents_countries AS
SELECT countries.country_id, continents.continent_id 
FROM countries, continents 
WHERE countries.continent = continents.continent;

-- dropping continents column from countries table
ALTER TABLE countries
DROP COLUMN continent;

-- dropping table countries_continents
DROP TABLE countries_continents;

-----------------------
-- creating sources table
CREATE TABLE sources (source_id INTEGER PRIMARY KEY, source TEXT);
INSERT INTO sources (source) SELECT DISTINCT Source from emissions;

-----------------------
-- countries_emissions table
CREATE TABLE countries_emissions AS
SELECT countries.country_id, sources.source_id, 
emissions.Y2000, 
emissions.Y2001, 
emissions.Y2002, 
emissions.Y2003, 
emissions.Y2004, 
emissions.Y2005, 
emissions.Y2006, 
emissions.Y2007, 
emissions.Y2008, 
emissions.Y2009, 
emissions.Y2010, 
emissions.Y2011, 
emissions.Y2012, 
emissions.Y2013, 
emissions.Y2014, 
emissions.Y2015, 
emissions.Y2016,
emissions.Y2017, 
emissions.Y2018, 
emissions.Y2019
FROM countries, sources, emissions 
WHERE countries.country = emissions.Country AND emissions.Source = sources.source; 

CREATE TABLE countries_temp AS
SELECT countries.country_id, 
temp_change.Y2000, 
temp_change.Y2001,
temp_change.Y2002,
temp_change.Y2003,
temp_change.Y2004,
temp_change.Y2005,
temp_change.Y2006,
temp_change.Y2007,
temp_change.Y2008,
temp_change.Y2009,
temp_change.Y2010,
temp_change.Y2011,
temp_change.Y2012,
temp_change.Y2013,
temp_change.Y2014,
temp_change.Y2015,
temp_change.Y2016,
temp_change.Y2017,
temp_change.Y2018,
temp_change.Y2019
FROM countries, temp_change
WHERE countries.country = temp_change.Country;

DROP TABLE emissions;
DROP TABLE temp_change;