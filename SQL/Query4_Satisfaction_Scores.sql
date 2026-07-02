SELECT
      [Department]
      ,cast(avg(cast([EnvironmentSatisfaction] as decimal(5,2))) as decimal(5,2)) as 'Average Environment Satisfaction'
      ,cast(avg(cast([JobSatisfaction] as decimal(5,2))) as decimal(5,2)) as 'Average Job Satisfaction'
      ,cast(avg(cast([WorkLifeBalance] as decimal(5,2))) as decimal(5,2)) as 'Average Work-Life_Balance'
FROM [HR-Employee-Attrition]
group by [Department]

--Conclusion: All departments score between 2.60 and 2.92 out of 4, indicating 
--below average satisfaction company-wide. Human Resources has the lowest Job 
--Satisfaction at 2.60 despite the best Work-Life Balance score. Sales consistently 
--underperforms across all three satisfaction metrics, compounding findings 
--from Queries 1 and 3.