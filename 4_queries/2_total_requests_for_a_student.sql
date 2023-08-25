SELECT count(*) as total_assistance_requests, s.name as name
FROM assistance_requests r 
JOIN students s 
ON r.student_id = s.id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name