--Display all student IDs and names who do not belong to ‘COMPUTER’ or ‘CIVIL’ branch (USE NOT IN).

select stdid,sname,branch from student where branch not in ('computer','civil')

-- 14. Display all student names other than ‘DEEP’ from STUDENT table (USE NOT, <>, !=).
select * from student 

--select * from student where NOT (sname = 'deep');
--select * from student where sname <> 'deep';

-- 15. Display student names whose branch is not available (NULL) in STUDENT table.
select sname from student where branch is NOT NULL;


 select distinct branch from student;


 select TOP 50 percent * from student;


select TOP 5 stdid from student;


select TOP 5 * from student;


select TOP 5 stdid,sname FROM student where branch not in ('computer');


--select * from student where stdid > 105 AND stdid < 109
select * from student where stdid between 105 and 109

--Select all records from STUDENT where SPI is greater than 7.0 and less than or equal to 9.0, and student
--ID is between 102 and 108.
select * from student where spi > 7.0 AND spi <= 9.0 AND stdid between 102 and 108


-- 24. Display all details of students who have SPI more than 8.5 without using * from STUDENT table.
select stdid,sname,city,spi,branch from student where spi > 8.5;

-- 25. Retrieve names of students whose city is ‘RAJKOT’ and SPI is less than 8.00.
select * from student where city = 'rajkot' AND spi < 8.0;

-- 26. Retrieve records from STUDENT table where SPI is greater than 8.0 and student ID is less than 105
select * from student where spi > 8.0 AND stdid < 105;

-- 27. Retrieve records from STUDENT table where SPI is greater than 7.5 and student ID is between 100 and
--110 and city is ‘RAJKOT’ or ‘SURAT’.

select * from student 
where spi > 7.5 AND stdid BETWEEN 100 AND 110 AND city in ('rajkot','surat');

