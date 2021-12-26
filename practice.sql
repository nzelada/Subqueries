SELECT first_name, last_name
FROM band_students
WHERE id IN (
   SELECT id
   FROM drama_students);
   
   
DELETE FROM drama_students
WHERE id IN (
  SELECT id
  FROM band_student
);

SELECT *
FROM drama_students
WHERE grade = (
  SELECT grade
  FROM band_students
  WHERE id = 20
);

SELECT first_name, last_name
FROM band_students
WHERE id NOT IN (
 SELECT id
 FROM drama_students
);

SELECT grade, COUNT(*) AS '# of Students'
FROM band_students
WHERE EXISTS (
  SELECT grade
  FROM drama_students
)
GROUP BY grade;
