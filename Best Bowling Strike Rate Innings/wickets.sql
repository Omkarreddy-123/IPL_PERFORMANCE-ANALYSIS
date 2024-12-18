
use most_wickets;
SELECT player, 
       SUM(Wkts) AS total_wickets
FROM (
    SELECT player, Wkts FROM `wickets-2008`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2009`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2010`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2011`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2012`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2013`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2014`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2015`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2016`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2017`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2018`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2019`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2020`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2021`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2022`
) AS total_list
GROUP BY player
HAVING total_wickets > 15
ORDER BY total_wickets DESC;


SELECT player, 
       Econ
FROM (
    SELECT player, Econ FROM `wickets-2008`
    UNION ALL
    SELECT player, Econ FROM `wickets-2009`
    UNION ALL
    SELECT player, Econ FROM `wickets-2010`
    UNION ALL
    SELECT player, Econ FROM `wickets-2011`
    UNION ALL
    SELECT player, Econ FROM `wickets-2012`
    UNION ALL
    SELECT player, Econ FROM `wickets-2013`
    UNION ALL
    SELECT player, Econ FROM `wickets-2014`
    UNION ALL
    SELECT player, Econ FROM `wickets-2015`
    UNION ALL
    SELECT player, Econ FROM `wickets-2016`
    UNION ALL
    SELECT player, Econ FROM `wickets-2017`
    UNION ALL
    SELECT player, Econ FROM `wickets-2018`
    UNION ALL
    SELECT player, Econ FROM `wickets-2019`
    UNION ALL
    SELECT player, Econ FROM `wickets-2020`
    UNION ALL
    SELECT player, Econ FROM `wickets-2021`
    UNION ALL
    SELECT player, Econ FROM `wickets-2022`
) AS total_list
WHERE Econ < 7.5
ORDER BY Econ ASC;


SELECT player, 
       AVG(Avg) AS best_avg
FROM (
    SELECT player, Avg FROM `wickets-2008`
    UNION ALL
    SELECT player, Avg FROM `wickets-2009`
    UNION ALL
    SELECT player, Avg FROM `wickets-2010`
    UNION ALL
    SELECT player, Avg FROM `wickets-2011`
    UNION ALL
    SELECT player, Avg FROM `wickets-2012`
    UNION ALL
    SELECT player, Avg FROM `wickets-2013`
    UNION ALL
    SELECT player, Avg FROM `wickets-2014`
    UNION ALL
    SELECT player, Avg FROM `wickets-2015`
    UNION ALL
    SELECT player, Avg FROM `wickets-2016`
    UNION ALL
    SELECT player, Avg FROM `wickets-2017`
    UNION ALL
    SELECT player, Avg FROM `wickets-2018`
    UNION ALL
    SELECT player, Avg FROM `wickets-2019`
    UNION ALL
    SELECT player, Avg FROM `wickets-2020`
    UNION ALL
    SELECT player, Avg FROM `wickets-2021`
    UNION ALL
    SELECT player, Avg FROM `wickets-2022`
) AS total_list
GROUP BY player
ORDER BY best_avg ASC
LIMIT 1;

SELECT player, 
       SUM(Wkts) AS total_wickets
