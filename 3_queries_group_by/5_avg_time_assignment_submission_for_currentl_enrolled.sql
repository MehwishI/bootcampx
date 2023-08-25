SELECT s.name as student, AVG(duration) as avaerge_assignment_duration 
FROM assignment_submissions a
JOIN students s
ON a.student_id=s.id
WHERE s.end_date IS NULL
GROUP BY s.id
ORDER BY AVG(duration) DESC