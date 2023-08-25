SELECT c.name as name , AVG(completed_at-started_at) as average_assistance_requests_duration
FROM assistance_requests a 
JOIN students s ON a.student_id = s.id
JOIN cohorts c ON s.cohort_id=c.id
GROUP BY c.name
ORDER BY average_assistance_requests_duration DESC
LIMIT 1;