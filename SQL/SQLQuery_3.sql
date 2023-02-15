CREATE DATABASE AS3

CREATE TABLE DEPARTMENT(
    dept_id INT IDENTITY(1001,1000) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(20) NOT NULL
)
CREATE TABLE EMPLOYEE(
    emp_id INT NOT NULL PRIMARY KEY,
    dept_id INT NOT NULL,
    mngr_id INT,
    emp_name VARCHAR(15) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES DEPARTMENT(dept_id)
)

-- DELETE FROM DEPARTMENT
-- DBCC CHECKIDENT ('DEPARTMENT', RESEED, 1)

INSERT INTO DEPARTMENT VALUES('Mechanical'),('Computer Science'),('Electrical'),('Marketing')

SELECT*FROM DEPARTMENT

INSERT INTO EMPLOYEE VALUES (62347,'3001',NULL,'RAKESH','7000'),
(63654,'1001',62347,'AMAN','2000'),
(68752,'3001',62347,'SHYAM','1000'),
(64459,'4001',62347,'PIYUSH','4000'),
(69067,'2001',NULL,'HARSH','3100'),
(63789,'2001',69067,'KRISH','6000'),
(68901,'1001',69067,'CLERK','900'),
(65431,'4001',NULL,'BRUCE','9000'),
(67890,'2001',65431,'PETTER','1500'),
(66543,'1001',NULL,'STEVE','2999')


SELECT*FROM EMPLOYEE

-- DELETE FROM EMPLOYEE

-- 1. write a SQL query to find Employees who have the biggest salary in their Department
SELECT E.emp_name,E.salary,D.dept_name
    FROM EMPLOYEE E
        INNER JOIN DEPARTMENT D
            ON D.dept_id =E.dept_id 
                WHERE E.salary IN (SELECT MAX(salary) 
                FROM EMPLOYEE GROUP BY dept_id)


-- 2. write a SQL query to find Departments that have less than 3 people in it
SELECT DEPARTMENT.dept_name,COUNT(EMPLOYEE.dept_id) AS COUNT
    FROM DEPARTMENT 
        INNER JOIN EMPLOYEE
        ON DEPARTMENT.dept_id =EMPLOYEE.dept_id
            GROUP BY DEPARTMENT.dept_name
            HAVING COUNT(*) <3;

-- 3. write a SQL query to find All Department along with the number of people there
SELECT DEPARTMENT.dept_name,COUNT(EMPLOYEE.dept_id) AS COUNT
  FROM DEPARTMENT 
     INNER JOIN EMPLOYEE
       ON DEPARTMENT.dept_id =EMPLOYEE.dept_id
        GROUP BY DEPARTMENT.dept_name
        

-- 4. write a SQL query to find All Department along with the total salary there
SELECT DEPARTMENT.dept_name,SUM(EMPLOYEE.salary) AS TOTAL_SALARY
    FROM DEPARTMENT
        INNER JOIN EMPLOYEE
            ON DEPARTMENT.dept_id =EMPLOYEE.dept_id
            GROUP BY DEPARTMENT.dept_name;