FROM (
    SELECT player, Wkts FROM `wickets-2008`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2009`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2010`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2011`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2012`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2013`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2014`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2015`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2016`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2017`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2018`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2019`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2020`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2021`
    UNION ALL
    SELECT player, Wkts FROM `wickets-2022`
) AS total_list
GROUP BY player
ORDER BY total_wickets DESC;


SELECT player, 
       SUM(Overs) AS total_overs
FROM (
    SELECT player, Overs FROM `wickets-2008`
    UNION ALL
    SELECT player, Overs FROM `wickets-2009`
    UNION ALL
    SELECT player, Overs FROM `wickets-2010`
    UNION ALL
    SELECT player, Overs FROM `wickets-2011`
    UNION ALL
    SELECT player, Overs FROM `wickets-2012`
    UNION ALL
    SELECT player, Overs FROM `wickets-2013`
    UNION ALL
    SELECT player, Overs FROM `wickets-2014`
    UNION ALL
    SELECT player, Overs FROM `wickets-2015`
    UNION ALL
    SELECT player, Overs FROM `wickets-2016`
    UNION ALL
    SELECT player, Overs FROM `wickets-2017`
    UNION ALL
    SELECT player, Overs FROM `wickets-2018`
    UNION ALL
    SELECT player, Overs FROM `wickets-2019`
    UNION ALL
    SELECT player, Overs FROM `wickets-2020`
    UNION ALL
    SELECT player, Overs FROM `wickets-2021`
    UNION ALL
    SELECT player, Overs FROM `wickets-2022`
) AS total_list
GROUP BY player
HAVING total_overs > 50
ORDER BY total_overs DESC;


SELECT player, 
       SR
FROM (
    SELECT player, SR FROM `wickets-2008`
    UNION ALL
    SELECT player, SR FROM `wickets-2009`
    UNION ALL
    SELECT player, SR FROM `wickets-2010`
    UNION ALL
    SELECT player, SR FROM `wickets-2011`
    UNION ALL
    SELECT player, SR FROM `wickets-2012`
    UNION ALL
    SELECT player, SR FROM `wickets-2013`
    UNION ALL
    SELECT player, SR FROM `wickets-2014`
    UNION ALL
    SELECT player, SR FROM `wickets-2015`
    UNION ALL
    SELECT player, SR FROM `wickets-2016`
    UNION ALL
    SELECT player, SR FROM `wickets-2017`
    UNION ALL
    SELECT player, SR FROM `wickets-2018`
    UNION ALL
    SELECT player, SR FROM `wickets-2019`
    UNION ALL
    SELECT player, SR FROM `wickets-2020`
    UNION ALL
    SELECT player, SR FROM `wickets-2021`
    UNION ALL
    SELECT player, SR FROM `wickets-2022`
) AS total_list
ORDER BY SR DESC
LIMIT 5;


SELECT player, 
       SUM(4w) AS total_4w
FROM (
    SELECT player, 4w FROM `wickets-2008`
    UNION ALL
    SELECT player, 4w FROM `wickets-2009`
    UNION ALL
    SELECT player, 4w FROM `wickets-2010`
    UNION ALL
    SELECT player, 4w FROM `wickets-2011`
    UNION ALL
    SELECT player, 4w FROM `wickets-2012`
    UNION ALL
    SELECT player, 4w FROM `wickets-2013`
    UNION ALL
    SELECT player, 4w FROM `wickets-2014`
    UNION ALL
    SELECT player, 4w FROM `wickets-2015`
    UNION ALL
    SELECT player, 4w FROM `wickets-2016`
    UNION ALL
    SELECT player, 4w FROM `wickets-2017`
    UNION ALL
    SELECT player, 4w FROM `wickets-2018`
    UNION ALL
    SELECT player, 4w FROM `wickets-2019`
    UNION ALL
    SELECT player, 4w FROM `wickets-2020`
    UNION ALL
    SELECT player, 4w FROM `wickets-2021`
    UNION ALL
    SELECT player, 4w FROM `wickets-2022`
) AS total_list
GROUP BY player
ORDER BY total_4w DESC
LIMIT 1;


SELECT player, 
       SUM(Overs) AS total_overs, 
       SUM(Wkts) AS total_wickets
FROM (
    SELECT player, Overs, Wkts FROM `wickets-2008`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2009`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2010`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2011`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2012`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2013`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2014`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2015`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2016`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2017`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2018`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2019`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2020`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2021`
    UNION ALL
    SELECT player, Overs, Wkts FROM `wickets-2022`
) AS total_list
GROUP BY player
HAVING total_overs < 40 AND total_wickets >= 12
ORDER BY total_wickets DESC;

SELECT SUM(Wkts) AS total_wickets
FROM (
    SELECT Wkts FROM `wickets-2008`
    UNION ALL
    SELECT Wkts FROM `wickets-2009`
    UNION ALL
    SELECT Wkts FROM `wickets-2010`
    UNION ALL
    SELECT Wkts FROM `wickets-2011`
    UNION ALL
    SELECT Wkts FROM `wickets-2012`
    UNION ALL
    SELECT Wkts FROM `wickets-2013`
    UNION ALL
    SELECT Wkts FROM `wickets-2014`
    UNION ALL
    SELECT Wkts FROM `wickets-2015`
    UNION ALL
    SELECT Wkts FROM `wickets-2016`
    UNION ALL
    SELECT Wkts FROM `wickets-2017`
    UNION ALL
    SELECT Wkts FROM `wickets-2018`
    UNION ALL
    SELECT Wkts FROM `wickets-2019`
    UNION ALL
    SELECT Wkts FROM `wickets-2020`
    UNION ALL
    SELECT Wkts FROM `wickets-2021`
    UNION ALL
    SELECT Wkts FROM `wickets-2022`
) AS total_list;

SELECT player, 
       BBI
FROM (
    SELECT player, BBI FROM `wickets-2008`
    UNION ALL
    SELECT player, BBI FROM `wickets-2009`
    UNION ALL
    SELECT player, BBI FROM `wickets-2010`
    UNION ALL
    SELECT player, BBI FROM `wickets-2011`
    UNION ALL
    SELECT player, BBI FROM `wickets-2012`
    UNION ALL
    SELECT player, BBI FROM `wickets-2013`
    UNION ALL
    SELECT player, BBI FROM `wickets-2014`
    UNION ALL
    SELECT player, BBI FROM `wickets-2015`
    UNION ALL
    SELECT player, BBI FROM `wickets-2016`
    UNION ALL
    SELECT player, BBI FROM `wickets-2017`
    UNION ALL
    SELECT player, BBI FROM `wickets-2018`
    UNION ALL
    SELECT player, BBI FROM `wickets-2019`
    UNION ALL
    SELECT player, BBI FROM `wickets-2020`
    UNION ALL
    SELECT player, BBI FROM `wickets-2021`
    UNION ALL
    SELECT player, BBI FROM `wickets-2022`
) AS total_list
ORDER BY BBI DESC
LIMIT 1;

