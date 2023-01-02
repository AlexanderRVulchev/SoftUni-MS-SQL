Exercises: CRUD
This document defines the exercise assignments for the "Databases Basics - MSSQL" course @ Software University. 
### 1.	Examine the Databases
Download and get familiar with the SoftUni, Diablo and Geography database schemas and tables. You will use them in the current and following exercises to write queries.
Part I – Queries for SoftUni Database
### 2.	Find All Information About Departments
Write a SQL query to find all available information about the Departments.<br/>
Example<br/>
DepartmentID	Name	ManagerID<br/>
1	Engineering	12<br/>
2	Tool Design	4<br/>
3	Sales	273<br/>
…	…	…
### 3.	Find all Department Names
Write SQL query to find all Department names.<br/>
Example<br/>
Name<br/>
Engineering<br/>
Tool Design<br/>
Sales<br/>
…
### 4.	Find Salary of Each Employee
Write SQL query to find the first name, last name and salary of each employee.<br/>
Example<br/>
FirstName	LastName	Salary<br/>
Guy	Gilbert	12500.00<br/>
Kevin	Brown	13500.00<br/>
Roberto	Tamburello	43300.00<br/>
…	…	…
### 5.	Find Full Name of Each Employee
Write SQL query to find the first, middle and last name of each employee. <br/>
Example<br/>
FirstName	MiddleName	LastName<br/>
Guy	R	Gilbert<br/>
Kevin	F	Brown<br/>
Roberto	NULL	Tamburello<br/>
…	…	…
### 6.	Find Email Address of Each Employee
Write a SQL query to find the email address of each employee. (By his first and last name). Consider that the email domain is softuni.bg. Emails should look like “John.Doe@softuni.bg". The produced column should be named "Full Email Address". <br/>
Example<br/>
Full Email Address<br/>
Guy.Gilbert@softuni.bg<br/>
Kevin.Brown@softuni.bg<br/>
Roberto.Tamburello@softuni.bg<br/>
…
### 7.	Find All Different Employee’s Salaries
Write a SQL query to find all different employee’s salaries. Show only the salaries.<br/>
Example<br/>
Salary<br/>
9000.00<br/>
9300.00<br/>
9500.00<br/>
…<br/>
### 8.	Find all Information About Employees
Write a SQL query to find all information about the employees whose job title is “Sales Representative”. <br/>
Example<br/>
ID	First<br/>
Name	Last<br/>
Name	Middle<br/>
Name	Job Title	DeptID	Mngr<br/>
ID	HireDate	Salary	AddressID<br/>
275	Michael	Blythe	G	Sales Representative	3	268	…	23100.00	60<br/>
276	Linda	Mitchell	C	Sales Representative	3	268	…	23100.00	170<br/>
277	Jillian	Carson	NULL	Sales Representative	3	268	…	23100.00	61<br/>
…	…	…	…	…	…	…	…	…	…
### 9.	Find Names of All Employees by Salary in Range
Write a SQL query to find the first name, last name and job title of all employees whose salary is in the range [20000, 30000].<br/>
Example<br/>
FirstName	LastName	JobTitle<br/>
Rob	Walters	Senior Tool Designer<br/>
Thierry	D'Hers	Tool Designer<br/>
JoLynn	Dobney	Production Supervisor<br/>
…	…	…
### 10.	 Find Names of All Employees 
Write a SQL query to find the full name of all employees whose salary is 25000, 14000, 12500 or 23600. Full Name is combination of first, middle and last name (separated with single space) and they should be in one column called “Full Name”.<br/>
Example<br/>
Full Name<br/>
Guy R Gilbert<br/>
Thierry B D'Hers<br/>
JoLynn M Dobney<br/>
### 11.	 Find All Employees Without Manager
Write a SQL query to find first and last names about those employees that does not have a manager. <br/>
Example<br/>
FirstName	LastName<br/>
Ken	Sanchez<br/>
Svetlin	Nakov<br/>
…	…
### 12.	 Find All Employees with Salary More Than 50000
Write a SQL query to find first name, last name and salary of those employees who has salary more than 50000. Order them in decreasing order by salary. <br/>
Example<br/>
FirstName	LastName	Salary<br/>
Ken	Sanchez	125500.00<br/>
James	Hamilton	84100.00<br/>
…	…	…
### 13.	 Find 5 Best Paid Employees.
Write SQL query to find first and last names about 5 best paid Employees ordered descending by their salary.<br/>
Example<br/>
FirstName	LastName<br/>
Ken	Sanchez<br/>
James	Hamilton<br/>
…	…
### 14.	Find All Employees Except Marketing
Write a SQL query to find the first and last names of all employees whose department ID is different from 4.<br/>
Example<br/>
FirstName	LastName<br/>
Guy	Gilbert<br/>
Roberto	Tamburello<br/>
Rob	Walters<br/>
### 15.	Sort Employees Table
Write a SQL query to sort all records in the Employees table by the following criteria: <br/>
•	First by salary in decreasing order<br/>
•	Then by first name alphabetically<br/>
•	Then by last name descending<br/>
•	Then by middle name alphabetically<br/>
Example<br/>
ID	First<br/>
Name	Last<br/>
Name	Middle<br/>
Name	Job Title	DeptID	Mngr<br/>
ID	HireDate	Salary	AddressID<br/>
109	Ken	Sanchez	J	Chief Executive Officer	16	NULL	…	125500.00	177<br/>
148	James	Hamilton	R	Vice President of Production	7	109	…	84100.00	158<br/>
273	Brian	Welcker	S	Vice President of Sales	3	109	…	72100.00	134<br/>
…	…	…	…	…	…	…	…	…	…
### 16.	 Create View Employees with Salaries
Write a SQL query to create a view V_EmployeesSalaries with first name, last name and salary for each employee.<br/>
Example<br/>
FirstName	LastName	Salary<br/>
Guy	Gilbert	12500.00<br/>
Kevin	Brown	13500.00<br/>
…	…	…
### 17.	Create View Employees with Job Titles
Write a SQL query to create view V_EmployeeNameJobTitle with full employee name and job title. When middle name is NULL replace it with empty string (‘’).<br/>
Example<br/>
Full Name	Job Title<br/>
Guy R Gilbert	Production Technician<br/>
Kevin F Brown	Marketing Assistant<br/>
Roberto  Tamburello	Engineering Manager<br/>
…	…
### 18.	 Distinct Job Titles
Write a SQL query to find all distinct job titles.<br/>
Example<br/>
JobTitle<br/>
Accountant<br/>
Accounts Manager<br/>
Accounts Payable Specialist<br/>
…
### 19.	Find First 10 Started Projects
Write a SQL query to find first 10 started projects. Select all information about them and sort them by start date, then by name.<br/>
Example<br/>
ID	Name	Description	StartDate	EndDate<br/>
6	HL Road Frame	Research, design and development of HL Road …	1998-05-02 00:00:00	2003-06-01 00:00:00<br/>
2	Cycling Cap	Research, design and development of C…	2001-06-01 00:00:00	2003-06-01 00:00:00<br/>
5	HL Mountain Frame	Research, design and development of HL M…	2001-06-01 00:00:00	2003-06-01 00:00:00<br/>
…	…	…	…	…
### 20.	 Last 7 Hired Employees
Write a SQL query to find last 7 hired employees. Select their first, last name and their hire date.<br/>
Example<br/>
FirstName	LastName	HireDate<br/>
Rachel	Valdez	2005-07-01 00:00:00<br/>
Lynn	Tsoflias	2005-07-01 00:00:00<br/>
Syed	Abbas	2005-04-15 00:00:00<br/>
…	…	…
### 21.	Increase Salaries
Write a SQL query to increase salaries of all employees that are in the Engineering, Tool Design, Marketing or Information Services department by 12%. Then select Salaries column from the Employees table. After that exercise restore your database to revert those changes.<br/>
Example<br/>
Salary<br/>
12500.00<br/>
15120.00<br/>
48496.00<br/>
33376.00<br/>
…<br/>

