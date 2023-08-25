SELECT a.day, count(*) as total_assignments
FROM assignments a
GROUP BY a.day
HAVING count(*) >=10
order by a.day