SELECT AVG(Econ) AS avg_economy_rate
FROM (
    SELECT Econ FROM `wickets-2008`
    UNION ALL
    SELECT Econ FROM `wickets-2009`
    UNION ALL
    SELECT Econ FROM `wickets-2010`
    UNION ALL
    SELECT Econ FROM `wickets-2011`
    UNION ALL
    SELECT Econ FROM `wickets-2012`
    UNION ALL
    SELECT Econ FROM `wickets-2013`
    UNION ALL
    SELECT Econ FROM `wickets-2014`
    UNION ALL
    SELECT Econ FROM `wickets-2015`
    UNION ALL
    SELECT Econ FROM `wickets-2016`
    UNION ALL
    SELECT Econ FROM `wickets-2017`
    UNION ALL
    SELECT Econ FROM `wickets-2018`
    UNION ALL
    SELECT Econ FROM `wickets-2019`
    UNION ALL
    SELECT Econ FROM `wickets-2020`
    UNION ALL
    SELECT Econ FROM `wickets-2021`
    UNION ALL
    SELECT Econ FROM `wickets-2022`
) AS total_list;


SELECT SUM(Overs) AS total_overs
FROM (
    SELECT Overs FROM `wickets-2008`
    UNION ALL
    SELECT Overs FROM `wickets-2009`
    UNION ALL
    SELECT Overs FROM `wickets-2010`
    UNION ALL
    SELECT Overs FROM `wickets-2011`
    UNION ALL
    SELECT Overs FROM `wickets-2012`
    UNION ALL
    SELECT Overs FROM `wickets-2013`
    UNION ALL
    SELECT Overs FROM `wickets-2014`
    UNION ALL
    SELECT Overs FROM `wickets-2015`
    UNION ALL
    SELECT Overs FROM `wickets-2016`
    UNION ALL
    SELECT Overs FROM `wickets-2017`
    UNION ALL
    SELECT Overs FROM `wickets-2018`
    UNION ALL
    SELECT Overs FROM `wickets-2019`
    UNION ALL
    SELECT Overs FROM `wickets-2020`
    UNION ALL
    SELECT Overs FROM `wickets-2021`
    UNION ALL
    SELECT Overs FROM `wickets-2022`
) AS total_list;

SELECT Mat, COUNT(player) AS players_count
FROM (
    SELECT player, Mat FROM `wickets-2008`
    UNION ALL
    SELECT player, Mat FROM `wickets-2009`
    UNION ALL
    SELECT player, Mat FROM `wickets-2010`
    UNION ALL
    SELECT player, Mat FROM `wickets-2011`
    UNION ALL
    SELECT player, Mat FROM `wickets-2012`
    UNION ALL
    SELECT player, Mat FROM `wickets-2013`
    UNION ALL
    SELECT player, Mat FROM `wickets-2014`
    UNION ALL
    SELECT player, Mat FROM `wickets-2015`
    UNION ALL
    SELECT player, Mat FROM `wickets-2016`
    UNION ALL
    SELECT player, Mat FROM `wickets-2017`
    UNION ALL
    SELECT player, Mat FROM `wickets-2018`
    UNION ALL
    SELECT player, Mat FROM `wickets-2019`
    UNION ALL
    SELECT player, Mat FROM `wickets-2020`
    UNION ALL
    SELECT player, Mat FROM `wickets-2021`
    UNION ALL
    SELECT player, Mat FROM `wickets-2022`
) AS total_list
GROUP BY Mat
ORDER BY Mat;
SELECT player, 
       Avg
FROM (
    SELECT player, Avg, Wkts FROM `wickets-2008`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2009`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2010`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2011`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2012`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2013`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2014`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2015`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2016`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2017`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2018`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2019`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2020`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2021`
    UNION ALL
    SELECT player, Avg, Wkts FROM `wickets-2022`
) AS total_list
WHERE Wkts >= 15
ORDER BY Avg ASC
LIMIT 1;

SELECT SUM(5w) AS total_5w
FROM (
    SELECT 5w FROM `wickets-2008`
    UNION ALL
    SELECT 5w FROM `wickets-2009`
    UNION ALL
    SELECT 5w FROM `wickets-2010`
    UNION ALL
    SELECT 5w FROM `wickets-2011`
    UNION ALL
    SELECT 5w FROM `wickets-2012`
    UNION ALL
    SELECT 5w FROM `wickets-2013`
    UNION ALL
    SELECT 5w FROM `wickets-2014`
    UNION ALL
    SELECT 5w FROM `wickets-2015`
    UNION ALL
    SELECT 5w FROM `wickets-2016`
    UNION ALL
    SELECT 5w FROM `wickets-2017`
    UNION ALL
    SELECT 5w FROM `wickets-2018`
    UNION ALL
    SELECT 5w FROM `wickets-2019`
    UNION ALL
    SELECT 5w FROM `wickets-2020`
    UNION ALL
    SELECT 5w FROM `wickets-2021`
    UNION ALL
    SELECT 5w FROM `wickets-2022`
) AS total_list;
