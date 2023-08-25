SELECT c.name as cohort,count(a.*) as total_submissions
FROM assignment_submissions a
JOIN students s
ON a.student_id = s.id
JOIN cohorts c
ON s.cohort_id = c.id
GROUP BY c.name
ORDER BY count(a.*) DESC