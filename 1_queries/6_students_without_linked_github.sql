SELECT name, email, phone
FROM students
WHERE github IS NULL
and end_date IS NOT NULL;