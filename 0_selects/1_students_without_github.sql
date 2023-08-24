SELECT id, name, email, cohort_id 
FROM students
WHERE github IS NULL
order by cohort_id