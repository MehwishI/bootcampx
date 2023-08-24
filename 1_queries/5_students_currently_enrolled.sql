SELECT name, id,cohort_id
FROM students
WHERE end_date IS NULL
order by cohort_id