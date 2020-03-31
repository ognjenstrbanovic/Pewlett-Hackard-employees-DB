DROP TABLE departments;

CREATE TABLE departments (
	dept_no	CHAR(4) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY(dept_no)
);

SELECT *
FROM departments;