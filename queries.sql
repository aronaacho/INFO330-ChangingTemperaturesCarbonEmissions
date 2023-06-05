-- Finding the total change in carbon emissions over all the years  (Range)
SELECT (MAX(Y2019) - MIN(Y2000)) FROM countries_emissions;

-- Finding the total change in temperature over all the years (Range)
SELECT (MAX(Y2019) - MIN(Y2000)) FROM countries_temp;

