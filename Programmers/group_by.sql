#1 고양이와 개는 몇 마리 있을까

select animal_type, count(animal_type) from animal_ins
group by animal_type
order by animal_type


#2 동명 동물 수 찾기

select name, count(name) as count from animal_ins
group by name
having count(name) >= 2
order by name


#3 입양 시각 구하기(1)

select hour(datetime) as hour, count(datetime) count from animal_outs
group by hour
having hour < 20 and hour >8
order by hour


#4 입양 시각 구하기(2)

set @hour = -1;

SELECT (@hour := @hour +1) as hour, 
(select count(*) from animal_outs where hour(datetime) = @hour) as count 
from animal_outs
where @hour <23




