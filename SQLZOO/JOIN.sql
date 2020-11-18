#1
#Modify it to show the matchid and player name for all goals scored by Germany. To identify German players, check for: teamid = 'GER'

select matchid, player from goal
where teamid = 'ger'


#2
#Show id, stadium, team1, team2 for just game 1012

select id,stadium,team1,team2 from game 
where id = '1012'

#3
#Modify it to show the player, teamid, stadium and mdate for every German goal.

select b.player, b.teamid, a.stadium, a.mdate from game a
join goal b
on a.id = b.matchid
where b.teamid = 'ger'


#4
#Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%'

select a.team1, a.team2, b.player from game a
join goal b
on a.id = b.matchid
where b.player like 'Mario%'


#5
#Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10

select b.player, b.teamid, c.coach, b.gtime from goal b
join eteam c on b.teamid = c.id
where b.gtime <= 10


#6
#List the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.

select a.mdate, c.teamname from game a
join eteam c on a.team1 = c.id
where c.coach = 'Fernando Santos'



#7
#List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'

select player from goal a
join game b on b.id = a.matchid
where stadium = 'national stadium, warsaw'


#8
#Instead show the name of all players who scored a goal against Germany.

select distinct player from goal b
join game a on b.matchid = a.id
where b.teamid != 'ger' and (a.team1 = 'ger' or a.team2 ='ger')


#9
#Show teamname and the total number of goals scored.

select teamname, count(teamid) as count from goal
join eteam on id = teamid
group by teamname


#10
#Show the stadium and the number of goals scored in each stadium.

select stadium, count(teamid) from game a
join goal b on id = matchid
group by stadium


#11
#For every match involving 'POL', show the matchid, date and the number of goals scored.

select matchid, mdate, count(teamid) from goal
join game on id = matchid
where team1 = 'pol' or team2 = 'pol'
group by matchid, mdate


#12
#For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'

select matchid, mdate, count(teamid) from goal b
join game a on id = matchid
where teamid = 'ger'
group by matchid, mdate


#13
#Notice in the query given every goal is listed. If it was a team1 goal then a 1 appears in score1, otherwise there is a 0. You could SUM this column to get a count of the goals scored by team1. Sort your result by mdate, matchid, team1 and team2.

select distinct mdate, team1 ,sum(case when teamid = team1 then 1 else 0 end) as score1, team2, sum(case when teamid = team2 then 1 else 0 end) as score2 from game
left join goal on game.id = goal.matchid
group by id, mdate, team1, team2
order by mdate, matchid, team1, team2














