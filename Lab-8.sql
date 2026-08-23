USE cse_d2d_134;

select * from deposit
select * from employee
select * From student

--1. Display the Highest, Lowest Salary and Label the columns Maximum, Minimum respectively.
SELECT MAX(salry) AS Maximum , MIN(salry) AS Minimum FROM EMPLOYEE;

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively.
SELECT SUM(salry) AS Total_Sal , AVG(salry) AS Average_Sal FROM EMPLOYEE;


--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(*) FROM EMPLOYEE;


--4. Find highest salary from Rajkot city.
SELECT MAX(salry) AS highest_salary FROM EMPLOYEE WHERE CITY = 'Rajkot';


--5. Give maximum salary from IT department.
SELECT MAX(salry) AS highest_salary FROM EMPLOYEE WHERE DEPARTMENT = 'IT';


--6. Count employee department is HR.
SELECT COUNT(*) FROM EMPLOYEE WHERE DEPARTMENT = 'HR' OR DEPARTMENT = ' HR';


--7. Display average salary of Admin department.
SELECT AVG(SALRY) FROM EMPLOYEE WHERE department = 'Admin';


--8. Display total salary of HR department.
SELECT SUM(SALRY) FROM EMPLOYEE WHERE department IN ('HR',' HR');


-- 11. Display minimum salary of employee who belongs to Ahmedabad.
SELECT
	min(e.salry) AS MinimumSalary
FROM
	employee AS e
WHERE e.city='Ahmedabad'


--12. Find city wise highest salary
SELECT
	e.city,
	max(e.salry) AS Highestsalary
FROM
	employee AS e
WHERE e.city is not null
GROUP BY e.city


--13. Find department wise lowest salary

SELECT
	e.department,
	min(e.salry) AS lowestSalary
FROM
	employee AS e
GROUP BY e.department;


--14. Display minimum salary in each city.
SELECT
	e.city,
	min(e.salry) AS minimum
FROM
	employee AS e
WHERE e.city is not null
GROUP BY e.city

--15. Display average salary of employees from Surat.
SELECT
	AVG(e.salry) AS avgSalary
FROM
	employee AS e
WHERE
	e.city = 'surat';


--16. Display total salary of female employees.
SELECT
	sum(e.salry) AS totalSalaryOfFemale
FROM
	employee AS e
WHERE
	e.gender = 'FEMALE';



--17. Count number of male employees.
SELECT
	count(e.eid) AS malaEmployee
FROM
	employee AS e
WHERE
	e.gender = 'MALE';


--18. Display city with the total number of employees belonging to each city.
SELECT
	e.city,
	count(e.eid) AS numberOfEmployee
FROM
	employee as e
WHERE e.city is not NULL
GROUP BY e.city

--19. Count number of employees in each city where gender is MALE.
SELECT 
	e.city,
	count(e.eid) AS countOFMaleEmployee
FROM
 employee AS e
WHERE e.gender = 'MALE' AND e.city is not NULL
GROUP BY e.city

--20. Display maximum salary in each department where city is not Ahmedabad.
SELECT
	e.department,
	max(e.salry) AS maxSalary
FROM
	employee AS e
WHERE  e.city != 'Ahmedabad' 
GROUP BY e.department


-- 21. Display minimum salary in each city where gender is FEMALE.
SELECT 
	e.city,
	min(e.salry) AS minSalary
FROM
 employee AS e
WHERE e.gender = 'FEMALE' AND e.city is not NULL
GROUP BY e.city


--22. Give total salary of each department of EMPLOYEE table.
SELECT 
	e.department,
	sum(e.salry) AS Total
FROM
	employee AS e
GROUP BY e.department

--23. Give average salary of each department of EMPLOYEE table 
--without displaying the respective department name.
SELECT 
	avg(e.salry) AS average
FROM
	employee AS e
GROUP BY e.department


--24. Count the number of employees for each department in every city.
SELECT
	e.city,
	e.department,
	count(e.eid) AS employees
FROM
	employee AS e
WHERE e.city is not null
GROUP BY e.city , e.department

--25. Calculate the total salary distributed to male and female employees.
SELECT
	e.gender,
	sum(e.salry) as totalSalary
FROM
	employee AS e
GROUP BY e.gender


--26. Give city wise maximum and minimum salary of female employees.
SELECT
	e.city,
	max(e.salry) AS maximum,
	min(e.salry) AS miniimum
FROM
	employee AS e
WHERE
	e.gender = 'female'
GROUP BY e.city


--27. Calculate department, city, and gender wise average salary.
SELECT
	e.city,
	e.department,
	e.gender,
	avg(e.salry) AS average
FROM
	employee AS e
WHERE e.city is not null
GROUP BY e.city , e.department , e.gender

-- 28. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT
	max(e.salry) AS maxi,
	min(e.salry) AS mini,
	max(e.salry) - min(e.salry) AS DIFFERENCE
FROM
	employee AS e

--29. Display sum of salaries of department wise where department name consist 5 letter.
SELECT
	e.department,
	sum(e.salry) AS total
FROM
	employee AS e
WHERE e.department LIKE '_____'
GROUP BY e.department 


--30. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT
	e.city,
	e.department,
	max(e.salry) AS maximum
FROM
	employee AS e
WHERE e.city LIKE 'R%'
GROUP BY e.department , e.city