## Part II – Queries for Geography Database
### 22.	 All Mountain Peaks
Display all mountain peaks in alphabetical order.<br/>
Example<br/>
PeakName<br/>
Aconcagua<br/>
Banski Suhodol<br/>
Batashki Snezhnik<br/>
…<br/>
### 23.	 Biggest Countries by Population
Find the 30 biggest countries by population from Europe. Display the country name and population. Sort the results by population (from biggest to smallest), then by country alphabetically.<br/>
Example<br/>
CountryName	Population<br/>
Russia	140702000<br/>
Germany	81802257<br/>
France	64768389<br/>
…	…
### 24.	 *Countries and Currency (Euro / Not Euro)
Find all countries along with information about their currency. Display the country name, country code and information about its currency: either "Euro" or "Not Euro". Sort the results by country name alphabetically.<br/>
*Hint: Use CASE … WHEN.<br/>
Example<br/>
CountryName	CountryCode	Currency<br/>
Afghanistan	AF	Not Euro<br/>
Åland	AX	Euro<br/>
Albania	AL	Not Euro<br/>
…	…	…

## Part III – Queries for Diablo Database
### 25.	 All Diablo Characters
Display all characters in alphabetical order. <br/>
Example<br/>
Name<br/>
Amazon<br/>
Assassin<br/>
Barbarian<br/>
…

