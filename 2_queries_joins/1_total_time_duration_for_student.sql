SELECT sum(duration)
FROM assignment_submissions a
JOIN students s
ON a.student_id= s.id
WHERE s.name= 'Ibrahim Schimmel'