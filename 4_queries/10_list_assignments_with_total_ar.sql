SELECT a.id as id, a.day, a.chapter, a.name, COUNT(b.*) as total_requests
FROM assignments a 
JOIN assistance_requests b 
ON a.id = b.assignment_id
GROUP BY a.id
ORDER BY total_requests DESC