CREATE DATABASE FASTEST_CENTURY;
USE FASTEST_CENTURY;

show tables;
RENAME TABLE `fastest centuries - 2022` TO `FASTEST_CENTURY_2022`;
SELECT * FROM `FASTEST_CENTURY_2022`;
select * from
(
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2022`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2021`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2020`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2019`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2018`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2017`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2016`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2015`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2014`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2013`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2012`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2011`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2010`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2009`
UNION ALL
SELECT POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2008`
)as total_list

select distinct * from
(
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2022`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2021`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2020`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2019`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2018`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2017`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2016`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2015`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2014`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2013`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2012`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2011`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2010`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2009`
UNION ALL
SELECT DISTINCT Player 
FROM `FASTEST_CENTURY_2008`
)as total_list

SELECT year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date`
FROM (
    SELECT '2008' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2008`
    UNION ALL
    SELECT '2009' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2009`
    UNION ALL
    SELECT '2010' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2010`
    UNION ALL
    SELECT '2011' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2011`
    UNION ALL
    SELECT '2012' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2012`
    UNION ALL
    SELECT '2013' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2013`
    UNION ALL
    SELECT '2014' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2014`
    UNION ALL
    SELECT '2015' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2015`
    UNION ALL
    SELECT '2016' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2016`
    UNION ALL
    SELECT '2017' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2017`
    UNION ALL
    SELECT '2018' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2018`
    UNION ALL
    SELECT '2019' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2019`
    UNION ALL
    SELECT '2020' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2020`
    UNION ALL
    SELECT '2021' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2021`
    UNION ALL
    SELECT '2022' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2022`
) AS total_list
WHERE Player = 'Adam Gilchrist';

SELECT year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date`
FROM (
    SELECT '2008' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2008`
    UNION ALL
    SELECT '2009' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2009`
    UNION ALL
    SELECT '2010' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2010`
    UNION ALL
    SELECT '2011' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2011`
    UNION ALL
    SELECT '2012' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2012`
    UNION ALL
    SELECT '2013' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2013`
    UNION ALL
    SELECT '2014' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2014`
    UNION ALL
    SELECT '2015' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2015`
    UNION ALL
    SELECT '2016' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2016`
    UNION ALL
    SELECT '2017' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2017`
    UNION ALL
    SELECT '2018' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2018`
    UNION ALL
    SELECT '2019' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2019`
    UNION ALL
    SELECT '2020' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2020`
    UNION ALL
    SELECT '2021' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2021`
    UNION ALL
    SELECT '2022' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2022`
) AS total_list
WHERE Venue= 'DY Patil Stadium';

select sum(Runs)as total_Runs 
from
(
select Runs from `FASTEST_CENTURY_2022`
union all
select Runs from `FASTEST_CENTURY_2021`
union all
select Runs from `FASTEST_CENTURY_2020`
union all
select Runs from `FASTEST_CENTURY_2019`
union all
select Runs from `FASTEST_CENTURY_2018`
union all
select Runs from `FASTEST_CENTURY_2017`
union all
select Runs from `FASTEST_CENTURY_2016`
union all
select Runs from `FASTEST_CENTURY_2015`
union all
select Runs from `FASTEST_CENTURY_2014`
union all
select Runs from `FASTEST_CENTURY_2013`
union all
select Runs from `FASTEST_CENTURY_2012`
union all
select Runs from `FASTEST_CENTURY_2011`
union all
select Runs from `FASTEST_CENTURY_2010`
union all
select Runs from `FASTEST_CENTURY_2009`
union all
select Runs from `FASTEST_CENTURY_2008`
)as total_player

SELECT AVG(total) AS average
FROM (
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2008`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2020`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2009`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2010`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2011`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2012`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2013`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2014`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2015`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2016`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2017`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2018`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2019`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2021`
    UNION ALL
    SELECT SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2022`
) AS total_player;

select Venue,count(Venue)as total_matches from
(
select Venue from `FASTEST_CENTURY_2022`
union all
select Venue from `FASTEST_CENTURY_2021`
union all
select Venue from `FASTEST_CENTURY_2020`
union all
select Venue from `FASTEST_CENTURY_2019`
union all
select Venue from `FASTEST_CENTURY_2018`
union all
select Venue from `FASTEST_CENTURY_2017`
union all
select Venue from `FASTEST_CENTURY_2016`
union all
select Venue from `FASTEST_CENTURY_2015`
union all
select Venue from `FASTEST_CENTURY_2014`
union all
select Venue from `FASTEST_CENTURY_2013`
union all
select Venue from `FASTEST_CENTURY_2012`
union all
select Venue from `FASTEST_CENTURY_2011`
union all
select Venue from `FASTEST_CENTURY_2010`
union all
select Venue from `FASTEST_CENTURY_2009`
union all
select Venue from `FASTEST_CENTURY_2008`
) as total_list
group by Venue
order by total_matches desc


select sum(`6s`)as total_sixes from
(
select `6s` from `FASTEST_CENTURY_2008`
union all
select `6s` from `FASTEST_CENTURY_2009`
union all
select `6s` from `FASTEST_CENTURY_2010`
union all
select `6s` from `FASTEST_CENTURY_2011`
union all
select `6s` from `FASTEST_CENTURY_2012`
union all
select `6s` from `FASTEST_CENTURY_2013`
union all
select `6s` from `FASTEST_CENTURY_2014`
union all
select `6s` from `FASTEST_CENTURY_2015`
union all
select `6s` from `FASTEST_CENTURY_2016`
union all
select `6s` from `FASTEST_CENTURY_2017`
union all
select `6s` from `FASTEST_CENTURY_2018`
union all
select `6s` from `FASTEST_CENTURY_2019`
union all
select `6s` from `FASTEST_CENTURY_2020`
union all
select `6s` from `FASTEST_CENTURY_2021`
union all
select `6s` from `FASTEST_CENTURY_2022`
) as total_players


select player,max(Runs)as highest_runs from
(
select player,Runs from `FASTEST_CENTURY_2022`
union all
select player,Runs from `FASTEST_CENTURY_2021`
union all
select player,Runs from `FASTEST_CENTURY_2020`
union all
select player,Runs from `FASTEST_CENTURY_2019`
union all
select player,Runs from `FASTEST_CENTURY_2018`
union all
select player,Runs from `FASTEST_CENTURY_2017`
union all
select player,Runs from `FASTEST_CENTURY_2016`
union all
select player,Runs from `FASTEST_CENTURY_2015`
union all
select player,Runs from `FASTEST_CENTURY_2014`
union all
select player,Runs from `FASTEST_CENTURY_2013`
union all
select player,Runs from `FASTEST_CENTURY_2012`
union all
select player,Runs from `FASTEST_CENTURY_2011`
union all
select player,Runs from `FASTEST_CENTURY_2010`
union all
select player,Runs from `FASTEST_CENTURY_2009`
union all
select player,Runs from `FASTEST_CENTURY_2008`
)as total_player
group by player,Runs
order by highest_runs desc


select player,max(Runs)as highest_runs from
(
select player,Runs from `FASTEST_CENTURY_2022`
union all
select player,Runs from `FASTEST_CENTURY_2021`
union all
select player,Runs from `FASTEST_CENTURY_2020`
union all
select player,Runs from `FASTEST_CENTURY_2019`
union all
select player,Runs from `FASTEST_CENTURY_2018`
union all
select player,Runs from `FASTEST_CENTURY_2017`
union all
select player,Runs from `FASTEST_CENTURY_2016`
union all
select player,Runs from `FASTEST_CENTURY_2015`
union all
select player,Runs from `FASTEST_CENTURY_2014`
union all
select player,Runs from `FASTEST_CENTURY_2013`
union all
select player,Runs from `FASTEST_CENTURY_2012`
union all
select player,Runs from `FASTEST_CENTURY_2011`
union all
select player,Runs from `FASTEST_CENTURY_2010`
union all
select player,Runs from `FASTEST_CENTURY_2009`
union all
select player,Runs from `FASTEST_CENTURY_2008`
)as total_player
group by player,Runs
order by highest_runs desc
limit 5

select player,max(`6s`)as total_sixes from
(
select player,`6s` from `FASTEST_CENTURY_2008`
union all
select player,`6s` from `FASTEST_CENTURY_2009`
union all
select player,`6s` from `FASTEST_CENTURY_2010`
union all
select player,`6s` from `FASTEST_CENTURY_2011`
union all
select player,`6s` from `FASTEST_CENTURY_2012`
union all
select player,`6s` from `FASTEST_CENTURY_2013`
union all
select player,`6s` from `FASTEST_CENTURY_2014`
union all
select player,`6s` from `FASTEST_CENTURY_2015`
union all
select player,`6s` from `FASTEST_CENTURY_2016`
union all
select player,`6s` from `FASTEST_CENTURY_2017`
union all
select player,`6s` from `FASTEST_CENTURY_2018`
union all
select player,`6s` from `FASTEST_CENTURY_2019`
union all
select player,`6s` from `FASTEST_CENTURY_2020`
union all
select player,`6s` from `FASTEST_CENTURY_2021`
union all
select player,`6s` from `FASTEST_CENTURY_2022`
) as total_players
group by player,`6s`
order by total_sixes desc

select player,max(`6s`)as total_sixes from
(
select player,`6s` from `FASTEST_CENTURY_2008`
union all
select player,`6s` from `FASTEST_CENTURY_2009`
union all
select player,`6s` from `FASTEST_CENTURY_2010`
union all
select player,`6s` from `FASTEST_CENTURY_2011`
union all
select player,`6s` from `FASTEST_CENTURY_2012`
union all
select player,`6s` from `FASTEST_CENTURY_2013`
union all
select player,`6s` from `FASTEST_CENTURY_2014`
union all
select player,`6s` from `FASTEST_CENTURY_2015`
union all
select player,`6s` from `FASTEST_CENTURY_2016`
union all
select player,`6s` from `FASTEST_CENTURY_2017`
union all
select player,`6s` from `FASTEST_CENTURY_2018`
union all
select player,`6s` from `FASTEST_CENTURY_2019`
union all
select player,`6s` from `FASTEST_CENTURY_2020`
union all
select player,`6s` from `FASTEST_CENTURY_2021`
union all
select player,`6s` from `FASTEST_CENTURY_2022`
) as total_players
group by player,`6s`
having total_sixes>10
order by total_sixes desc

SELECT year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date`
FROM (
    SELECT '2008' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2008`
    UNION ALL
    SELECT '2009' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2009`
    UNION ALL
    SELECT '2010' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2010`
    UNION ALL
    SELECT '2011' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2011`
    UNION ALL
    SELECT '2012' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2012`
    UNION ALL
    SELECT '2013' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2013`
    UNION ALL
    SELECT '2014' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2014`
    UNION ALL
    SELECT '2015' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2015`
    UNION ALL
    SELECT '2016' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2016`
    UNION ALL
    SELECT '2017' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2017`
    UNION ALL
    SELECT '2018' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2018`
    UNION ALL
    SELECT '2019' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2019`
    UNION ALL
    SELECT '2020' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2020`
    UNION ALL
    SELECT '2021' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2021`
    UNION ALL
    SELECT '2022' AS year, POS, Player, Runs, BF, 4s, 6s, Against, Venue, `Match Date` FROM `FASTEST_CENTURY_2022`
) AS total_list
WHERE Against = 'MI';

SELECT PLAYER, total
FROM (
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2008`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2020`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2009`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2010`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2011`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2012`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2013`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2014`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2015`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2016`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2017`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2018`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2019`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2021`
    GROUP BY PLAYER
    UNION ALL
    SELECT PLAYER, SUM(`4s`) + SUM(`6s`) AS total
    FROM `FASTEST_CENTURY_2022`
    GROUP BY PLAYER
) AS total_player
WHERE total > 5
GROUP BY PLAYER,total
ORDER BY total DESC;

select player,max(Runs)as total_Runs 
from
(
select player,Runs from `FASTEST_CENTURY_2022`
union all
select player,Runs from `FASTEST_CENTURY_2021`
union all
select player,Runs from `FASTEST_CENTURY_2020`
union all
select player,Runs from `FASTEST_CENTURY_2019`
union all
select player,Runs from `FASTEST_CENTURY_2018`
union all
select player,Runs from `FASTEST_CENTURY_2017`
union all
select player,Runs from `FASTEST_CENTURY_2016`
union all
select player,Runs from `FASTEST_CENTURY_2015`
union all
select player,Runs from `FASTEST_CENTURY_2014`
union all
select player,Runs from `FASTEST_CENTURY_2013`
union all
select player,Runs from `FASTEST_CENTURY_2012`
union all
select player,Runs from `FASTEST_CENTURY_2011`
union all
select player,Runs from `FASTEST_CENTURY_2010`
union all
select player,Runs from `FASTEST_CENTURY_2009`
union all
select player,Runs from `FASTEST_CENTURY_2008`
)as total_player
group by player
order by total_Runs desc
limit 1

select player,sum(Runs)as total_Runs 
from
(
select player,Runs from `FASTEST_CENTURY_2022`
union all
select player,Runs from `FASTEST_CENTURY_2021`
union all
select player,Runs from `FASTEST_CENTURY_2020`
union all
select player,Runs from `FASTEST_CENTURY_2019`
union all
select player,Runs from `FASTEST_CENTURY_2018`
union all
select player,Runs from `FASTEST_CENTURY_2017`
union all
select player,Runs from `FASTEST_CENTURY_2016`
union all
select player,Runs from `FASTEST_CENTURY_2015`
union all
select player,Runs from `FASTEST_CENTURY_2014`
union all
select player,Runs from `FASTEST_CENTURY_2013`
union all
select player,Runs from `FASTEST_CENTURY_2012`
union all
select player,Runs from `FASTEST_CENTURY_2011`
union all
select player,Runs from `FASTEST_CENTURY_2010`
union all
select player,Runs from `FASTEST_CENTURY_2009`
union all
select player,Runs from `FASTEST_CENTURY_2008`
)as total_player
group by player
order by total_Runs desc


SELECT 
    player, 
    SUM(Runs) AS total_Runs, 
    RANK() OVER (ORDER BY SUM(Runs) DESC) AS `Rank`
FROM (
    SELECT player, Runs FROM `FASTEST_CENTURY_2022`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2021`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2020`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2019`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2018`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2017`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2016`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2015`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2014`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2013`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2012`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2011`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2010`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2009`
    UNION ALL
    SELECT player, Runs FROM `FASTEST_CENTURY_2008`
) AS total_player
GROUP BY player
ORDER BY `Rank` ASC;

