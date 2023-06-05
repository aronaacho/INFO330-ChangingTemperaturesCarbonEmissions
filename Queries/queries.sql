-- Finding the total change in carbon emissions over all the years  (Range) - Katie 
SELECT (SUM(Y2019) - SUM(Y2000)) FROM countries_emissions;

-- Finding the total change in temperature over all the years (Range) - Katie 
SELECT (SUM(Y2019) - SUM(Y2000)) FROM countries_temp;
