#1
#List the films where the yr is 1962 [Show id, title]

select id, title from movie
where yr = '1962'


#2
#Give year of 'Citizen Kane'.

select yr from movie
where title = 'citizen kane'


#3
#List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.

select id, title, yr from movie
where title like 'star trek%'
order by yr


#4
#What id number does the actor 'Glenn Close' have?

select id from actor
where name = 'glenn close'


#5
#What is the id of the film 'Casablanca'

select id from movie
where title = 'casablanca'


#6
#Obtain the cast list for 'Casablanca'.
#Use movieid=11768, (or whatever value you got from the previous question)

select name from actor A
join casting C on A.id = C.actorid
where C.movieid = '11768'


#7
#Obtain the cast list for the film 'Alien'

select name from actor A
join casting C on C.actorid = A.id
where C.movieid = (select id from movie
where title = 'alien')


#8
#List the films in which 'Harrison Ford' has appeared

select title from movie M
join casting C on M.id = C.movieid
where C.actorid = (select id from actor
where name = 'harrison ford')


#9
#List the films where 'Harrison Ford' has appeared - but not in the starring role. [Note: the ord field of casting gives the position of the actor. If ord=1 then this actor is in the starring role]

select title from movie M
join casting C on C.movieid = M.id
join actor A on C.actorid = A.id
where A.name = 'harrison ford' and C.ord not in ('1')


#10
#List the films together with the leading star for all 1962 films.

select distinct title, name from movie M
join casting C on M.id = C.movieid
join actor A on C.actorid = A.id
where M.yr = '1962' and C.ord in ('1')


#11
#Which were the busiest years for 'Rock Hudson', show the year and the number of movies he made each year for any year in which he made more than 2 movies.

select M.yr, count(M.title) as count from movie M
join casting C on M.id = C.movieid
join actor A on C.actorid = A.id
where A.name = 'rock hudson'
group by M.yr
having count > 2







