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
ALTER TABLE employee
ADD CONSTRAINT unique_employee_email UNIQUE (email);

ALTER TABLE employee
ADD CONSTRAINT pk_employee_id PRIMARY KEY (id);