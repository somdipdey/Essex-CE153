-- create a table
CREATE TABLE student (
  student_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);
CREATE TABLE grades (
  student_id INTEGER PRIMARY KEY,
  grades INTEGER NOT NULL
);
-- insert some values
INSERT INTO student VALUES (1, 'Joe');
INSERT INTO student VALUES (2, 'Alexa');
INSERT INTO student VALUES (3, 'Peter');

INSERT INTO grades VALUES (2, 70);
INSERT INTO grades VALUES (3, 60);
INSERT INTO grades VALUES (4, 75);
-- please uncomment any of the following to see how join works in different ways
select 'NATURAL JOIN Output -->' AS ''; -- this query just prints 'NATURAL JOIN Output -->'
SELECT * FROM student NATURAL JOIN grades;

select 'INNER JOIN Output -->' AS ''; -- this query just prints 'INNER JOIN Output -->'
SELECT * FROM student S INNER JOIN grades G ON S.student_id = G.student_id;

select 'LEFT OUTER Output -->' AS ''; -- this query just prints 'LEFT OUTER Output -->'
SELECT * FROM student S LEFT OUTER JOIN grades G ON S.student_id = G.student_id;

select 'RIGHT OUTER Output -->' AS ''; -- this query just prints 'RIGHT OUTER Output -->'
SELECT * FROM student S RIGHT OUTER JOIN grades G ON S.student_id = G.student_id;

-- MySQL doesn't support FULL OUTER JOIN and can be achieved using the following query
select 'FULL OUTER in MySQL -->' AS ''; -- this query just prints 'FULL OUTER in MySQL -->'
SELECT * FROM Student S LEFT OUTER JOIN Grades G ON S.student_id = G.student_id 
UNION 
SELECT * FROM Student S RIGHT OUTER JOIN Grades G ON S.student_id = G.student_id;
