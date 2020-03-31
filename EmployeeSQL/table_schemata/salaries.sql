DROP TABLE salaries;

CREATE TABLE salaries (
	id Serial,
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT *
FROM salaries
LIMIT 100;