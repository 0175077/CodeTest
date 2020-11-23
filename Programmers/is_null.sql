#1 이름이 없는 동물의 아이디

select animal_id from animal_INS
where name is null


#2 이름이 있는 동물의 아이디

select animal_id from animal_ins
where name is not null
order by animal_id


#3 NULL 처리하기

select animal_type, ifnull(name,'No name'), sex_upon_intake from animal_ins
