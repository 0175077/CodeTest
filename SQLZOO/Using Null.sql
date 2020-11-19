#1
#List the teachers who have NULL for their department.

select name from teacher
where dept is null



#2
#Note the INNER JOIN misses the teachers with no department and the departments with no teacher.

select T.name, D.name from teacher T
join dept D on T.dept = D.id
where T.dept is not null

#3
#Use a different JOIN so that all teachers are listed.

select T.name, D.name from teacher T
left outer join dept D on D.id = T.dept


#4
#Use a different JOIN so that all departments are listed.

select T.name, D.name from teacher T
right outer join dept D on D.id = T.dept



#5
#Use COALESCE to print the mobile number. Use the number '07986 444 2266' if there is no number given.
#Show teacher name and mobile number or '07986 444 2266'

select name, coalesce(mobile,'07986 444 2266') as mobile from teacher


#6
#Use the COALESCE function and a LEFT JOIN to print the teacher name and department name.
#Use the string 'None' where there is no department.

select T.name, coalesce(D.name, 'None') from teacher T
left outer join dept D on T.dept = D.id


#7
#Use COUNT to show the number of teachers and the number of mobile phones.

select count(name) name, count(mobile) mobile from teacher


#8
#Use COUNT and GROUP BY dept.name to show each department and the number of staff.
#Use a RIGHT JOIN to ensure that the Engineering department is listed.

select D.name, count(T.name) count from teacher T
right outer join dept D on T.dept = D.id
group by D.name

#9

#10
