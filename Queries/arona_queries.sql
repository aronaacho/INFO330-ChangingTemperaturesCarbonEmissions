-- For the non-visualization max queries: All sectors with LULUCF and All sectors without LULUCF excluded

-- Finding max source of emissions over all the years (non-visualizations version; returns ONE result)
SELECT source, highest_emissions FROM (
SELECT sources.source, Y2000
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2001
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2002
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2003
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2004
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2005
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2006
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2007
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2008
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2009
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2010
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2011
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2012
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2013
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2014
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2015
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2016
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2017
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2018
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2019
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
)
WHERE highest_emissions != "" AND source != "All sectors without LULUCF" AND source != "All sectors with LULUCF"
ORDER BY highest_emissions DESC LIMIT 1;

-- Finding max source of emissions over all the years (visualization for top 10)
SELECT source, highest_emissions FROM (
SELECT sources.source, Y2000
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2001
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2002
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2003
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2004
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2005
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2006
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2007
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2008
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2009
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2010
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2011
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2012
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2013
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2014
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2015
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2016
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2017
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2018
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2019
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
)
WHERE highest_emissions != "" 
ORDER BY highest_emissions DESC LIMIT 10;

-- Finding max source of emissions over all the years (visualization for top 100)
SELECT source, highest_emissions FROM (
SELECT sources.source, Y2000
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2001
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2002
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2003
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2004
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2005
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2006
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2007
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2008
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2009
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2010
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2011
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2012
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2013
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2014
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2015
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2016
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2017
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2018
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
UNION
SELECT sources.source, Y2019
AS highest_emissions
FROM sources, countries_emissions
WHERE sources.source_id = countries_emissions.source_id
)
WHERE highest_emissions != "" 
ORDER BY highest_emissions DESC LIMIT 100;

-- Finding max source of emissions through the years (non-visualization, returns ONE value to match original query)
SELECT source, sum(cumulative_per_year) AS cumulative_emissions
FROM(
SELECT sources.source,
	sum(Y2000),
	sum(Y2001),
	sum(Y2002),
	sum(Y2003),
	sum(Y2004),
	sum(Y2005),
	sum(Y2006),
	sum(Y2007),
	sum(Y2008),
	sum(Y2009),
	sum(Y2010),
	sum(Y2011),
	sum(Y2012),
	sum(Y2013),
	sum(Y2014),
	sum(Y2015),
	sum(Y2016),
	sum(Y2017),
	sum(Y2018),
	sum(Y2019) AS cumulative_per_year
FROM sources, countries_emissions
	WHERE sources.source_id = countries_emissions.source_id
	GROUP BY sources.source)
WHERE source != "All sectors without LULUCF" AND source != "All sectors with LULUCF"
GROUP BY source
ORDER BY cumulative_emissions DESC LIMIT 1;

-- Finding max source of emissions through the years (for visualization)
SELECT source, sum(cumulative_per_year) AS cumulative_emissions
FROM(
SELECT sources.source,
	sum(Y2000),
	sum(Y2001),
	sum(Y2002),
	sum(Y2003),
	sum(Y2004),
	sum(Y2005),
	sum(Y2006),
	sum(Y2007),
	sum(Y2008),
	sum(Y2009),
	sum(Y2010),
	sum(Y2011),
	sum(Y2012),
	sum(Y2013),
	sum(Y2014),
	sum(Y2015),
	sum(Y2016),
	sum(Y2017),
	sum(Y2018),
	sum(Y2019) AS cumulative_per_year
FROM sources, countries_emissions
	WHERE sources.source_id = countries_emissions.source_id
	GROUP BY sources.source)
GROUP BY source
ORDER BY cumulative_emissions DESC;