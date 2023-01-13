## Part I – Queries for SoftUni Database
### 1.	Employee Address
Create a query that selects:</br>
•	EmployeeId</br>
•	JobTitle</br>
•	AddressId</br>
•	AddressText</br>
Return the first 5 rows sorted by AddressId in ascending order.</br>
Example</br>
| EmployeeId	| JobTitle	| AddressId	| AddressText |</br>
|142	|Production |Technician|	1	108 Lakeside Court|</br>
|30	|Human Resources| Manager	|2	1341 Prospect St|</br>

…	…	…	…
### 2.	Addresses with Towns
Write a query that selects:</br>
•	FirstName</br>
•	LastName</br>
•	Town</br>
•	AddressText</br>
Sort them by FirstName in ascending order, then by LastName. Select the first 50 employees.</br>
Example</br>
FirstName	LastName	Town	AddressText</br>
A.Scott	Wright	Newport Hills	1400 Gate Drive</br>
Alan	Brewer	Kenmore	8192 Seagull Court</br>
…	…	…	…</br>
### 3.	Sales Employee
Create a query that selects:</br>
•	EmployeeID</br>
•	FirstName</br>
•	LastName</br>
•	DepartmentName</br>
Sort them by EmployeeID in ascending order. Select only employees from the "Sales" department.</br>
Example</br>
EmployeeID	FirstName	LastName	DepartmentName</br>
268	Stephen	Jiang	Sales</br>
273	Brian	Welcker	Sales</br>
…	…	…	…</br>
### 4.	Employee Departments
Create a query that selects:</br>
•	EmployeeID</br>
•	FirstName </br>
•	Salary</br>
•	DepartmentName</br>
Filter only employees with a salary higher than 15000. Return the first 5 rows, sorted by DepartmentID in ascending order.</br>
Example</br>
EmployeeID	FirstName	Salary	DepartmentName</br>
3     	Roberto               	43300.00	Engineering</br>
9	Gail	32700.00	Engineering</br>
…	…	…	…</br>
### 5.	Employees Without Project
Create a query that selects:</br>
•	EmployeeID</br>
•	FirstName</br>
Filter only employees without a project. Return the first 3 rows, sorted by EmployeeID in ascending order.</br>
Example</br>
EmployeeID	FirstName</br>
2	Kevin</br>
6	David</br>
…	…</br>
### 6.	Employees Hired After
Create a query that selects:</br>
•	FirstName</br>
•	LastName</br>
•	HireDate</br>
•	DeptName</br>
Filter only employees hired after 1.1.1999 and are from either "Sales" or "Finance" department. Sort them by HireDate (ascending).</br>
Example</br>
FirstName	LastName	HireDate	DeptName</br>
Debora     	Poe	2001-01-19 00:00:00	Finance</br>
Wendy	Kahn	2001-01-26 00:00:00	Finance</br>
…	…	…	…</br>
### 7.	Employees with Project
Create a query that selects:</br>
•	EmployeeID</br>
•	FirstName</br>
•	ProjectName</br>
Filter only employees with a project which has started after 13.08.2002 and it is still ongoing (no end date). Return the first 5 rows sorted by EmployeeID in ascending order.</br>
Example</br>
EmployeeID	FirstName	ProjectName</br>
1	Guy	Racing Socks</br>
1	Guy	Road Bottle Cage</br>
…	…	…</br>
### 8.	Employee 24
Create a query that selects:</br>
•	EmployeeID</br>
•	FirstName</br>
•	ProjectName</br>
Filter all the projects of employee with Id 24. If the project has started during or after 2005 the returned value should be NULL.</br>
Example</br>
EmployeeID	FirstName	ProjectName</br>
24	David	NULL</br>
24	David	Road-650</br>
…	…	…
### 9.	Employee Manager
Create a query that selects:</br>
•	EmployeeID</br>
•	FirstName</br>
•	ManagerID</br>
•	ManagerName</br>
Filter all employees with a manager who has ID equals to 3 or 7. Return all the rows, sorted by EmployeeID in ascending order.</br>
Example</br>
EmployeeID	FirstName	ManagerID	ManagerName</br>
4	Rob	3	Roberto</br>
9	Gail	3	Roberto</br>
…	…	…	…
### 10.	Employees Summary
Create a query that selects:</br>
•	EmployeeID</br>
•	EmployeeName</br>
•	ManagerName</br>
•	DepartmentName</br>
Show the first 50 employees with their managers and the departments they are in (show the departments of the employees). Order them by EmployeeID.</br>
Example</br>
EmployeeID	EmployeeName	ManagerName	DepartmentName</br>
1	Guy Gilbert	Jo Brown	Production</br>
2	Kevin Brown	David Bradley	Marketing</br>
3	Roberto Tamburello	Terri Duffy	Engineering</br>
…	…	…	…
### 11.	Min Average Salary
Create a query that returns the value of the lowest average salary of all departments.</br>
Example</br>
MinAverageSalary</br>
10866.6666</br>
</br>
## Part II – Queries for Geography Database
### 12.	Highest Peaks in Bulgaria
Create a query that selects:</br>
•	CountryCode</br>
•	MountainRange</br>
•	PeakName</br>
•	Elevation</br>
Filter all the peaks in Bulgaria, which have elevation over 2835. Return all the rows, sorted by elevation in descending order.</br>
Example</br>
CountryCode	MountainRange	PeakName	Elevation</br>
BG	Rila	Musala	2925</br>
BG	Pirin	Vihren	2914</br>
…	…	…	…</br>
### 13.	Count Mountain Ranges
Create a query that selects:</br>
•	CountryCode</br>
•	MountainRanges</br>
Filter the count of the mountain ranges in the United States, Russia and Bulgaria.</br>
Example</br>
CountryCode	MountainRanges</br>
BG	6</br>
RU	1</br>
…	…</br>
### 14.	Countries With or Without Rivers
Create a query that selects:</br>
•	CountryName</br>
•	RiverName</br>
Find the first 5 countries with or without rivers in Africa. Sort them by CountryName in ascending order.</br>
Example</br>
CountryName	RiverName</br>
Algeria	Niger</br>
Angola	Congo</br>
Benin	Niger</br>
Botswana	NULL</br>
Burkina Faso	Niger</br>
### 15.	*Continents and Currencies
Create a query that selects:</br>
•	ContinentCode</br>
•	CurrencyCode</br>
•	CurrencyUsage</br>
Find all continents and their most used currency. Filter any currency, which is used in only one country. Sort your results by ContinentCode.</br>
Example</br>
ContinentCode	CurrencyCode	CurrencyUsage</br>
AF	XOF	8</br>
AS	AUD	2</br>
AS	ILS	2</br>
EU	EUR	26</br>
NA	XCD	8</br>
OC	USD	8</br>
### 16.	Countries Without Any Mountains
Create a query that returns the count of all countries, which don’t have a mountain.</br>
Example</br>
Count</br>
231</br>
### 17.	Highest Peak and Longest River by Country
For each country, find the elevation of the highest peak and the length of the longest river, sorted by the highest peak elevation (from highest to lowest), then by the longest river length (from longest to smallest), then by country name (alphabetically). Display NULL when no data is available in some of the columns. Limit only the first 5 rows.</br>
Example</br>
CountryName	HighestPeakElevation	LongestRiverLength</br>
China	8848	6300</br>
India	8848	3180</br>
Nepal	8848	2948</br>
Pakistan	8611	3180</br>
Argentina	6962	4880</br>
### 18.	Highest Peak Name and Elevation by Country</br>
For each country, find the name and elevation of the highest peak, along with its mountain. When no peaks are available in some countries, display elevation 0, "(no highest peak)" as peak name and "(no mountain)" as a mountain name. When multiple peaks in some countries have the same elevation, display all of them. Sort the results by country name alphabetically, then by highest peak name alphabetically. Limit only the first 5 rows.</br>
Example</br>
Country	Highest Peak Name	Highest Peak Elevation	Mountain</br>
Afghanistan	(no highest peak)	0	(no mountain)</br>
…	…	…	…</br>
Argentina	Aconcagua	6962	Andes</br>
…	…	…	…</br>
Bulgaria	Musala	2925	Rila</br>
Burkina Faso	(no highest peak)	0	(no mountain)</br>
…	…	…	…</br>
United States	Mount McKinley	6194	Alaska Range</br>
