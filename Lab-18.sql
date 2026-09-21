
use cse_d2d_134

--1. Display the details of students whose SPI is greater than the average SPI.
SELECT * FROM STUDENT
WHERE 
SPI > (SELECT 
		AVG(SPI) AS SPI 
		FROM 
		STUDENT
		)


--2. Display the names of students whose SPI is less than the average SPI.
SELECT * FROM STUDENT
WHERE 
SPI < (SELECT 
		AVG(SPI) AS SPI 
		FROM 
		STUDENT
		)

--3. Display the student details who has the highest SPI.
SELECT * FROM STUDENT
WHERE 
SPI > (SELECT 
		AVG(SPI) AS SPI 
		FROM 
		STUDENT
		)
--4. Display the student details who has the lowest SPI.
SELECT * FROM STUDENT
WHERE 
SPI < (SELECT 
		AVG(SPI) AS SPI 
		FROM 
		STUDENT
		
--5. Display the students whose SPI is greater than SPI of student DHARMIK.
SELECT * FROM STUDENT
WHERE 
SPI > (	SELECT 
			SPI		
		FROM 
			STUDENT
		WHERE sname = 'DHARMIK')

--6. Display the students whose SPI is less than SPI of student RIYA.
SELECT * FROM STUDENT
WHERE 
SPI < (	SELECT 
			SPI		
		FROM 
			STUDENT
		WHERE sname = 'RIYA')

--7. Display the students who belong to the same branch as KRUNAL.
SELECT * FROM STUDENT
WHERE 
BRANCH = (SELECT 
			branch		
		FROM 
			STUDENT
		WHERE sname = 'KRUNAL')

--8. Display the students whose branch is different from HETVI.
SELECT * FROM STUDENT
WHERE 
BRANCH != (SELECT 
			branch		
		FROM 
			STUDENT
		WHERE sname = 'HETVI')

--9. Display the second highest SPI from RESULT table.
SELECT TOP 1 *  FROM RESULT
WHERE 
SPI < (SELECT 
			MAX(SPI) AS SPI		
		FROM 
			RESULT)
ORDER BY SPI DESC

--10. Display the second lowest SPI from RESULT table.
SELECT TOP 1 * FROM RESULT
WHERE 
SPI > 
	(SELECT 
	MIN(SPI) AS SPI		
	FROM 
	RESULT
	)
ORDER BY spi 

--11. Display the names of students whose SPI is above branch-wise average SPI.
	SELECT * FROM STUDENT

	SELECT sname 
	FROM STUDENT s1 
	WHERE s1.SPI > (
		SELECT AVG(SPI) 
		FROM STUDENT s2 
		WHERE s2.branch = s1.branch
	);

--12. Display the branch having maximum average SPI.
--13. Display the branch having minimum average SPI. 


