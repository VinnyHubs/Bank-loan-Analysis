select * from bank_loan_data
select * from INFORMATION_SCHEMA.COLUMNS
select * from INFORMATION_SCHEMA.TABLES

-----/*TOTAL LOAN APPLICATIONS*/
select count(id) as total_application 
from bank_loan_data

--MTD LOAN APPLICATIONS
select count(id) as mtd_total_application 
from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

--PMTD LOAN APPLICATION
select count(id) as pmtd_loan_application 
from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

-----/*Total Funded Amount*/
select sum(loan_amount) as total_funded_amount 
from bank_loan_data

--MTD Total Funded Amount
select sum(loan_amount) as mtd_total_funded_amount 
from bank_loan_data
where MONTH(issue_date) = 12 and year(issue_date) = 2021

--PMTD Total Funded Amount
select sum(loan_amount) as pmtd_total_funded_amount 
from bank_loan_data
where MONTH(issue_date) = 11 and year(issue_date) = 2021

-----/* Total Amount Received*/
select sum(total_payment) as total_amount_received 
from bank_loan_data

--MTD Total Amount Received
select sum(total_payment) as mtd_total_amount_received 
from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

--PMTD Total Amount Received
select sum(total_payment) as pmtd_total_amount_received 
from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

-----/*Average Interest Rate*/
select ROUND(avg(int_rate), 4) * 100 as avg_interest_rate
from bank_loan_data

--MTD Average Interest Rate
select ROUND(AVG(int_rate), 4)* 100 as mtd_avg_interest_rate
from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

--PMTD Average Interest Rate
select ROUND(AVG(int_rate), 4)* 100 as pmtd_avg_interest_rate
from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

-----/*Avg DTI*/
select ROUND(AVG(dti), 4)* 100 as avg_dti 
from bank_loan_data

--MTD Average Interest Rate
select ROUND(AVG(dti), 4)* 100 as mtd_avg_dti
from bank_loan_data
where month(issue_date) = 12 and YEAR(issue_date) = 2021

--PMTD Average Interest Rate
select ROUND(AVG(dti), 4)* 100 as pmtd_avg_dti
from bank_loan_data
where month(issue_date) = 11 and YEAR(issue_date) = 2021

select * from bank_loan_data
select loan_status from bank_loan_data


/*GOOD LOAN ISSUED*/
--Good Loan Percentage
select 
     (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' 
	             THEN id END)* 100.0)
				 / COUNT(id) as Good_loan_percentage
				 from bank_loan_data

--Good Loan Applications
select count(id) as good_loan_application 
from bank_loan_data
where loan_status = 'Fully Paid' OR loan_status = 'Current'

--Good Loan Funded Amount
select sum(loan_amount) as good_loan_funded_amount
from bank_loan_data
where loan_status = 'Fully Paid' OR loan_status = 'Current'

--Good Loan Amount Received
select sum(total_payment) as good_loan_amount_received
from bank_loan_data
where loan_status = 'Fully Paid' OR loan_status = 'Current'

/*BAD LOAN ISSUED*/
--Bad Loan Percentage
select
     (COUNT(CASE WHEN loan_status = 'Charged Off'
	 THEN id END)* 100.0)
	 / COUNT(id) as Bad_Loan_Percentage
	 from bank_loan_data

--Bad Loan Applications
select count(id) as bad_loan_application
from bank_loan_data
where loan_status = 'Charged Off'

--Bad Loan Funded Amount
select sum(loan_amount) as bad_loan_funded_amount
from bank_loan_data
where loan_status = 'Charged Off'

--bad Loan Amount Received
select sum(total_payment) as bad_loan_amount_received
from bank_loan_data
where loan_status = 'Charged Off'

-----/*LOAN STATUS*/
	SELECT
        loan_status,
        COUNT(id) AS Loan_appliaction,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        bank_loan_data
    GROUP BY
        loan_status


SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status

/*B. BANK LOAN REPORT | OVERVIEW*/
--MONTH

select 
     month(issue_date) as month_number,
	 DATENAME(month, issue_date) as month_name,
	 count(id) as total_loan_application,
	 sum(loan_amount) as total_funded_amount,
	 sum(total_payment) as total_received_amount
from bank_loan_data
group by month(issue_date),
	     DATENAME(month, issue_date)
order by month(issue_date)

/*STATE*/

select 
     address_state,
	 count(id) as total_loan_application,
	 sum(loan_amount) as total_funded_amount,
	 sum(total_payment) as total_received_amount
from bank_loan_data
group by address_state
order by count(id)  desc

/*TERM*/

select 
     term,
	 count(id) as total_loan_application,
	 sum(loan_amount) as total_funded_amount,
	 sum(total_payment) as total_received_amount
from bank_loan_data
group by term
order by term

/*EMPLOYEE LENGTH*/

select 
     emp_length,
	 count(id) as total_loan_application,
	 sum(loan_amount) as total_funded_amount,
	 sum(total_payment) as total_received_amount
from bank_loan_data
group by emp_length
order by count(id)  desc

/*PURPOSE*/

SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY count(id) desc

/*HOME OWNERSHIP*/

SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY count(id) desc


SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data 
where grade = 'A' and address_state = 'CA'
GROUP BY home_ownership
ORDER BY count(id) desc










