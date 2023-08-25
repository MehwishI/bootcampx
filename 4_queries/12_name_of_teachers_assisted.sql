SELECT t.name as teacher, c.name as cohort 
FROM assistance_requests a 
JOIN teachers t 
ON a.teacher_id= t.id 
JOIN students s 
ON a.student_id = s.id 
JOIN cohorts c 
ON s.cohort_id= c.id
WHERE c.name= 'JUL02'
GROUP BY t.name, c.name
ORDER BY t.name