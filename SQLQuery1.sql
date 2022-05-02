--Aggregate Functions
select max(age) as maximumAge from tblPatients

--Dates
select * from tblLiverCancer where OrigDate > '1999-01-01'

--SQL Logical Operators like IN, AND, LIKE, NOT, OR, BETWEEN, EXISTS, etc.
select * from tblLiverCancer where Cancer_Name in ('Angiosarcoma','Hepatoblastoma')

select * from tblDoctorsDetail where Age > 30 and age < 70

select * from tblDoctorsDetail where DoctorName like '%ka%'

select * from tblDoctorsDetail where DoctorName not in ('Robert')

select * from tblPatients where [Name] = 'John' or Age = 34

select * from tblPatients where Age between 0 and 50

--Regular Expressions
SELECT Cancer_Name FROM tblLiverCancer where Cancer_Name like '[ka]%' ORDER BY Cancer_Name;

--Formula Expressions
select ID, Cancer_Name,OrigDate from tblLiverCancer

--Subqueries
select * from tblPatients where DctId = (select top 1 DctId from tblDoctorsDetail)
