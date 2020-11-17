#1 모든 레코드 조회하기
SELECT * from animal_ins
order by animal_id

#2 역순 정렬하기
SELECT name, datetime from animal_ins
order by animal_id desc

#3 아픈 동물 찾기
SELECT animal_id, name from animal_ins
where intake_condition = 'Sick'
order by animal_id

#4 어린 동물 찾기
SELECT animal_id, name from animal_ins
where intake_condition not like 'Aged'

#5 동물의 아이디와 이름
select animal_id, name from animal_ins
order by animal_id

#6 여러 기준으로 정렬하기
select animal_id, name, datetime from animal_ins
order by name, datetime desc

#7 상위 N개 레코드
select name from animal_ins
order by datetime
limit 1
