The city mayor, came up with the idea to create an online platform where all the citizens can report about different problems and a special organization will work to resolve all the incoming reports. This organization has a few departments each of which is responsible for a set of problem's categories in which users can submit a report. In each department there are employees who get assigned to a report. Of course, this huge platform needs a reliable database to store and process the information and the mayor has asked for the best specialist in this area. That's why you got chosen! Congratulations and good luck! 
## Section 1. DDL (30 pts)
You have been given the E/R Diagram of the Report Service:</br>
 
 ![image](https://user-images.githubusercontent.com/106471266/234050804-f36112e8-bef1-42ec-8976-5e2986e595ac.png)
 
Create a database called Service. You need to create 6 tables:</br>
•	Users - contains information about the people who submist reports;</br>
•	Reports - contains information about the problems;</br>
•	Employees - contains information about the employees;</br>
•	Departments - contains information about the departments;</br>
•	Categories - contains information about categories of the reports;</br>
•	Status - contains information about the possible status.</br>
</br>
NOTE: Please keep in mind that in case you have to work with a date, you have to use the exact same data type, described in the models tables. For example, data type Date means that you have to use Date, DateTime means that you have to use DateTime. If you don't use the correct type, the Judge system won't accept your submission as correct.</br>
NOTE: Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).</br>
</br>
You have been tasked to create the tables in the database by the following models:</br>
Users</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Username	String up to 30 symbols	Unique for each user, NULL is NOT permitted</br>
Password	String up to 50 symbols	NULL is NOT permitted</br>
Name	String up to 50 symbols	NULL is permitted</br>
Birthdate	Date with time	NULL is permitted</br>
Age	Integer from 0 to 2,147,483,647	In range between 14 and 110 (inclusive)</br>
Email	String up to 50 symbols	NULL is NOT permitted</br>
</br>
Departments</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 50 symbols	NULL is NOT permitted</br>
</br>
Employees</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
FirstName	String up to 25 symbols	NULL is permitted</br>
LastName	String up to 25 symbols	NULL is permitted</br>
Birthdate	Date with time	NULL is permitted</br>
Age	Integer from 0 to 2,147,483,647	In range between 18 and 110 (inclusive)</br>
DepartmentId	Integer from 0 to 2,147,483,647	Relationship with table Departments</br>
</br>
Categories</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 50 symbols	NULL is NOT permitted</br>
DepartmentId	Integer from 0 to 2,147,483,647	Relationship with table Departments. NULL is NOT permitted</br>
</br>
Status</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Label	String up to 20 symbols	NULL is NOT permitted</br>
Reports</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
CategoryId	Integer from 0 to 2,147,483,647	Relationship with table Categories. NULL is NOT permitted</br>
StatusId	Integer from 0 to 2,147,483,647	Relationship with table Status. NULL is NOT permitted</br>
OpenDate	Date with time	NULL is NOT permitted</br>
CloseDate	Date with time	NULL is permitted</br>
Description	String up to 200 symbols	NULL is NOT permitted</br>
UserId	Integer from 0 to 2,147,483,647	Relationship with table Users. NULL is NOT permitted</br>
EmployeeId	Integer from 0 to 2,147,483,647	Relationship with table Employees</br>
### 1.	Table design
Submit all of your CREATE statements to Judge.</br>
## Section 2. DML (10 pts)
Before you start you have to import "DataSet-Service.sql". If you have created the structure correctly the data should be successfully inserted.</br>
In this section, you have to do some data manipulations:</br>
### 2.	Insert
Let's insert some sample data into the database. Write a query to add the following records into the corresponding tables. All Id's should be auto-generated.</br>
Employees</br>
FirstName	LastName	Birthdate	DepartmentId</br>
Marlo	O'Malley	1958-9-21	1</br>
Niki	Stanaghan	1969-11-26	4</br>
Ayrton	Senna	1960-03-21	9</br>
Ronnie	Peterson	1944-02-14	9</br>
Giovanna	Amati	1959-07-20	5</br>
</br>
Reports</br>
CategoryId	StatusId	OpenDate	CloseDate	Description	UserId	EmployeeId</br>
1	1	2017-04-13		Stuck Road on Str.133	6	2</br>
6	3	2015-09-05	2015-12-06	Charity trail running	3	5</br>
14	2	2015-09-07		Falling bricks on Str.58	5	2</br>
4	3	2017-07-03	2017-07-06	Cut off streetlight on Str.11	1	1</br>
### 3.	Update
Update the CloseDate with the current date of all reports, which don't have CloseDate. </br>
### 4.	Delete
Delete all reports who have a Status 4.</br>
## Section 3. Querying (40 pts)
You need to start with a fresh dataset, so recreate your DB and import the sample data again ("DataSet-Service.sql").</br>
### 5.	Unassigned Reports
Find all reports that don't have an assigned employee. Order the results by OpenDate in ascending order, then by Description ascending. OpenDate must be in format - 'dd-MM-yyyy'</br>
##### Example</br>
Description	OpenDate</br>
Art exhibition on July 24	17-12-2014</br>
Stuck Road on Str.133	20-06-2015</br>
Burned facade on Str.560	26-08-2015</br>
### 6.	Reports & Categories</br>
Select all descriptions from reports, which have category. Order them by description (ascending) then by category name (ascending).</br>
##### Example</br>
Description	CategoryName</br>
162 kg plastic for recycling.	Green Areas</br>
246 kg plastic for recycling.	Snow Removal</br>
366 kg plastic for recycling.	Recycling</br>
### 7.	Most Reported Category</br>
Select the top 5 most reported categories and order them by the number of reports per category in descending order and then alphabetically by name.</br>
##### Example</br>
CategoryName	ReportsNumber</br>
Recycling	8</br>
Snow Removal	5</br>
Streetlight	4</br>
### 8.	Birthday Report</br>
Select the user's username and category name in all reports in which users have submitted a report on their birthday. Order them by username (ascending) and then by category name (ascending).</br>
##### Example</br>
Username	CategoryName</br>
5omarkwelleyc	Snow Removal</br>
dpennid	Dangerous Trees</br>
llankham6	Homeless Elders</br>
### 9.	Users per Employee </br>
Select all employees and show how many unique users each of them has served to.</br>
Order by users count  (descending) and then by full name (ascending).</br>
##### Example</br>
FullName	UsersCount</br>
Bron Ledur	3</br>
Adelind Benns	2</br>
Dick Wentworth	2</br>
…	…</br>
### 10.	Full Info</br>
Select all info for reports along with employee first name and last name (concataned with space), their department name, category name, report description, open date, status label and name of the user. Order them by first name (descending), last name (descending), department (ascending), category (ascending), description (ascending), open date (ascending), status (ascending) and user (ascending).</br>
Date should be in format 'dd.MM.yyyy'.</br>
If there are empty records, replace them with 'None'.</br>
##### Example</br>
Employee	Department	Category	Description	OpenDate	Status	User</br>
Niki Stranaghan	Event Management	Sports Events	Sky Run competition on September 8	08.06.2015	Completed	Emlynn Alliberton</br>
Marlo O'Malley	Infrastructure	Streetlight	Fallen streetlight columns on Str.14	12.09.2017	Blocked	Erhart Alpine</br>
Leonardo Shopcott	Animals Care	Animal in Danger	Parked car on green area on the sidewalk of Str.74	10.11.2016	In Progress	Jocko Greggor</br>
…	….	…	…	…	…	…</br>
## Section 4. Programmability (20 pts)
### 11.	Hours to Complete
Create a user defined function with the name udf_HoursToComplete(@StartDate DATETIME, @EndDate DATETIME) that receives a start date and end date and must returns the total hours which has been taken for this task. If start date is null or end is null, return 0.</br>
##### Example usage</br>
Query</br>
SELECT dbo.udf_HoursToComplete(OpenDate, CloseDate) AS TotalHours</br>
   FROM Reports</br>
TotalHours</br>
0</br>
288</br>
0</br>
### 12.	Assign Employee</br>
Create a stored procedure with the name usp_AssignEmployeeToReport(@EmployeeId INT, @ReportId INT) that receives an employee's Id and a report's Id and assigns the employee to the report only if the department of the employee and the department of the report's category are the same. Otherwise throw an exception with message: "Employee doesn't belong to the appropriate department!". </br>
##### Example usage</br>
Query</br>
EXEC usp_AssignEmployeeToReport 30, 1</br>
Response</br>
Employee doesn't belong to the appropriate department!</br>
Query</br>
EXEC usp_AssignEmployeeToReport 17, 2</br>
Response</br>
(1 row affected)</br>
