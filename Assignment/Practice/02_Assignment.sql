-- For creating department table
CREATE TABLE department(
    dept_id VARCHAR(100) PRIMARY KEY,
    dept_name VARCHAR(100),
    dept_loc VARCHAR(100)
)
-- For inserting data into department
INSERT INTO department (dept_id,dept_name,dept_loc)
VALUES 
        ("D1","Account","2nd Floor"),
        ("D2","Marketing","1st Floor");

-- For creating employee table 
CREATE TABLE employee(
    emp_id VARCHAR(100) PRIMARY KEY,
    emp_name VARCHAR(100),
    dob date,
    salary INT,
    dept_id VARCHAR(100),
    FOREIGN KEY(dept_id) REFERENCES department(dept_id)
);

-- For inserting data into employee table 
INSERT INTO employee (emp_id,emp_name,dob,salary,dept_id)
VALUES 
    ("E05", "Ankit", '1995-02-28',15000,"D2"),
    ("E122", "Rahman", '1990-11-05',18000,"D1"),
    ("F96", "Mike", '1986-01-31', 20000,"D2");

DESCRIBE department;
DESCRIBE employee;

SELECT * from department;
SElECT * FROM employee;
