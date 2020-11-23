#1 없어진 기록 찾기

select  o.animal_id, o.name from animal_outs o
left outer join animal_ins i
on o.animal_id = i.animal_id
where i.animal_id is null
order by animal_id


#2 있었는데요 없었습니다

select O.animal_id, O.name from animal_outs O
join animal_ins I on I.animal_id = O.animal_id
where I.datetime > O.datetime
order by I.datetime


#3 오랜 기간 보호한 동물(1)

select I.name, I.datetime from animal_ins I
left outer join animal_outs O on I.animal_id = O.animal_id
where O.animal_id is null
order by I.datetime 
limit 3


#4 오랜 기간 보호한 동물(2)

SELECT outs.animal_id, outs.animal_type, outs.name
from animal_outs outs
left outer join animal_ins ins
on outs.animal_id = ins.animal_id
where ins.sex_upon_intake != outs.sex_upon_outcome
order by animal_id
