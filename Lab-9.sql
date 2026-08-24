use cse_d2d_134;

select * from employee;

--1. Display cities where total salary of employees greater than 20000.
SELECT 
	e.city,
	sum(e.salry) AS toalSalary 
FROM
	employee AS e
GROUP BY e.city
HAVING sum(e.salry) > 20000


--2. Display departments having average salary greater than 12000.
SELECT 
	e.department,
	avg(e.salry) AS averageSalary
FROM
	employee AS e
GROUP BY e.department
HAVING avg(e.salry) > 12000



--3. Display departments having total salary greater than 20000.
SELECT 
	e.department,
	sum(e.salry) AS toalSalary
FROM
	employee AS e
GROUP BY e.department
HAVING sum(e.salry) > 20000


--4. Display departments having number of employees greater than 2.
SELECT 
	e.department,
	count(e.eid) AS numberofemployees
FROM
	employee AS e
GROUP BY e.department
HAVING count(e.eid) > 2


--5. Display cities where minimum salary less than 7000.
SELECT 
	e.city,
	min(e.salry) AS minSalary
FROM
	employee AS e
GROUP BY e.city
HAVING min(e.salry) < 7000


--6. Display cities where average salary less than 12000.
SELECT 
	e.city,
	avg(e.salry) AS avgSalary
FROM
	employee AS e
GROUP BY e.city
HAVING avg(e.salry) < 12000


--7. Display departments where maximum salary greater than 14000.
SELECT 
	e.department,
	max(e.salry) AS maxSlary
FROM
	employee AS e
GROUP BY e.department
HAVING max(e.salry) > 14000



--8. Display cities where total salary greater than equal to 30000.
SELECT 
	e.city,
	sum(e.salry) AS totalSalary
FROM
	employee AS e
GROUP BY e.city
HAVING sum(e.salry) >= 30000


--9. Display departments having number of employees equal to 2.
SELECT 
	e.department,
	max(e.salry) AS maxSlary
FROM
	employee AS e
GROUP BY e.department
HAVING max(e.salry) > 14000


--10. Display cities having number of female employees greater than equal to 1.
SELECT 
	e.city,
	count(e.eid) AS nEmployess
FROM
	employee AS e
WHERE e.gender = 'female'
GROUP BY e.city
HAVING count(e.eid) >= 1


--11. Display departments where minimum salary of male employees greater than 7000.
SELECT 
	e.department,
	min(e.salry) AS minSlary
FROM
	employee AS e
WHERE e.gender = 'male'
GROUP BY e.department
HAVING min(e.salry) > 7000


--12. Display cities where maximum salary of female employees less than 13000.
SELECT 
	e.city,
	max(e.salry) AS maxs
FROM
	employee AS e
WHERE e.gender = 'female'
GROUP BY e.city
HAVING max(e.salry) < 13000


-- 13. Display departments where average salary greater than 10000 and less than 14000.
SELECT 
	e.department,
	avg(e.salry) AS minSlary
FROM
	employee AS e
GROUP BY e.department
HAVING avg(e.salry) > 10000 AND avg(e.salry) < 14000

--14. Display cities where number of employees joined before 2023 greater than 1.
SELECT 
	e.city,
	count(e.eid)
FROM
	employee AS e
WHERE e.joiningyear < 2023
GROUP BY e.city
HAVING count(e.joiningyear) > 1

--15. Display cities where total salary of male employees greater than 15000, ordered by total salary.
SELECT 
	e.city,
	sum(e.salry) AS total
FROM
	employee AS e
WHERE e.gender = 'male'
GROUP BY e.city
HAVING sum(e.salry) > 15000
ORDER BY total


--16. Display departments where maximum salary greater than 13000, ordered by max salary.
SELECT 
	e.department,
	max(e.salry) AS maxSlary
FROM
	employee AS e
GROUP BY e.department
HAVING max(e.salry) > 13000
ORDER BY maxSlary desc

--17. Display cities where total salary of male employees greater than 15000.
SELECT 
	e.city,
	sum(e.salry) AS total
FROM
	employee AS e
WHERE e.gender = 'male'
GROUP BY e.city
HAVING sum(e.salry) > 15000


--18. Display departments where employees joined after 2022 and count greater than 1.
SELECT 
	e.department,
	count(e.eid)
FROM
	employee AS e
WHERE e.joiningyear > 2022
GROUP BY e.department
HAVING count(e.joiningyear) > 1


--19. Display departments where average salary of female employees greater than 8000.
SELECT 
	e.department,
	avg(e.salry)
FROM
	employee AS e
WHERE e.gender = 'female'
GROUP BY e.department
HAVING avg(e.salry) > 8000

--20. Display departments having total salary greater than 20000 and less than 40000. 
SELECT 
	e.department,
	sum(e.salry) 
FROM
	employee AS e
GROUP BY e.department
HAVING sum(e.salry) > 20000 AND sum(e.salry) < 40000








Part – B:
21. Display departments having total salary of employees joined after 2021 greater than 20000.
22. Display cities where average salary of employees joined after 2022 greater than 10000.
23. Display cities having number of distinct departments greater than 1.
24. Display cities where maximum salary of employees joined before 2022 greater than 12000.
25. Display departments where total salary of female employees less than 15000.
Part – C:
26. Display cities where number of male employees greater than female employees.
27. Display departments having number of cities greater than 1.
28. Display cities where total salary excluding IT department greater than 15000.
29. Display departments where average salary excluding HR employees greater than 11000.
30. Display departments where total salary of male employees greater than female employees. 
