SELECT c.name as cohort_name ,count(s.*) as total_students
FROM cohorts c
JOIN students s
ON c.id = s.cohort_id
GROUP BY c.name
HAVING count(s.*) >= 18 
ORDER BY count(s.*)