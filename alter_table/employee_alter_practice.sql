-- create table
CREATE TABLE
  employe (id serial, name varchar(100), age int);

-- rename table
ALTER TABLE employe
RENAME TO employee;

-- add column email
ALTER TABLE employee
ADD COLUMN email varchar(50);

-- delete column
ALTER TABLE employee
DROP COLUMN email;

-- rename column
ALTER TABLE employee
RENAME COLUMN name TO user_name;

-- Change column data type
ALTER TABLE employee
ALTER COLUMN user_name type varchar(50);

-- Set not null constraint
ALTER TABLE employee
ALTER COLUMN email
SET
  NOT NULL;

-- drip constraint
ALTER TABLE employee
ALTER COLUMN email
DROP NOT NULL;

-- set default value
ALTER TABLE employee
ALTER COLUMN email
SET DEFAULT 'test@gmail.com';

INSERT INTO
  employee (user_name, age)
VALUES
  ('Supta', 23);

-- add constraint (table label constraint)
ALTER TABLE employee ADD CONSTRAINT unique_employee_email UNIQUE (email);

ALTER TABLE employee ADD CONSTRAINT pk_employee_id PRIMARY KEY (id);

-- drop constraint (table label constraint)
ALTER TABLE employee
DROP CONSTRAINT unique_employee_email;

-- Add multiple columns
ALTER TABLE employee
ADD COLUMN address varchar(200),
ADD COLUMN phone varchar(20) UNIQUE NOT NULL;

CREATE TABLE
  students (
    student_id serial PRIMARY KEY,
    first_name varchar(50),
    last_name varchar(50),
    age int,
    grade char(2),
    course varchar(50),
    email varchar(100) UNIQUE,
    dob date,
    blood_group varchar(5),
    country varchar(50)
  );

INSERT INTO
  students (
    first_name,
    last_name,
    age,
    grade,
    course,
    email,
    dob,
    blood_group,
    country
  )
VALUES
  (
    'Arif',
    'Haque',
    16,
    'A+',
    'Mathematics',
    'arif.haque@example.com',
    '2009-05-12',
    'A+',
    'Bangladesh'
  ),
  (
    'Nabila',
    'Khan',
    17,
    'B',
    'Physics',
    'nabila.khan@example.com',
    '2008-11-20',
    'B+',
    'Bangladesh'
  ),
  (
    'Rafiq',
    'Chowdhury',
    15,
    'A',
    'Chemistry',
    'rafiq.chowdhury@example.com',
    '2009-08-03',
    'O+',
    'Bangladesh'
  ),
  (
    'Sabrina',
    'Rahman',
    16,
    'B+',
    'Biology',
    'sabrina.rahman@example.com',
    '2009-02-15',
    'A-',
    'Bangladesh'
  ),
  (
    'Imran',
    'Hasan',
    17,
    'C',
    'Computer Science',
    'imran.hasan@example.com',
    '2008-12-05',
    'AB+',
    'Bangladesh'
  ),
  (
    'Tania',
    'Akter',
    15,
    'A',
    'Mathematics',
    'tania.akter@example.com',
    '2009-06-30',
    'B-',
    'Bangladesh'
  ),
  (
    'Fahim',
    'Uddin',
    16,
    'B',
    'Physics',
    'fahim.uddin@example.com',
    '2009-03-22',
    'O-',
    'Bangladesh'
  ),
  (
    'Mahi',
    'Islam',
    17,
    'A+',
    'Chemistry',
    'mahi.islam@example.com',
    '2008-09-18',
    'AB-',
    'Bangladesh'
  ),
  (
    'Sami',
    'Rahim',
    15,
    'C+',
    'Biology',
    'sami.rahim@example.com',
    '2009-01-10',
    'A+',
    'Bangladesh'
  ),
  (
    'Nafisa',
    'Begum',
    16,
    'B+',
    'Computer Science',
    'nafisa.begum@example.com',
    '2009-04-25',
    'O+',
    'Bangladesh'
  ),
  (
    'Jahid',
    'Sultana',
    17,
    'A',
    'Mathematics',
    'jahid.sultana@example.com',
    '2008-07-07',
    'B+',
    'Bangladesh'
  ),
  (
    'Anika',
    'Hossain',
    15,
    'B+',
    'Physics',
    'anika.hossain@example.com',
    '2009-10-12',
    'A-',
    'Bangladesh'
  ),
  (
    'Rony',
    'Karim',
    16,
    'C',
    'Chemistry',
    'rony.karim@example.com',
    '2009-06-01',
    'O+',
    'Bangladesh'
  ),
  (
    'Sharmin',
    'Shah',
    17,
    'A+',
    'Biology',
    'sharmin.shah@example.com',
    '2008-08-14',
    'AB+',
    'Bangladesh'
  ),
  (
    'Tanvir',
    'Chakma',
    15,
    'B',
    'Computer Science',
    'tanvir.chakma@example.com',
    '2009-03-30',
    'B-',
    'Bangladesh'
  ),
  (
    'Labiba',
    'Parvin',
    16,
    'C+',
    'Mathematics',
    'labiba.parvin@example.com',
    '2009-01-25',
    'O-',
    'Bangladesh'
  ),
  (
    'Fahad',
    'Rahman',
    17,
    'A',
    'Physics',
    'fahad.rahman@example.com',
    '2008-11-09',
    'A+',
    'Bangladesh'
  ),
  (
    'Munira',
    'Akhtar',
    15,
    'B+',
    'Chemistry',
    'munira.akhtar@example.com',
    '2009-05-18',
    'B+',
    'Bangladesh'
  ),
  (
    'Rashed',
    'Haque',
    16,
    'A+',
    'Biology',
    'rashed.haque@example.com',
    '2009-02-28',
    'AB-',
    'Bangladesh'
  ),
  (
    'Sumaiya',
    'Khatun',
    17,
    'C',
    'Computer Science',
    'sumaiya.khatun@example.com',
    '2008-09-05',
    'O+',
    'Bangladesh'
  );

