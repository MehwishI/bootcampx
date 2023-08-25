SELECT a.day, count(*) as total_assignments
FROM assignments a
GROUP BY a.day
order by a.day