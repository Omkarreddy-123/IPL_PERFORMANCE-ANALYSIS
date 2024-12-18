create database most_dot_balls;
use most_dot_balls;
show tables;
rename table `most dot balls innings - 2022` to `dotballs_2022`;
select * from `dotballs_2008`;
SELECT year, POS, Player, Ov, Runs, Wkts,Dots, SR, Against, Venue, `Match Date` 
FROM (
    SELECT '2008' AS year, POS, Player, Ov, Runs, Wkts,Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2008`
    UNION ALL
    SELECT '2009' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2009`
    UNION ALL
    SELECT '2010' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2010`
    UNION ALL
    SELECT '2011' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2011`
    UNION ALL
    SELECT '2012' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2012`
    UNION ALL
    SELECT '2013' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2013`
    UNION ALL
    SELECT '2014' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2014`
    UNION ALL
    SELECT '2015' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2015`
    UNION ALL
    SELECT '2016' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2016`
    UNION ALL
    SELECT '2017' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2017`
    UNION ALL
    SELECT '2018' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2018`
    UNION ALL
    SELECT '2019' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2019`
    UNION ALL
    SELECT '2020' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2020`
    UNION ALL
    SELECT '2021' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2021`
    UNION ALL
    SELECT '2022' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2022`
) AS total_player_list
where Venue="Sohail Tanvir"
group by year,POS, Player, Ov, Runs, Wkts,Dots, SR, Against, Venue, `Match Date` 

SELECT year, POS, Player, Ov, Runs, Wkts,Dots, SR, Against, Venue, `Match Date` 
FROM (
    SELECT '2008' AS year, POS, Player, Ov, Runs, Wkts,Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2008`
    UNION ALL
    SELECT '2009' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2009`
    UNION ALL
    SELECT '2010' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2010`
    UNION ALL
    SELECT '2011' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2011`
    UNION ALL
    SELECT '2012' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2012`
    UNION ALL
    SELECT '2013' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2013`
    UNION ALL
    SELECT '2014' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2014`
    UNION ALL
    SELECT '2015' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2015`
    UNION ALL
    SELECT '2016' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2016`
    UNION ALL
    SELECT '2017' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2017`
    UNION ALL
    SELECT '2018' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2018`
    UNION ALL
    SELECT '2019' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2019`
    UNION ALL
    SELECT '2020' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2020`
    UNION ALL
    SELECT '2021' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2021`
    UNION ALL
    SELECT '2022' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2022`
) AS total_player_list
where Venue="Sawai Mansingh Stadium"
group by year,POS, Player, Ov, Runs, Wkts,Dots, SR, Against, Venue, `Match Date` 

SELECT  POS, Player, Ov, sum(Runs) as total_runs, Wkts,Dots, SR, Against, Venue, `Match Date` 
FROM (
    SELECT '2008' AS year, POS, Player, Ov, Runs, Wkts,Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2008`
    UNION ALL
    SELECT '2009' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2009`
    UNION ALL
    SELECT '2010' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2010`
    UNION ALL
    SELECT '2011' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2011`
    UNION ALL
    SELECT '2012' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2012`
    UNION ALL
    SELECT '2013' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2013`
    UNION ALL
    SELECT '2014' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2014`
    UNION ALL
    SELECT '2015' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2015`
    UNION ALL
    SELECT '2016' AS year, POS, Player, Ov, Runs, Wkts, Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2016`
    UNION ALL
    SELECT '2017' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2017`
    UNION ALL
    SELECT '2018' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2018`
    UNION ALL
    SELECT '2019' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2019`
    UNION ALL
    SELECT '2020' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2020`
    UNION ALL
    SELECT '2021' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2021`
    UNION ALL
    SELECT '2022' AS year, POS, Player, Ov, Runs, Wkts,  Dots, SR, Against, Venue, `Match Date` FROM `dotballs_2022`
) AS total_player_list
group by  Player,POS, Ov, Runs, Wkts,Dots, SR, Against, Venue, `Match Date`
order by Runs desc



