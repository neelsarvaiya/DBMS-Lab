USE cse_d2d_134;


--1. Display the Highest, Lowest Salary and Label the columns Maximum, Minimum respectively.
SELECT MAX(salry) AS Maximum , MIN(salry) AS Minimum FROM EMPLOYEE;

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively.
SELECT SUM(salry) AS Total_Sal , AVG(salry) AS Average_Sal FROM EMPLOYEE;


--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(*) FROM EMPLOYEE;


--4. Find highest salary from Rajkot city.
SELECT * FROM EMPLOYEE;
SELECT MAX(salry) AS highest_salary FROM EMPLOYEE WHERE CITY = 'Rajkot';


--5. Give maximum salary from IT department.
SELECT MAX(salry) AS highest_salary FROM EMPLOYEE WHERE DEPARTMENT = 'IT';


--6. Count employee department is HR.
SELECT COUNT(*) FROM EMPLOYEE WHERE DEPARTMENT = 'HR' OR DEPARTMENT = ' HR';


--7. Display average salary of Admin department.
SELECT AVG(SALRY) FROM EMPLOYEE WHERE department = 'Admin';


--8. Display total salary of HR department.
SELECT SUM(SALRY) FROM EMPLOYEE WHERE department IN ('HR',' HR');

--9. Count total number of cities of employee without duplication.



10. Count unique departments.
















11. Display minimum salary of employee who belongs to Ahmedabad.
12. Find city wise highest salary.
13. Find department wise lowest salary.
14. Display minimum salary in each city.
15. Display average salary of employees from Surat.
16. Display total salary of female employees.
17. Count number of male employees.
18. Display city with the total number of employees belonging to each city.
19. Count number of employees in each city where gender is MALE.
20. Display maximum salary in each department where city is not Ahmedabad.