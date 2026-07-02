select
	Department
	,sum(cast(Attrition as INT)) as 'Employees Left'
	,count(EmployeeCount) as 'Total Employees'
	,cast(sum(cast(Attrition as INT)) * 100.0 / count(EmployeeCount) as decimal(5,2)) as 'Attrition %'
from [HR-Employee-Attrition]
group by Department
order by [Attrition %] desc;

--Conclusion: Sales has the highest attrition at 20.63%, followed closely by Human Resources 
--at 19.05%. Research & Development is significantly lower at 13.84%.