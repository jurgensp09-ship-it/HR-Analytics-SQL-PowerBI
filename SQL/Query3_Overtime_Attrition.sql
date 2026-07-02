SELECT
      [Department]
      ,case
            when [OverTime] = 1 then 'Yes'
            else 'No'
        end as 'Works Overtime'
      ,count(*) as 'Total Employees'
      ,sum(cast([Attrition] as INT)) as 'Employees Left'
      ,cast(sum(cast([Attrition] as INT)) * 100.0 / count(*) as decimal(5,2)) as 'Attrition %'
FROM [HR-Employee-Attrition]
group by [Department], [OverTime]
order by [Department], [OverTime]

--Conclusion: Overtime is a significant driver of attrition across all departments.
--Sales employees working overtime have the highest attrition at 37.50%.
--Research & Development without overtime is healthy at 8.55%, suggesting overtime, not the department,
--is the retention risk. HR should review overtime policies, particularly in Sales.
