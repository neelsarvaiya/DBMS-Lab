
--1. Add column state varchar(20). 
ALTER TABLE DEPOSIT ADD state VARCHAR(20);

-- 2. Add two more columns city varchar(20) and pincode int.
ALTER TABLE DEPOSIT ADD city varchar(20) , pincode int;

-- 3. Change the size of cname column from varchar(50) to varchar(35). 
ALTER TABLE DEPOSIT ALTER COLUMN cname varchar(35);

-- 4. Change the data type of amount from decimal to int. 
ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT;

-- 5. Delete column city from the DEPOSIT table. 
ALTER TABLE DEPOSIT DROP COLUMN CITY;

-- 6. Rename column actno to ano. 
EXEC sp_rename 'DEPOSIT.actno' , 'ano' , 'COLUMN';

-- 7. Rename column bname to branch_name. 
EXEC SP_RENAME 'DEPOSIT.BNAME' , 'BRANCH_NAME';

-- 8. Rename table DEPOSIT to DEPOSIT_DETAIL. 
EXEC SP_RENAME 'DEPOSIT' , 'DEPOSIT_DETAIL';

-- 9. Add column ifsc_code varchar(15). 
ALTER TABLE DEPOSIT_DETAIL ADD ifsc_code varchar(15);

-- 10. Change the size of bname column from varchar(50) to varchar(30).
ALTER TABLE DEPOSIT_DETAIL ALTER COLUMN BRANCH_NAME varchar(30);

-- 11. Rename column adate to aopendate. 
EXEC SP_RENAME 'DEPOSIT_DETAIL.adate' , 'aopendate';

-- 12. Delete column aopendate from DEPOSIT_DETAIL table. 
ALTER TABLE DEPOSIT_DETAIL DROP COLUMN aopendate;

-- 13. Rename column cname to customer_name. 
EXEC SP_RENAME 'DEPOSIT_DETAIL.cname' , 'customer_name';

-- 14. Add column country varchar(20). 
ALTER TABLE DEPOSIT_DETAIL ADD country varchar(20);

-- 15. Add column account_type varchar(15).
ALTER TABLE DEPOSIT_DETAIL ADD account_type varchar(15);

-- 16. Change data type of pincode from int to bigint.
ALTER TABLE DEPOSIT_DETAIL ALTER COLUMN pincode bigint;

-- 17. Delete column account_type.
ALTER TABLE DEPOSIT_DETAIL DROP COLUMN account_type;

-- 18. Rename column amount to balance.
EXEC SP_RENAME 'DEPOSIT_DETAIL.amount' , 'balance';

-- 19. Add column status varchar(10).
ALTER TABLE DEPOSIT_DETAIL ADD status varchar(10);

-- 20. Change table name deposit_detail to bank_deposit.
EXEC SP_RENAME 'DEPOSIT_DETAIL' , 'bank_deposit';



----  Delete queries ----

select * from bank_deposit;

-- 1. Delete all the records having amount less than or equal to 3000
DELETE FROM bank_deposit WHERE balance <= 3000;

-- 2. Delete all the accounts of ‘BEDI’ branch customer.
DELETE FROM bank_deposit WHERE BRANCH_NAME = 'BEDI';

-- 3. Delete all the accounts having account number greater than 102 and less than 109. 
DELETE FROM bank_deposit WHERE ano > 102 AND ano < 109;

-- 4. Delete all the accounts whose branch is ‘BEDI’ or ‘MADHAPAR’. 
DELETE FROM bank_deposit WHERE BRANCH_NAME = 'BEDI' OR BRANCH_NAME = 'MADHAPAR';

-- 5. Delete all the accounts details where amount is 8000 and account open after 1-1-2025;
DELETE FROM bank_deposit WHERE balance = 8000;

































