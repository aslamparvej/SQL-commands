-- For creating DATABASE
-- CREATE DATABASE assignment;

-- For creating department table
-- CREATE TABLE department(
--     dept_no INT PRIMARY KEY,
--     dept_name VARCHAR(100),
--     dept_loc VARCHAR(100)
-- )

-- For creating employee table 
-- CREATE TABLE employee(
--     emp_id INT PRIMARY KEY,
--     ename VARCHAR(100) NOT NULL,
--     job VARCHAR(100) NOT NULL,
--     mgr INT,
--     hire_date DATE,
--     salary INT,
--     comm INT,
--     dept_no INT,
--     FOREIGN KEY(dept_no) REFERENCES department (dept_no)
-- );

-- For inserting data into department table
-- INSERT INTO department(dept_no,dept_name,dept_loc)
-- VALUES 
--     (20,"RESEARCH","DALLAS"),
--     (30,"SALES","CHICAGO"),
--     (40,"OPERATIONS","BOSTON");

--Inserting data into employee table
-- INSERT INTO employee(emp_id,ename,job,mgr,hire_date,salary,comm,dept_no)
-- VALUES 
--     (7499, "ALLEN", "SALESMAN", 7698, '1981-02-20', 1600, 300, 30),
--     (7521, "WARD", "SALESMAN", 7698, '1981-02-22', 1250, 500, 30),
--     (7566, "JONES", "MANAGER", 7839, '1981-04-02', 2975, NULL, 20),
--     (7654, "MARTIN","SALESMAN", 7698, '1981-09-28', 1400, NULL, 30),
--     (7698, "BLAKE", "MANAGER", 7839, '1981-05-01', 2850, NULL, 30),
--     (7782, "CLARK", "MANAGER", 7839, '1981-06-09', 2450, NULL, 10),
--     (7788, "SCOTT", "ANALYST", 7566, '1982-12-09', 3000, NULL, 20),
--     (7839, "KING", "PRESIDENT", 7566, '1981-11-17', 5000, NULL, 10),
--     (7844, "TURNER", "SALESMAN", 7698, '1981-09-08', 1500, 0, 30),
--     (7876, "ADAMS", "CLERK", 7788, '1983-01-12', 1100, NULL, 20),
--     (7900, "JAMES", "CLERK", 7698, '1981-12-03', 950, NULL, 30),
--     (7902, "FORD", "ANALYST", 7566, '1981-12-03', 3000, NULL, 20),
--     (7934, "MILLER", "CLERK", 7782, '1982-01-23', 1300, NULL, 10);

-- UPDATE table data
-- UPDATE employee 
-- SET  comm = 1400, salary=1250
-- WHERE emp_id = 7654;

-- 1. List the emps who joined in the year 1981. 
-- SELECT * FROM employee
-- WHERE hire_date<('1981-12-31') AND hire_date>('1981-01-01');

-- 2. List the total information of EMP table along with DNAME and Loc of all the 
-- emps Working Under ‘ACCOUNTING’ & ‘RESEARCH’. 

SELECT emp.*, dept.dept_loc, dept.dept_name FROM employee AS emp, department AS dept
WHERE dept.dept_name IN ("ACCOUNTING" ,"RESEARCH") AND emp.dept_no = dept.dept_no;



