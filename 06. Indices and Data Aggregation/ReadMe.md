<i>Mr. Bodrog is a greedy small goblin who is in charge of Gringotts – the biggest wizard bank. His most precious possession is a small database of the deposits in the wizard's world. Taking money is his hobby. He wants your money as well, but unfortunately, you are not a wizard. The only magic you know is how to work with databases. That's how you got access to the precious data. Mr. Bodrog wants you to send him some reports, otherwise he will send a pack of hungry werewolves after you. You don't want to confront a pack of hungry werewolves, do you?
Before going on the next task make sure to download the Gringotts database.</i>
## Part I – Queries for Gringotts Database
### 1. Records' Count
Import the database and send the total count of records from the one and only table to Mr. Bodrog. Make sure nothing gets lost.</br>
#### Example</br>
Count</br>
162</br>
### 2. Longest Magic Wand
Select the size of the longest magic wand. Rename the new column appropriately.</br>
#### Example</br>
LongestMagicWand</br>
31</br>
### 3. Longest Magic Wand Per Deposit Groups
For wizards in each deposit group show the longest magic wand. Rename the new column appropriately.</br>
#### Example</br>
DepositGroup	LongestMagicWand</br>
Blue Phoenix	31</br>
…	…</br>
### 4. Smallest Deposit Group Per Magic Wand Size
Select the two deposit groups with the lowest average wand size.</br>
#### Example</br>
DepositGroup</br>
Troll Chest</br>
Venomous Tongue</br>
### 5. Deposits Sum
Select all deposit groups and their total deposit sums.</br>
#### Example</br>
DepositGroup	TotalSum</br>
Blue Phoenix	819598.73</br>
 Human Pride	1041291.52</br>
…	…</br>
### 6. Deposits Sum for Ollivander Family
Select all deposit groups and their total deposit sums, but only for the wizards, who have their magic wands crafted by the Ollivander family.</br>
#### Example</br>
DepositGroup	TotalSum</br>
Blue Phoenix	52968.96</br>
Human Pride	188366.86</br>
…	…</br>
### 7. Deposits Filter
Select all deposit groups and their total deposit sums, but only for the wizards, who have their magic wands crafted by the Ollivander family. Filter total deposit amounts lower than 150000. Order by total deposit amount in descending order.</br>
#### Example</br>
DepositGroup	TotalSum</br>
Troll Chest	126585.18</br>
…	…</br>
### 8.  Deposit Charge
Create a query that selects:</br>
•	Deposit group </br>
•	Magic wand creator</br>
•	Minimum deposit charge for each group </br>
Select the data in ascending order by MagicWandCreator and DepositGroup.</br>
#### Example</br>
DepositGroup	MagicWandCreator	MinDepositCharge</br>
Blue Phoenix	Antioch Peverell	30.00</br>
…	…	</br>
### 9. Age Groups
Write down a query that creates 7 different groups based on their age.</br>
Age groups should be as follows:</br>
•	[0-10]</br>
•	[11-20]</br>
•	[21-30]</br>
•	[31-40]</br>
•	[41-50]</br>
•	[51-60]</br>
•	[61+]</br>
The query should return</br>
•	Age groups</br>
•	Count of wizards in it</br>
#### Example</br>
AgeGroup	WizardCount</br>
[11-20]	21</br>
…	…</br>
### 10. First Letter
Create a query that returns all the unique wizard first letters of their first names only if they have deposit of type Troll Chest. Order them alphabetically. Use GROUP BY for uniqueness.</br>
#### Example</br>
FirstLetter</br>
A</br>
…</br>
### 11. Average Interest 
Mr. Bodrog is highly interested in profitability. He wants to know the average interest of all deposit groups, split by whether the deposit has expired or not. But that's not all. He wants you to select deposits with start date after 01/01/1985. Order the data descending by Deposit Group and ascending by Expiration Flag.</br>
The output should consist of the following columns:</br>
#### Example</br>
DepositGroup	IsDepositExpired	AverageInterest</br>
Venomous Tongue	0	16.698947</br>
…	…	</br>
### 12. *Rich Wizard, Poor Wizard
Mr. Bodrog definitely likes his werewolves more than you. This is your last chance to survive! Give him some data to play his favorite game Rich Wizard, Poor Wizard. The rules are simple: </br>
You compare the deposits of every wizard with the wizard after him. If a wizard is the last one in the database, simply ignore it. In the end you have to sum the difference between the deposits.</br>
Host Wizard	Host Wizard Deposit	Guest Wizard	Guest Wizard Deposit	Difference</br>
Harry	10 000	Tom	12 000	-2000</br>
Tom	12 000	…	…	…</br>
At the end your query should return a single value: the SUM of all differences.</br>
#### Example</br>
SumDifference</br>
44393.97</br>
## Part II – Queries for SoftUni Database
<i>That's it! You no longer work for Mr. Bodrog. You have decided to find a proper job as an analyst in SoftUni. </br>
It's not a surprise that you will use the SoftUni database. Things get more exciting here!</i></br>
### 13. Departments Total Salaries
Create a query that shows the total sum of salaries for each department. Order them by DepartmentID.</br>
Your query should return:	</br>
•	DepartmentID</br>
#### Example</br>
DepartmentID	TotalSalary</br>
1	241000.00</br>
…	…</br>
### 14. Employees Minimum Salaries
Select the minimum salary from the employees for departments with ID (2, 5, 7) but only for those, hired after 01/01/2000.</br>
Your query should return:	</br>
•	DepartmentID</br>
#### Example</br>
DepartmentID	MinimumSalary</br>
2	25000.00</br>
5	12800.00</br>
…	…</br>
### 15. Employees Average Salaries
Select all employees who earn more than 30000 into a new table. Then delete all employees who have ManagerID = 42 (in the new table). Then increase the salaries of all employees with DepartmentID = 1 by 5000. Finally, select the average salaries in each department.</br>
#### Example</br>
DepartmentID	AverageSalary</br>
1	45166.6666</br>
…	…</br>
### 16. Employees Maximum Salaries
Find the max salary for each department. Filter those, which have max salaries NOT in the range 30000 – 70000.</br>
#### Example</br>
DepartmentID	MaxSalary</br>
2	29800.00</br>
…	…</br>
### 17. Employees Count Salaries
Count the salaries of all employees, who don’t have a manager.</br>
#### Example</br>
Count</br>
4</br>
### 18. *3rd Highest Salary
Find the third highest salary in each department if there is such. </br>
#### Example</br>
DepartmentID	ThirdHighestSalary</br>
1	36100.00</br>
…	…</br>
### 19. **Salary Challenge
Create a query that returns:</br>
•	FirstName</br>
•	LastName</br>
•	DepartmentID</br>
Select all employees who have salary higher than the average salary of their respective departments. Select only the first 10 rows. Order them by DepartmentID.
#### Example</br>
FirstName	LastName	DepartmentID</br>
Roberto	Tamburello	1</br>
…	…	</br>
