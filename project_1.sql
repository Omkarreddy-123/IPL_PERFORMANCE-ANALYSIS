create database most_runs;
use most_runs;
show tables;
select * from `2008_runs`;
RENAME TABLE `most runs - 2022` TO `2022_runs`;

select * from `2009_runs`;
select player as player_name,sum(runs) as total_runs 
from (
select player,runs from 2009_runs
union all
select player,runs from 2010_runs
union all
select player,runs from 2011_runs
union all
select player,runs from 2012_runs
union all
select player,runs from 2013_runs
union all
select player,runs from 2014_runs
union all
select player,runs from 2015_runs
union all
select player,runs from 2016_runs
union all
select player,runs from 2017_runs
union all
select player,runs from 2018_runs
union all
select player,runs from 2019_runs
union all
select player,runs from 2020_runs
union all
select player,runs from 2021_runs
union all
select player,runs from 2022_runs
) as total_list
group by player_name
order by total_runs desc
limit 10


select player as player_name , Avg(runs) as average from 
(
select player,runs from 2009_runs
union all
select player,runs from 2010_runs
union all
select player,runs from 2011_runs
union all
select player,runs from 2012_runs
union all
select player,runs from 2013_runs
union all
select player,runs from 2014_runs
union all
select player,runs from 2015_runs
union all
select player,runs from 2016_runs
union all
select player,runs from 2017_runs
union all
select player,runs from 2018_runs
union all
select player,runs from 2019_runs
union all
select player,runs from 2020_runs
union all
select player,runs from 2021_runs
union all
select player,runs from 2022_runs
) as total_list
group by player_name
order by average desc
limit 5

select player as player_name, max(Runs) as total_Runs from 2022_runs group by player_name limit 1;
select * from 2009_runs;
select player as player_name , max(SR) as strickrate from 
(
select player,SR from 2009_runs
union all
select player,SR from 2010_runs
union all
select player,SR from 2011_runs
union all
select player,SR from 2012_runs
union all
select player,SR from 2013_runs
union all
select player,SR from 2014_runs
union all
select player,SR from 2015_runs
union all
select player,SR from 2016_runs
union all
select player,SR from 2017_runs
union all
select player,SR from 2018_runs
union all
select player,SR from 2019_runs
union all
select player,SR from 2020_runs
union all
select player,SR from 2021_runs
union all
select player,SR from 2022_runs
) as total_list
group by player_name
order by strickrate desc
limit 5

select * from 
( select * from 2009_runs
union all
select *from 2010_runs
union all
select * from 2011_runs
union all
select * from 2012_runs
union all
select * from 2013_runs
union all
select * from 2014_runs
union all
select * from 2015_runs
union all
select * from 2016_runs
union all
select * from 2017_runs
union all
select * from 2018_runs
union all
select * from 2019_runs
union all
select * from 2020_runs
union all
select * from 2021_runs
union all
select * from 2022_runs
) as total_list

select distinct player as player_name , max(SR) as strickrate from 
(
select player,SR from 2009_runs
union all
select player,SR from 2010_runs
union all
select player,SR from 2011_runs
union all
select player,SR from 2012_runs
union all
select player,SR from 2013_runs
union all
select player,SR from 2014_runs
union all
select player,SR from 2015_runs
union all
select player,SR from 2016_runs
union all
select player,SR from 2017_runs
union all
select player,SR from 2018_runs
union all
select player,SR from 2019_runs
union all
select player,SR from 2020_runs
union all
select player,SR from 2021_runs
union all
select player,SR from 2022_runs
) as total_list
group by player_name
order by strickrate desc

