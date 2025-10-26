/* Write your T-SQL query statement below */
Select project_id,
--sum(E.experience_years),
--count(E.employee_id),
Cast(sum(E.experience_years)*1.0/count(E.employee_id) as decimal(10,2)) as average_years
FROM Project P
LEFT JOIN Employee E
ON P.employee_id=E.employee_id
group by p.project_id
