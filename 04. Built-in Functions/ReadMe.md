## Part I – Queries for SoftUni Database
### Problem 1.	Find Names of All Employees by First Name
Write a SQL query to find first and last names of all employees whose first name starts with "SA". </br>
Example</br>
FirstName	LastName</br>
Sariya	Harnpadoungsataya</br>
Sandra	Reategui Alayo</br>
…	…</br>
### Problem 2.	  Find Names of All employees by Last Name 
Write a SQL query to find first and last names of all employees whose last name contains "ei". </br>
Example</br>
FirstName	LastName</br>
Kendall	Keil</br>
Christian	Kleinerman</br>
…	…</br>
### Problem 3.	Find First Names of All Employees
Write a SQL query to find the first names of all employees in the departments with ID 3 or 10 and whose hire year is between 1995 and 2005 inclusive.</br>
Example</br>
FirstName</br>
Deborah</br>
Wendy</br>
Candy</br>
…</br>
### Problem 4.	Find All Employees Except Engineers
Write a SQL query to find the first and last names of all employees whose job titles does not contain "engineer". </br>
Example</br>
FirstName	LastName</br>
Guy	Gilbert</br>
Kevin	Brown</br>
Rob	Walters</br>
…	…</br>
### Problem 5.	Find Towns with Name Length
Write a SQL query to find town names that are 5 or 6 symbols long and order them alphabetically by town name. </br>
Example</br>
Name</br>
Berlin</br>
Duluth</br>
Duvall</br>
…</br>
### Problem 6.	 Find Towns Starting With
Write a SQL query to find all towns that start with letters M, K, B or E. Order them alphabetically by town name. </br>
Example</br>
TownID	Name</br>
5	Bellevue</br>
31	Berlin</br>
30	Bordeaux</br>
…	…</br>
### Problem 7.	 Find Towns Not Starting With
Write a SQL query to find all towns that does not start with letters R, B or D. Order them alphabetically by name. </br>
Example</br>
TownID	Name</br>
2	Calgary</br>
23	Cambridge</br>
15	Carnation</br>
…	…</br>
### Problem 8.	Create View Employees Hired After 2000 Year
Write a SQL query to create view V_EmployeesHiredAfter2000 with first and last name to all employees hired after 2000 year. </br>
Example</br>
FirstName	LastName</br>
Steven	Selikoff</br>
Peter	Krebs</br>
Stuart	Munson</br>
...	...</br>
### Problem 9.	Length of Last Name
Write a SQL query to find the names of all employees whose last name is exactly 5 characters long.</br>


