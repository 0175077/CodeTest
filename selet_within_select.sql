#1
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

#2
select name from world
where gdp/population > (select gdp/population from world
where name = 'united kingdom')
and continent = 'europe'

#3
select name, continent from world
where continent in (select continent from world
where name in ('argentina','australia'))
order by name

#4
