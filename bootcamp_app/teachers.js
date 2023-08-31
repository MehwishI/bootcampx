const { Pool } = require('pg');
const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});





pool.query(`SELECT t.name as teacher_name, c.name as cohort 
FROM assistance_requests a 
JOIN teachers t 
ON a.teacher_id= t.id 
JOIN students s 
ON a.student_id = s.id 
JOIN cohorts c 
ON s.cohort_id= c.id
WHERE c.name= '${process.argv[2] || 'JUL02'}'
GROUP BY t.name, c.name
ORDER BY t.name;`)
  .then(res => {
    res.rows.forEach(teacher => {
      console.log(`${teacher.cohort}: ${teacher.teacher_name}`);
    })
  })
  .catch(err => console.error('query-error', err.stack));