select sum(MAT) from 
(
select Mat from 2009_runs
union all
select Mat from 2010_runs
union all
select Mat from 2011_runs
union all
select Mat from 2012_runs
union all
select Mat from 2013_runs
union all
select Mat from 2014_runs
union all
select Mat from 2015_runs
union all
select Mat from 2016_runs
union all
select Mat from 2017_runs
union all
select Mat from 2018_runs
union all
select Mat from 2019_runs
union all
select Mat from 2020_runs
union all
select MAt from 2021_runs
union all
select Mat from 2022_runs
) as total_list
select player as player_name , sum(runs) as total from 
(
SELECT year, player AS player_name, runs
FROM (
    SELECT '2008' AS year, player, runs FROM 2008_runs
    UNION ALL
    SELECT '2009' AS year, player, runs FROM 2009_runs
    UNION ALL
    SELECT '2010' AS year, player, runs FROM 2010_runs
    UNION ALL
    SELECT '2011' AS year, player, runs FROM 2011_runs
    UNION ALL
    SELECT '2012' AS year, player, runs FROM 2012_runs
    UNION ALL
    SELECT '2013' AS year, player, runs FROM 2013_runs
    UNION ALL
    SELECT '2014' AS year, player, runs FROM 2014_runs
    UNION ALL
    SELECT '2015' AS year, player, runs FROM 2015_runs
    UNION ALL
    SELECT '2016' AS year, player, runs FROM 2016_runs
    UNION ALL
    SELECT '2017' AS year, player, runs FROM 2017_runs
    UNION ALL
    SELECT '2018' AS year, player, runs FROM 2018_runs
    UNION ALL
    SELECT '2019' AS year, player, runs FROM 2019_runs
    UNION ALL
    SELECT '2020' AS year, player, runs FROM 2020_runs
    UNION ALL
    SELECT '2021' AS year, player, runs FROM 2021_runs
    UNION ALL
    SELECT '2022' AS year, player, runs FROM 2022_runs
) AS total_list
WHERE runs > 500
ORDER BY year ASC, runs DESC;

select player as player_name,Year,Sr from 
(
select '2009' as year,player,Sr from 2009_runs
union all
select '2010' as year,player,Sr from 2010_runs
union all
select '2011' as year,player,Sr from 2011_runs
union all
select '2012' as year,player,Sr from 2012_runs
union all
select '2013' as year,player,Sr from 2013_runs
union all
select '2014' as year,player,Sr from 2014_runs
union all
select '2015' as year,player,Sr from 2015_runs
union all
select '2016' as year,player,Sr from 2016_runs
union all
select '2017' as year,player,Sr from 2017_runs
union all
select '2018' as year,player,Sr from 2018_runs
union all
select '2019' as year,player,Sr from 2019_runs
union all
select '2020' as year,player,Sr from 2020_runs
union all
select '2021' as year,player,Sr from 2021_runs
union all
select '2022' as year,player,Sr from 2022_runs
) as total_players
where Sr>140
order by year asc, Sr desc;

SELECT  player ,sum(`100`) as total_century
FROM (
    SELECT '2008' AS year, player, `100` FROM 2008_runs
    UNION ALL
    SELECT '2009' AS year, player, `100` FROM 2009_runs
    UNION ALL
    SELECT '2010' AS year, player, `100` FROM 2010_runs
    UNION ALL
    SELECT '2011' AS year, player, `100` FROM 2011_runs
    UNION ALL
    SELECT '2012' AS year, player, `100` FROM 2012_runs
    UNION ALL
    SELECT '2013' AS year, player, `100` FROM 2013_runs
    UNION ALL
    SELECT '2014' AS year, player, `100` FROM 2014_runs
    UNION ALL
    SELECT '2015' AS year, player, `100` FROM 2015_runs
    UNION ALL
    SELECT '2016' AS year, player, `100` FROM 2016_runs
    UNION ALL
    SELECT '2017' AS year, player, `100` FROM 2017_runs
    UNION ALL
    SELECT '2018' AS year, player, `100` FROM 2018_runs
    UNION ALL
    SELECT '2019' AS year, player, `100` FROM 2019_runs
    UNION ALL
    SELECT '2020' AS year, player, `100` FROM 2020_runs
    UNION ALL
    SELECT '2021' AS year, player, `100` FROM 2021_runs
    UNION ALL
    SELECT '2022' AS year, player, `100` FROM 2022_runs
) AS total_list
group by player
ORDER BY total_century desc;


select player ,100 from 2020_runs;

select player as player_name,100 from 2022_runs;
select year,player,max(avg) as highest_average 
from 
( SELECT '2008' AS year, player, avg FROM 2008_runs
    UNION ALL
    SELECT '2009' AS year, player, avg FROM 2009_runs
    UNION ALL
    SELECT '2010' AS year, player,  avg  FROM 2010_runs
    UNION ALL
    SELECT '2011' AS year, player,  avg  FROM 2011_runs
    UNION ALL
    SELECT '2012' AS year, player,  avg  FROM 2012_runs
    UNION ALL
    SELECT '2013' AS year, player,  avg  FROM 2013_runs
    UNION ALL
    SELECT '2014' AS year, player,  avg  FROM 2014_runs
    UNION ALL
    SELECT '2015' AS year, player,  avg  FROM 2015_runs
    UNION ALL
    SELECT '2016' AS year, player,  avg  FROM 2016_runs
    UNION ALL
    SELECT '2017' AS year, player,  avg  FROM 2017_runs
    UNION ALL
    SELECT '2018' AS year, player,  avg  FROM 2018_runs
    UNION ALL
    SELECT '2019' AS year, player,  avg  FROM 2019_runs
    UNION ALL
    SELECT '2020' AS year, player,  avg  FROM 2020_runs
    UNION ALL
    SELECT '2021' AS year, player,  avg  FROM 2021_runs
    UNION ALL
    SELECT '2022' AS year, player,  avg  FROM 2022_runs
) AS total_list
group by year,player
order by year asc,highest_average desc

select player,sum(runs) as total_runs
from 
(
    SELECT '2008' AS year, player, runs FROM 2008_runs
    UNION ALL
    SELECT '2009' AS year, player, runs FROM 2009_runs
    UNION ALL
    SELECT '2010' AS year, player,  runs  FROM 2010_runs
    UNION ALL
    SELECT '2011' AS year, player,  runs FROM 2011_runs
    UNION ALL
    SELECT '2012' AS year, player,  runs FROM 2012_runs
    UNION ALL
    SELECT '2013' AS year, player,  runs FROM 2013_runs
    UNION ALL
    SELECT '2014' AS year, player,  runs FROM 2014_runs
    UNION ALL
    SELECT '2015' AS year, player,  runs FROM 2015_runs
    UNION ALL
    SELECT '2016' AS year, player,  runs FROM 2016_runs
    UNION ALL
    SELECT '2017' AS year, player,  runs FROM 2017_runs
    UNION ALL
    SELECT '2018' AS year, player,  runs FROM 2018_runs
    UNION ALL
    SELECT '2019' AS year, player,  runs FROM 2019_runs
    UNION ALL
    SELECT '2020' AS year, player,  runs FROM 2020_runs
    UNION ALL
    SELECT '2021' AS year, player,  runs FROM 2021_runs
    UNION ALL
    SELECT '2022' AS year, player,  runs FROM 2022_runs
) AS total_list
group by player
order by total_runs desc
limit 5

select sum(runs) as total_runs
from 
(
    SELECT '2008' AS year, player, runs FROM 2008_runs
    UNION ALL
    SELECT '2009' AS year, player, runs FROM 2009_runs
    UNION ALL
    SELECT '2010' AS year, player,  runs  FROM 2010_runs
    UNION ALL
    SELECT '2011' AS year, player,  runs FROM 2011_runs
    UNION ALL
    SELECT '2012' AS year, player,  runs FROM 2012_runs
    UNION ALL
    SELECT '2013' AS year, player,  runs FROM 2013_runs
    UNION ALL
    SELECT '2014' AS year, player,  runs FROM 2014_runs
    UNION ALL
    SELECT '2015' AS year, player,  runs FROM 2015_runs
    UNION ALL
    SELECT '2016' AS year, player,  runs FROM 2016_runs
    UNION ALL
    SELECT '2017' AS year, player,  runs FROM 2017_runs
    UNION ALL
    SELECT '2018' AS year, player,  runs FROM 2018_runs
    UNION ALL
    SELECT '2019' AS year, player,  runs FROM 2019_runs
    UNION ALL
    SELECT '2020' AS year, player,  runs FROM 2020_runs
    UNION ALL
    SELECT '2021' AS year, player,  runs FROM 2021_runs
    UNION ALL
    SELECT '2022' AS year, player,  runs FROM 2022_runs
) AS total_list

select player,avg(SR) as average_Strickrate 
from
(
 SELECT '2008' AS year, player, SR FROM 2008_runs
    UNION ALL
    SELECT '2009' AS year, player, SR FROM 2009_runs
    UNION ALL
    SELECT '2010' AS year, player,  SR  FROM 2010_runs
    UNION ALL
    SELECT '2011' AS year, player,  SR FROM 2011_runs
    UNION ALL
    SELECT '2012' AS year, player,  SR FROM 2012_runs
    UNION ALL
    SELECT '2013' AS year, player,  SR FROM 2013_runs
    UNION ALL
    SELECT '2014' AS year, player,  SR FROM 2014_runs
    UNION ALL
    SELECT '2015' AS year, player,  SR FROM 2015_runs
    UNION ALL
    SELECT '2016' AS year, player,  SR FROM 2016_runs
    UNION ALL
    SELECT '2017' AS year, player,  SR FROM 2017_runs
    UNION ALL
    SELECT '2018' AS year, player,  SR FROM 2018_runs
    UNION ALL
    SELECT '2019' AS year, player,  SR FROM 2019_runs
    UNION ALL
    SELECT '2020' AS year, player,  SR FROM 2020_runs
    UNION ALL
    SELECT '2021' AS year, player,  SR FROM 2021_runs
    UNION ALL
    SELECT '2022' AS year, player,  SR FROM 2022_runs
) AS total_list
group by player
order by average_Strickrate desc

select player,max(Avg) as highest_average
from 
(
SELECT '2008' AS year, player, Avg FROM 2008_runs
    UNION ALL
    SELECT '2009' AS year, player, Avg FROM 2009_runs
    UNION ALL
    SELECT '2010' AS year, player,  Avg  FROM 2010_runs
    UNION ALL
    SELECT '2011' AS year, player,  Avg FROM 2011_runs
    UNION ALL
    SELECT '2012' AS year, player,  Avg FROM 2012_runs
    UNION ALL
    SELECT '2013' AS year, player,  Avg FROM 2013_runs
    UNION ALL
    SELECT '2014' AS year, player,  Avg FROM 2014_runs
    UNION ALL
    SELECT '2015' AS year, player,  Avg FROM 2015_runs
    UNION ALL
    SELECT '2016' AS year, player,  Avg FROM 2016_runs
    UNION ALL
    SELECT '2017' AS year, player,  Avg FROM 2017_runs
    UNION ALL
    SELECT '2018' AS year, player,  Avg FROM 2018_runs
    UNION ALL
    SELECT '2019' AS year, player,  Avg FROM 2019_runs
    UNION ALL
    SELECT '2020' AS year, player,  Avg FROM 2020_runs
    UNION ALL
    SELECT '2021' AS year, player,  Avg FROM 2021_runs
    UNION ALL
    SELECT '2022' AS year, player,  Avg FROM 2022_runs
) AS total_list
group by player
order by highest_average desc

SELECT  sum(`100`) as total_century
FROM (
    SELECT '2008' AS year, player, `100` FROM 2008_runs
    UNION ALL
    SELECT '2009' AS year, player, `100` FROM 2009_runs
    UNION ALL
    SELECT '2010' AS year, player, `100` FROM 2010_runs
    UNION ALL
    SELECT '2011' AS year, player, `100` FROM 2011_runs
    UNION ALL
    SELECT '2012' AS year, player, `100` FROM 2012_runs
    UNION ALL
    SELECT '2013' AS year, player, `100` FROM 2013_runs
    UNION ALL
    SELECT '2014' AS year, player, `100` FROM 2014_runs
    UNION ALL
    SELECT '2015' AS year, player, `100` FROM 2015_runs
    UNION ALL
    SELECT '2016' AS year, player, `100` FROM 2016_runs
    UNION ALL
    SELECT '2017' AS year, player, `100` FROM 2017_runs
    UNION ALL
    SELECT '2018' AS year, player, `100` FROM 2018_runs
    UNION ALL
    SELECT '2019' AS year, player, `100` FROM 2019_runs
    UNION ALL
    SELECT '2020' AS year, player, `100` FROM 2020_runs
    UNION ALL
    SELECT '2021' AS year, player, `100` FROM 2021_runs
    UNION ALL
    SELECT '2022' AS year, player, `100` FROM 2022_runs
) AS total_list

select player,sum(6s) as total_sixes
from
(
    SELECT '2008' AS year, player, 6s FROM 2008_runs
    UNION ALL
    SELECT '2009' AS year, player, 6s FROM 2009_runs
    UNION ALL
    SELECT '2010' AS year, player, 6s FROM 2010_runs
    UNION ALL
    SELECT '2011' AS year, player, 6s FROM 2011_runs
    UNION ALL
    SELECT '2012' AS year, player, 6s FROM 2012_runs
    UNION ALL
    SELECT '2013' AS year, player, 6s FROM 2013_runs
    UNION ALL
    SELECT '2014' AS year, player, 6s FROM 2014_runs
    UNION ALL
    SELECT '2015' AS year, player, 6s FROM 2015_runs
    UNION ALL
    SELECT '2016' AS year, player, 6s FROM 2016_runs
    UNION ALL
    SELECT '2017' AS year, player, 6s FROM 2017_runs
    UNION ALL
    SELECT '2018' AS year, player, 6s FROM 2018_runs
    UNION ALL
    SELECT '2019' AS year, player, 6s FROM 2019_runs
    UNION ALL
    SELECT '2020' AS year, player, 6s FROM 2020_runs
    UNION ALL
    SELECT '2021' AS year, player, 6s FROM 2021_runs
    UNION ALL
    SELECT '2022' AS year, player, 6s FROM 2022_runs
) as total_list
group by player
having total_sixes >20
order by total_sixes desc

SELECT player, MAX(HS) AS second_max
FROM 
(
    SELECT '2008' AS year, player, HS FROM 2008_runs
    UNION ALL
    SELECT '2009' AS year, player, HS FROM 2009_runs
    UNION ALL
    SELECT '2010' AS year, player, HS FROM 2010_runs
    UNION ALL
    SELECT '2011' AS year, player, HS FROM 2011_runs
    UNION ALL
    SELECT '2012' AS year, player, HS FROM 2012_runs
    UNION ALL
    SELECT '2013' AS year, player, HS FROM 2013_runs
    UNION ALL
    SELECT '2014' AS year, player, HS FROM 2014_runs
    UNION ALL
    SELECT '2015' AS year, player, HS FROM 2015_runs
    UNION ALL
    SELECT '2016' AS year, player, HS FROM 2016_runs
    UNION ALL
    SELECT '2017' AS year, player, HS FROM 2017_runs
    UNION ALL
    SELECT '2018' AS year, player, HS FROM 2018_runs
    UNION ALL
    SELECT '2019' AS year, player, HS FROM 2019_runs
    UNION ALL
    SELECT '2020' AS year, player, HS FROM 2020_runs
    UNION ALL
    SELECT '2021' AS year, player, HS FROM 2021_runs
    UNION ALL
    SELECT '2022' AS year, player, HS FROM 2022_runs
) AS total_list
WHERE HS < (
    SELECT MAX(HS)
    FROM (
        SELECT '2008' AS year, player, HS FROM 2008_runs
        UNION ALL
        SELECT '2009' AS year, player, HS FROM 2009_runs
        UNION ALL
        SELECT '2010' AS year, player, HS FROM 2010_runs
        UNION ALL
        SELECT '2011' AS year, player, HS FROM 2011_runs
        UNION ALL
        SELECT '2012' AS year, player, HS FROM 2012_runs
        UNION ALL
        SELECT '2013' AS year, player, HS FROM 2013_runs
        UNION ALL
        SELECT '2014' AS year, player, HS FROM 2014_runs
        UNION ALL
        SELECT '2015' AS year, player, HS FROM 2015_runs
        UNION ALL
        SELECT '2016' AS year, player, HS FROM 2016_runs
        UNION ALL
        SELECT '2017' AS year, player, HS FROM 2017_runs
        UNION ALL
        SELECT '2018' AS year, player, HS FROM 2018_runs
        UNION ALL
        SELECT '2019' AS year, player, HS FROM 2019_runs
        UNION ALL
        SELECT '2020' AS year, player, HS FROM 2020_runs
        UNION ALL
        SELECT '2021' AS year, player, HS FROM 2021_runs
        UNION ALL
        SELECT '2022' AS year, player, HS FROM 2022_runs
    ) AS all_scores
)
GROUP BY player
ORDER BY second_max DESC
limit 1 offset 1

SELECT player, MAX(HS) AS second_highest
FROM (
    SELECT player, CAST(REPLACE(HS, '*', '') AS UNSIGNED) AS HS
    FROM (
        SELECT '2008' AS year, player, HS FROM 2008_runs
        UNION ALL
        SELECT '2009' AS year, player, HS FROM 2009_runs
        UNION ALL
        SELECT '2010' AS year, player, HS FROM 2010_runs
        UNION ALL
        SELECT '2011' AS year, player, HS FROM 2011_runs
        UNION ALL
        SELECT '2012' AS year, player, HS FROM 2012_runs
        UNION ALL
        SELECT '2013' AS year, player, HS FROM 2013_runs
        UNION ALL
        SELECT '2014' AS year, player, HS FROM 2014_runs
        UNION ALL
        SELECT '2015' AS year, player, HS FROM 2015_runs
        UNION ALL
        SELECT '2016' AS year, player, HS FROM 2016_runs
        UNION ALL
        SELECT '2017' AS year, player, HS FROM 2017_runs
        UNION ALL
        SELECT '2018' AS year, player, HS FROM 2018_runs
        UNION ALL
        SELECT '2019' AS year, player, HS FROM 2019_runs
        UNION ALL
        SELECT '2020' AS year, player, HS FROM 2020_runs
        UNION ALL
        SELECT '2021' AS year, player, HS FROM 2021_runs
        UNION ALL
        SELECT '2022' AS year, player, HS FROM 2022_runs
    ) AS all_scores
) AS cleaned_scores
GROUP BY player
ORDER BY second_highest DESC
limit 1 offset 1


SELECT 
    player,
    SUM(4s) + SUM(6s) AS total_count
FROM
    (
        SELECT player, 4s, 6s FROM 2008_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2009_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2010_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2011_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2012_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2013_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2014_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2015_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2016_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2017_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2018_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2019_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2020_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2021_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2022_runs
    ) AS total_list
GROUP BY player
order by total_count desc

select player,max(6s) as total_sixes
from
(
        SELECT player, 4s, 6s FROM 2008_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2009_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2010_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2011_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2012_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2013_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2014_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2015_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2016_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2017_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2018_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2019_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2020_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2021_runs
        UNION ALL
        SELECT player, 4s, 6s FROM 2022_runs
    ) AS total_list
group by player
order by total_sixes desc
limit 1

select player,max(SR) as SR,sum(runs)as total_runs
from
(
        SELECT player, runs,SR FROM 2008_runs
        UNION ALL
        SELECT player, runs,SR FROM 2009_runs
        UNION ALL
        SELECT player, runs,SR FROM 2010_runs
        UNION ALL
        SELECT player, runs,SR FROM 2011_runs
        UNION ALL
        SELECT player, runs,SR FROM 2012_runs
        UNION ALL
        SELECT player, runs,SR FROM 2013_runs
        UNION ALL
        SELECT player, runs,SR FROM 2014_runs
        UNION ALL
        SELECT player, runs,SR FROM 2015_runs
        UNION ALL
        SELECT player, runs,SR FROM 2016_runs
        UNION ALL
        SELECT player, runs,SR FROM 2017_runs
        UNION ALL
        SELECT player, runs,SR FROM 2018_runs
        UNION ALL
        SELECT player, runs,SR FROM 2019_runs
        UNION ALL
        SELECT player, runs,SR FROM 2020_runs
        UNION ALL
        SELECT player, runs,SR FROM 2021_runs
        UNION ALL
        SELECT player, runs,SR FROM 2022_runs
    ) AS total_list
    group by player
    having total_runs>400
    order by SR desc



