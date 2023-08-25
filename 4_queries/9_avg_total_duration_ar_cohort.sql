SELECT avg(a.total_duration) as average_total_duration
FROM (
SELECT c.name as name , SUM(completed_at-started_at) as total_duration
FROM assistance_requests a 
JOIN students s ON a.student_id = s.id
JOIN cohorts c ON s.cohort_id=c.id
GROUP BY c.name
ORDER BY total_duration
) a