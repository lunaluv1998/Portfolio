SELECT * FROM data_new.salaries;

use data_new;

-- 1 Show all the columns and rows in the table.
SELECT * FROM salaries;

-- 2 Show only the EmployeeName and JobTitle Columns
SELECT EmployeeName,JobTitle FROM salaries;

-- Show the number of employees in the table.
select count(*) from salaries;

-- Show the unique job titles in the table.
select distinct JobTitle from salaries;

-- Show the JobTitle and overtime pay for all employees
-- Overtime pay greater than 50000
select JobTitle, OvertimePay from salaries 
where OvertimePay > 50000;

-- Show the average base pay for all employees
select avg(BasePay) as "Average BasePay" from salaries;

-- Show the top 10 highest paid employees.
select EmployeeName,TotalPay from salaries
order by TotalPay desc
limit 10;

-- Show the average of BasePay, OvertimePay, and OtherPay for each employee.alte
select EmployeeName, (BasePay + OvertimePay + OtherPay)/3 as avg_bp_op_otherpay from salaries;

-- Show all employees who have the word "Manager" in their job title.
select EmployeeName,JobTitle from salaries
where JobTitle like '%Manager%';

-- Show all employees with a job title not equal to "Manager".
select EmployeeName, JobTitle from salaries
where Jobtitle != 'Manager';

-- Show all Employees with a total pay between 50,000 and 75,000. 
select EmployeeName, TotalPay from salaries
where TotalPay between 50000 and 75000;

-- Show all employees with a base pay less than 50,000
-- or a total pay greater than 100,000.
select * from salaries
where BasePay <50000 or TotalPay > 100000;

-- Show all employees with a total pay benefits value 
-- between 125,000 and 150,000 and with a job title containing the word "Director".
select * from salaries
where TotalPayBenefits between 125000 and 150000
and JobTitle like '%Director%';

-- Show all employees ordered by their total pay benefits in descending order.
select * from salaries
order by TotalPayBenefits desc; 

-- Show all job titles with an average base pay of at least
-- 100,000 and order them by the average base pay in descending order 
select JobTitle, avg(BasePay) as "Average_Base_Pay" from salaries
group by JobTitle 
having avg(BasePay) >= 100000
order by Average_Base_Pay desc;

-- Delete the column. 
select * from salaries;
alter table salaries
drop column Notes;
select * from salaries; 

-- Update the base pay of all employees with the job title
-- containing "Manager" by increasing it by 10% 
update salaries
set BasePay = BasePay * 1.1 
where JobTitle like '%Manager%';
select * from salaries;

-- Delete all employees who have no OvertimePay. 
select count(*) from salaries
where OvertimePay =0;
delete from salaries
where OvertimePay =0;



-- 

