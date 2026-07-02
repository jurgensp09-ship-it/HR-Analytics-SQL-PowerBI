select
	case	
		when [Attrition] = 1 then 'Leavers'
		else 'Stayers'
	end as 'Attrition Group'
	,count([EmployeeCount]) as 'Total Employees'
	,avg([YearsInCurrentRole]) as 'AVG Years in current role'
	,avg([YearsSinceLastPromotion]) as 'AVG Years since last Promotion'
from [HR-Employee-Attrition]
group by case	
		when [Attrition] = 1 then 'Leavers'
		else 'Stayers'
	end

--Conclusion: Leavers spent on average only 2 years in their current role before leaving,
--half that of stayers at 4 years. Interestingly, leavers were promoted more recently 
--than stayers, suggesting promotion alone does not prevent attrition. Other factors 
--such as overtime and job satisfaction appear to outweigh career progression.