DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	id Serial,
	dept_no CHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT *
FROM dept_manager;