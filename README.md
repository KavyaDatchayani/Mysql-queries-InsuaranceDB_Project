# Basic MySQL Queries Project

This project involves a series of MySQL queries to practice SQL skills. The database used contains patient information with the following columns:

- `PatientID`: Unique identifier for each patient.
- `Gender`: Gender of the patient.
- `Region`: Geographic region of the patient.
- `BMI`: Body Mass Index of the patient.
- `BloodPressure`: Blood pressure reading of the patient.
- `Diabetic`: Whether the patient is diabetic (Yes/No).
- `Smoker`: Whether the patient is a smoker (Yes/No).
- `Children`: Number of children the patient has.
- `Age`: Age of the patient.
- `ClaimAmount`: Insurance claim amount.

## SQL Queries

1. **Show records of 'male' patient from 'southwest' region.**

2. **Show all records having BMI in range 30 to 45 both inclusive.**

3. **Show minimum and maximum blood pressure of diabetic patients who smoke. Make column names as MinBP and MaxBP respectively.**

4. **Find the number of unique patients who are not from the southwest region.**

5. **Total claim amount from male smokers.**

6. **Select all records of the south region.**

7. **Number of patients having normal blood pressure. Normal range [90-120].**

8. **Number of patients below 17 years of age having normal blood pressure as per the formula:**
    - BP normal range = 80 + (age in years × 2) to 100 + (age in years × 2)
    - Note: Formula taken just for practice, don't take in real sense.

9. **What is the average claim amount for non-smoking female patients who are diabetic?**

10. **Write a SQL query to update the claim amount for the patient with PatientID = 1234 to 5000.**

11. **Write a SQL query to delete all records for patients who are smokers and have no children.**
