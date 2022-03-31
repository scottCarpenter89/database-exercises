USE scott;

DESCRIBE employees;
DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE dept_emp;
DESCRIBE salaries;
DESCRIBE titles;
DESCRIBE albums;
ALTER TABLE albums
ADD UNIQUE (artist, name);
DESCRIBE albums;

INSERT INTO albums
VALUES ('1', Michael Jackson', 'Thriller', '1982', '47.3', 'Pop,rock, R&B');