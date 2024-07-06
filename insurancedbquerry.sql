create database insuranceDB;

use insurancedb;

select * from insurancedata;

-- 1. Show records of 'male' patient from 'southwest' region.
select * from insurancedata where gender = "male" and region = "southwest";

-- 2. Show all records having bmi in range 30 to 45 both inclusive.
  select * from insurancedata where bmi >= 30 and bmi <= 45;
 
 -- 3. Show minimum and maximum bloodpressure of diabetic patient who smokes. Make column names as MinBP and MaxBP respectively.
 select min(bloodpressure) as minbp, max(bloodpressure) as maxbp
 from insurancedata where diabetic = "yes" and smoker = "yes"; 
 
--  4. Find no of unique patients who are not from southwest region.
 select count(*) from insurancedata where  region != "southwest";
 
--  5. Total claim amount from male smoker.
 select sum(claim) as totalclaim from insurancedata where gender = "male" and smoker = "yes";
 
--  6. Select all records of south region.
 select * from insurancedata where region like 'south%';
 
--  7. No of patient having normal blood pressure. Normal range[90-120]
select count(*) from insurancedata where bloodpressure between 90 and 120;
 
--  8. No of patient below 17 years of age having normal blood pressure as per the below formula -
--      BP normal range = 80+(age in years × 2) to 100 + (age in years × 2)
--     Note: Formula taken just for practice, don't take in real sense.
select count(*) as pbelow17 from insurancedata where age < 17  and  bloodpressure between 80+(age * 2)  and 100 + (age * 2);

-- 9. What is the average claim amount for non-smoking female patients who are diabetic?
select avg(claim) as avgclaim_amount_of_nonsmoking_female from insurancedata where gender = "female" and diabetic = "no";

-- 10. Write a SQL query to update the claim amount for the patient with PatientID = 1234 to 5000.
update insurancedata set claim = 5000 where patientID = 1234;

-- 11. Write a SQL query to delete all records for patients who are smokers and have no children.
delete from insurancedata where smoker = "yes" and children = 0;

