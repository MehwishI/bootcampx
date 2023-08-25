SELECT a.day as day, count(a.*) as number_of_assignments,sum(a.duration) as duration
FROM assignments a 
GROUP By a.day
ORDER BY day 