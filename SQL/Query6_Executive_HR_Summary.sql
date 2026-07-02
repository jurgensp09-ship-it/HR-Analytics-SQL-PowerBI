select
(select
	cast(count([EmployeeCount]) as varchar(10)) 
from [HR-Employee-Attrition]) as [Total Employees]
,(select cast(sum(cast(Attrition as INT)) * 100.0 / count(*) as decimal(5,2)) 
from [HR-Employee-Attrition]) as [Overall Attrition Rate %]
,(select
	cast(avg([MonthlyIncome]) as decimal(6,2)) 
from [HR-Employee-Attrition]) as [Average Income]
,(select
	avg([YearsAtCompany]) 
from [HR-Employee-Attrition]) as [AVG Tenure]
,(select top (1) 
        Department
 from [HR-Employee-Attrition]
 group by Department
 order by cast(sum(cast(Attrition as INT)) * 100.0 / count(*) as decimal(5,2)) desc) as [Highest Attrition Department]

 --Conclusion: The company has an overall attrition rate of 16.12%, meaning roughly 
--1 in 6 employees leave. Average tenure is 7 years and average monthly income is 
--$6,502. Sales is the highest attrition department, a finding consistent across 
--all queries in this project. Overtime, low satisfaction scores, and below-average 
--income in certain roles are the key drivers identified.
