CREATE TABLE IF NOT EXISTS department (
	id SERIAL PRIMARY KEY,
	department_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS employee (
	id SERIAL PRIMARY KEY,
	employee_name VARCHAR(100) NOT null
	department_id INTEGER NOT NULL REFERENCES department(id),
);


CREATE TABLE IF NOT EXISTS employee_boss (
	id SERIAL PRIMARY KEY,
	employee_id INTEGER NOT NULL REFERENCES employee(id),
	boss_id INTEGER NOT NULL REFERENCES employee(id)
);
