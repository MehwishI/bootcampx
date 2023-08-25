SELECT t.name as teacher, s.name as student, b.name as assignment, 
(a.completed_at-a.started_at) as duration
FROM assistance_requests a
JOIN  teachers t
ON t.id= a.teacher_id
JOIN students s 
ON s.id= a.student_id
JOIN assignments b 
ON b.id= a.assignment_id
ORDER BY duration