-- Using select
select
  *
from
  students;

select
  first_name,
  last_name,
  age,
  blood_group
from
  students;

SELECT
  first_name AS "First Name",
  age AS "Student Age"
FROM
  students;

-- Sorting
SELECT
  first_name,
  country,
  blood_group,
  age
FROM
  students
ORDER BY
  age DESC
LIMIT
  5;

SELECT
  first_name,
  country,
  blood_group,
  age
FROM
  students
ORDER BY
  grade ASC,
  age ASC;

SELECT
  first_name,
  country,
  blood_group,
  age
FROM
  students
ORDER BY
  student_id ASC;

-- Distinct and Where filtering
SELECT DISTINCT
  country
FROM
  students;

SELECT DISTINCT
  course
FROM
  students;

SELECT
  *
FROM
  students
WHERE
  country = 'Thailand';

SELECT
  first_name AS "First Name",
  age,
  course
FROM
  students
WHERE
  country = 'Thailand';

SELECT
  first_name AS "First Name",
  age,
  course,
  country
FROM
  students
WHERE
  course IN ('Physics', 'Chemistry');

SELECT
  first_name AS "First Name",
  age,
  course
FROM
  students
WHERE
  age < 18;

-- Filtering with AND & OR
SELECT
  first_name AS "First Name",
  age,
  course,
  country,
  grade
FROM
  students
WHERE
  course IN ('Physics', 'Chemistry')
  OR grade = 'A';

SELECT
  *
FROM
  students
WHERE
  country = 'India'
  OR country = 'Bangladesh';

SELECT
  *
FROM
  students
WHERE
  (
    grade = 'A'
    OR grade = 'B'
  )
  AND (
    course = 'Physics'
    OR course = 'Mathematics'
  );

SELECT
  *
FROM
  students
WHERE
  (
    grade = 'A'
    OR grade = 'B'
  )
  AND course IN ('Physics', 'Mathematics');

-- Comparison, BETWEEN & IN
SELECT
  country
FROM
  students
WHERE
  country != 'Nepal';

SELECT
  country
FROM
  students
WHERE
  country <> 'Nepal';

SELECT
  *
FROM
  students
WHERE
  age BETWEEN 15 AND 16;

SELECT
  *
FROM
  students
WHERE
  country IN ('Bangladesh', 'India', 'Nepal');

SELECT
  *
FROM
  students
WHERE
  grade = 'C'
  AND course = 'Computer Science';

--LIKE vs ILIKE
select
  *
from
  students
where
  first_name like 'A%';

select
  *
from
  students
where
  email ilike 'A%';

select
  *
from
  students
where
  last_name ilike '%n';

--NOT & Scalar Functions
select
  country
from
  students
where
  not country = 'Bangladesh';

select
  grade
from
  students
where
  not grade = 'A';

--Scalar Functions
select
  upper(first_name)
from
  students;

select
  lower(first_name)
from
  students;

select
  concat (first_name, ' ', last_name)
from
  students;