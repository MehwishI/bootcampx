SELECT sum(duration)
FROM assignment_submissions a
JOIN students s
ON a.student_id= s.id 
WHERE s.id IN (
SELECT s.id as studentId  
FROM cohorts c
JOIN students s
ON c.id=s.cohort_id
WHERE c.name= 'FEB12');