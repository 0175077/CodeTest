#1 최댓값 구하기
select datetime from animal_ins
order by datetime desc
limit 1

#2 최솟값 구하기
select datetime from animal_ins
order by datetime
limit 1

#3 동물 수 구하기
select count(datetime) as count from animal_ins

#4 중복 제거하기
select count(distinct name) as count from animal_ins
where name is not null
