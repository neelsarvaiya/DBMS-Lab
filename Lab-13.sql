select * from  STUDENT_INFO;
select * from Result;

--1. Combine information from Student and Result table using cross join (Cartesian product). 
select * from  STUDENT_INFO  s cross join Result r;

--2. Perform inner join on Student and Result tables.
select * from  STUDENT_INFO  s inner join Result r ON s.rno = r.RNO;

--3. Perform the left outer join on Student and Result tables. 
SELECT *
	FROM 
 STUDENT_INFO  s
	LEFT JOIN Result r
ON s.rno = r.RNO;

--4. Perform the right outer join on Student and Result tables. 
SELECT *
	FROM 
 STUDENT_INFO  s
	RIGHT JOIN Result r
ON s.rno = r.RNO;

--5. Perform the full outer join on Student and Result tables.
SELECT *
	FROM 
 STUDENT_INFO  s
	FULL OUTER JOIN Result r
ON s.rno = r.RNO;


--6. Display Rno, Name, Branch and SPI of all students.
select r.RNO, name, branch , SPI 
	from 
 STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO;


--7. Display Rno, Name, Branch and SPI of CE branch students only. 
select r.RNO, name, branch , SPI 
	from 
 STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
 where
	s.branch = 'CE';


--8. Display Rno, Name, Branch and SPI of students other than EC branch.
select r.RNO, name, branch , SPI 
	from 
 STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
 where
	s.branch = 'EC';

--9. Display Rno, Name and SPI of students whose SPI is greater than 8. 
select r.RNO, name, SPI 
	from 
 STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
 where
	r.spi > 8;

--10. Display Rno, Name and Branch of students whose SPI is less than 8. 
select r.RNO, name, branch 
	from 
 STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
 where
	r.spi < 8;


--11. Display average result of each branch. 
select s.branch , avg(r.spi) as avgResult
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By s.branch

--12. Display average result of CE and ME branch. 
select s.branch , avg(r.spi) as avgResult
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
WHERE branch in ('CE','EC')
GROUP By s.branch
 
--13. Display maximum and minimum SPI of each branch. 
select s.branch , max(r.spi) , min(r.spi)
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By s.branch

--14. Display branch-wise student count in descending order. 
select s.branch , count(s.rno) as stdcount
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By s.branch
ORDER by stdcount desc

--15. Display branch-wise total SPI of students. 
select s.branch , sum(spi) 
	from
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By s.branch

--16. Display branch-wise number of students having SPI greater than 8. 
select branch, count(s.rno)
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
where spi > 8
GROUP By branch

--17. Display branch-wise number of students having SPI less than 8.
select branch, count(s.rno)
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
where spi < 8
GROUP By branch


 
--18. Display branch-wise average SPI greater than 7. 
select branch, avg(spi) 
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By branch
HAVING avg(spi) > 7;

--19. Display branches having more than 1 students.
select branch , count(branch)
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By branch
HAVING count(branch) > 1;

--20. Display branches where maximum SPI is greater than 9.
select branch , max(spi)
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By branch
HAVING max(spi) > 9;


--21. Display average result of each branch and sort them in ascending order by SPI. 
select branch, avg(spi) as avgres
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By branch
ORDER BY avgres

--22. Display highest SPI from each branch and sort them in descending order.
select branch, max(spi) as maxspi
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By branch
ORDER BY maxspi desc

--23. Display average result of each branch and sort them in ascending order by SPI. 
select branch, avg(spi) as avgspi
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By branch
ORDER BY avgspi

--24. Display highest SPI from each branch and sort them in descending order. 
select branch, max(spi) as maxspi
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By branch
ORDER BY maxspi desc


--25. Display branches where difference between max and min SPI is greater than 1.
select branch
	from 
STUDENT_INFO s inner join Result r 
	on s.rno = r.RNO
GROUP By branch
HAVING ( max(spi) - min(spi) ) > 1