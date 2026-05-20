
--Q 13. Students not from Delhi

select * from students where city <> 'Delhi'

--Q 14. Students admitted after june 2023  

select * from students where year(admission_date)>=2023 and month(admission_date)>6

--Q 29. Cities where average marks > 75  

select city, avg(marks) from students group by city having avg(marks)>75 

--Q 30. Highest marks in each department

select department, max(marks) from students group by department

--Q 31. Add grade column using CASE 

select *,
case
	when marks between 90 and 100 then 'O'
	when marks between 80 and 89 then 'E'
	when marks between 70 and 79 then 'A'
	when marks between 60 and 69 then 'B'
	when marks between 50 and 59 then 'C'
	when marks between 40 and 49 then 'D'
	else 'F'
end as
[Grade]
from students

--Q 33. Students having marks above department average 


--Q 34. Second highest marks 

select max(marks) from students where marks < (select max(marks) from students)

--Q 36. Students with duplicate names  

select name, count(*) from students group by name having count(*) > 1

--Q 37. Students admitted in last 30 days

select * from students where admission_date >= dateadd(day, -30, getdate())

--Q 40. Department with highest average marks

select top 1 department, avg(marks) from students group by department order by avg(marks) desc

--Q 41. Fetch latest admitted student

select top 1 * from students order by admission_date desc

--Q 49. Departments sorted by student_count descending

select department, count(*) from students group by department order by count(*) desc