Example</br>
FirstName	LastName</br>
Kevin	Brown</br>
Terri	Duffy</br>
Jo	Brown</br>
Diane	Glimp</br>
…	…</br>
### Problem 10.	Rank Employees by Salary
Write a query that ranks all employees using DENSE_RANK. In the DENSE_RANK function, employees need to be partitioned by Salary and ordered by EmployeeID. You need to find only the employees whose Salary is between 10000 and 50000 and order them by Salary in descending order.</br>
Example</br>
EmployeeID	FirstName	LastName	Salary	Rank</br>
268	Stephen	Jiang	48100.00	1</br>
284	Amy	Alberts	48100.00	2</br>
288	Syed	Abbas	48100.00	3</br>
…	…	…	…	…</br>
### Problem 11.	Find All Employees with Rank 2 *
Use the query from the previous problem and upgrade it, so that it finds only the employees whose Rank is 2 and again, order them by Salary (descending).</br>
Example</br>
EmployeeID	FirstName	LastName	Salary	Rank</br>
284	Amy	Alberts	48100.00	2</br>
292	Martin	Kulov	48000.00	2</br>
71	Wendy	Kahn	43300.00	2</br>
…	…	…	…	…</br>
## Part II – Queries for Geography Database 
### Problem 12.	Countries Holding ‘A’ 3 or More Times
Find all countries that holds the letter 'A' in their name at least 3 times (case insensitively), sorted by ISO code. Display the country name and ISO code. </br>
Example</br>
Country Name	ISO Code</br>
Afghanistan	AFG</br>
Albania	ALB</br>
…	…</br>
### Problem 13.	 Mix of Peak and River Names
Combine all peak names with all river names, so that the last letter of each peak name is the same as the first letter of its corresponding river name. Display the peak names, river names, and the obtained mix (mix should be in lowercase). Sort the results by the obtained mix.</br>
Example</br>
PeakName	RiverName	Mix</br>
Aconcagua	Amazon	aconcaguamazon</br>
Aconcagua	Amur	aconcaguamur</br>
Banski Suhodol	Lena	banski suhodolena</br>
…	…	…</br>
## Part III – Queries for Diablo Database
### Problem 14.	Games from 2011 and 2012 year
Find the top 50 games ordered by start date, then by name of the game. Display only games from 2011 and 2012 year. Display start date in the format "yyyy-MM-dd". </br>
Example</br>
Name	Start</br>
Rose Royalty	2011-01-05</br>
London	2011-01-13</br>
Broadway	2011-01-16</br>
…	…</br>
### Problem 15.	 User Email Providers
Find all users along with information about their email providers. Display the username and email provider. Sort the results by email provider alphabetically, then by username.</br> 
Example</br>
Username	Email Provider</br>
Pesho	abv.bg</br>
monoxidecos	astonrasuna.com</br>
bashsassafras	balibless</br>
…	…</br>
### Problem 16.	 Get Users with IPAdress Like Pattern
Find all users along with their IP addresses sorted by username alphabetically. Display only rows that IP address matches the pattern: "***.1^.^.***". </br>
Legend: * - one symbol, ^ - one or more symbols</br>
Example</br>
Username	IP Address</br>
bindbawdy	192.157.20.222</br>
evolvingimportant	223.175.227.173</br>
inguinalself	255.111.250.207</br>
…	…</br>
### Problem 17.	 Show All Games with Duration and Part of the Day
Find all games with part of the day and duration sorted by game name alphabetically then by duration (alphabetically, not by the timespan) and part of the day (all ascending). Parts of the day should be Morning (time is >= 0 and < 12), Afternoon (time is >= 12 and < 18), Evening (time is >= 18 and < 24). Duration should be Extra Short (smaller or equal to 3), Short (between 4 and 6 including), Long (greater than 6) and Extra Long (without duration). </br>
Example</br>
Game	Part of the Day	Duration</br>
Ablajeck	Morning	Long</br>
Ablajeck	Afternoon	Short</br>
Abregado Rae	Afternoon	Long</br>
Abrion	Morning	Extra Short</br>
Acaeria	Evening	Long</br>
…	…	…</br>
## Part IV – Date Functions Queries
### Problem 18.	 Orders Table
You are given a table Orders(Id, ProductName, OrderDate) filled with data. Consider that the payment for that order must be accomplished within 3 days after the order date. Also the delivery date is up to 1 month. Write a query to show each product’s name, order date, pay and deliver due dates. </br>
Original Table</br>
Id	ProductName	OrderDate</br>
1	Butter	2016-09-19 00:00:00.000</br>
2	Milk	2016-09-30 00:00:00.000</br>
3	Cheese	2016-09-04 00:00:00.000</br>
4	Bread	2015-12-20 00:00:00.000</br>
5	Tomatoes	2015-12-30 00:00:00.000</br>
…	…	…</br>
Output</br>
ProductName	OrderDate	Pay Due	Deliver Due</br>
Butter	2016-09-19 00:00:00.000	2016-09-22 00:00:00.000	2016-10-19 00:00:00.000</br>
Milk	2016-09-30 00:00:00.000	2016-10-03 00:00:00.000	2016-10-30 00:00:00.000</br>
Cheese	2016-09-04 00:00:00.000	2016-09-07 00:00:00.000	2016-10-04 00:00:00.000</br>
Bread	2015-12-20 00:00:00.000	2015-12-23 00:00:00.000	2016-01-20 00:00:00.000</br>
Tomatoes	2015-12-30 00:00:00.000	2016-01-02 00:00:00.000	2016-01-30 00:00:00.000</br>
…	…	…	…</br>
### Problem 19.	 People Table
Create a table People(Id, Name, Birthdate). Write a query to find age in years, months, days and minutes for each person for the current time of executing the query.</br>


Original Table</br>
Id	Name	Birthdate</br>
1	Victor	2000-12-07 00:00:00.000</br>
2	Steven	1992-09-10 00:00:00.000</br>
3	Stephen	1910-09-19 00:00:00.000</br>
4	John	2010-01-06 00:00:00.000</br>
…	…	…</br>
Example Output</br>
Name	Age in Years	Age in Months	Age in Days	Age in Minutes</br>
Victor	16	189	5754	8286787</br>
Steven	24	288	8764	12621187</br>
Stephen	106	1272	38706	55737667</br>
John	6	80	2437	3510307</br>
…	…	…	…	…</br>
