SELECT
      [JobRole]
      ,case
        when [Attrition] = 1 then 'Leavers'
        else 'Stayers'
      end as [Attrition]
      ,avg([MonthlyIncome]) as 'AVG Income'
      
FROM [HR-Employee-Attrition]
group by [JobRole], [Attrition]
order by JobRole, Attrition

--Conclusion: In most roles, employees who left earned less than those who stayed, 
--suggesting income is a factor in attrition. Research Director is a notable exception 
--where leavers earned more, indicating non-financial reasons for leaving.
--Sales Representatives show the lowest income overall, compounding the high 
--attrition rate already identified in Query 1.
