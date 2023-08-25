SELECT t.name, count(a.*) as total_assitances
FROM teachers t
JOIN assistance_requests a
ON t.id= a.teacher_id
GROUP BY t.name
HAVING t.name = 'Waylon Boehm'