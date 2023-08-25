SELECT s.name as student, AVG(a.duration) as averge_assignment_duration, AVG(g.duration) as average_estimated_duration
FROM assignment_submissions a
JOIN students s
ON a.student_id=s.id
JOIN assignments g
ON a.assignment_id = g.id
WHERE s.end_date IS NULL
GROUP BY s.id
HAVING AVG(a.duration) < AVG(g.duration)
ORDER BY AVG(a.duration) 