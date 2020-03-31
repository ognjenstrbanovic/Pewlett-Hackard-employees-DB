DROP TABLE titles;

CREATE TABLE titles (
	id Serial,
	emp_no INT NOT NULL,
	title VARCHAR(25) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT *
FROM titles
LIMIT 100;