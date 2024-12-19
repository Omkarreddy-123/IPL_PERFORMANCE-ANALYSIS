create database ipl_match;
use ipl_match;
show tables;
select * from ipl_dataset;
ALTER TABLE ipl_dataset
DROP COLUMN full_scorecard;

select winner,count(winner)as total_wins from ipl_dataset
group by winner
order by total_wins desc

select man_of_the_match,count(man_of_the_match) as total_manofmatches from ipl_dataset
where place='Mumbai'
group by man_of_the_match 
order by total_manofmatches desc


select winner,count(winner)as total_wins from ipl_dataset
where place='Mumbai'
group by winner
order by total_wins desc

SELECT winner, COUNT(winner) AS total_wins 
FROM ipl_dataset
WHERE toss_choice = 'Field'
GROUP BY winner
ORDER BY total_wins desc;


SELECT team1_score, team2_score, place, 
       ABS(team1_score - team2_score) AS margin
FROM ipl_dataset
WHERE ABS(team1_score - team2_score) > 50
group by place ,team1_score,team2_score
order by margin desc;

SELECT winner, COUNT(winner) AS total_wins 
FROM ipl_dataset
WHERE toss_choice = 'Bat'
GROUP BY winner
ORDER BY total_wins desc;


select winner,count(winner)as total_wins from ipl_dataset
where margin='6 wickets'
group by winner
order by total_wins desc;

select man_of_the_match,count(man_of_the_match) as total_manofmatches from ipl_dataset
where stadium='Dr DY Patil Sports Academy'
group by man_of_the_match 
order by total_manofmatches desc

SELECT toss_choice, COUNT(toss_choice) AS total_wonchoice 
FROM ipl_dataset
WHERE stadium='Brabourne Stadium'
GROUP BY toss_choice
ORDER BY total_wonchoice desc;

select winner,count(winner)as total_wins from ipl_dataset
where margin='4 wickets'
group by winner
order by total_wins desc;


