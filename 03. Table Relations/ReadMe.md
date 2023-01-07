### Problem 1.	One-To-One Relationship
Create two tables as follows. Use appropriate data types.</br>
Persons		Passports</br>
PersonID	FirstName	Salary	PassportID		PassportID	PassportNumber</br>
1	        Roberto   43300.00	102	        	101	        N34FG21B</br>
2	        Tom	5     6100.00	  103		        102	        K65LO4R7</br>
3	        Yana	    60200.00	101		        103	        ZE657QP2</br>
Insert the data from the example above.</br>
Alter the customers table and make PersonID a primary key. Create a foreign key between Persons and Passports by using PassportID column.</br>
### Problem 2.	One-To-Many Relationship
Create two tables as follows. Use appropriate data types.</br>
Models		Manufacturers</br>
ModelID	Name	ManufacturerID		ManufacturerID	Name	EstablishedOn</br>
101	X1	1		1  	BMW	07/03/1916</br>
102	i6	1		2	Tesla	01/01/2003</br>
103	Model S	2		3	Lada	01/05/1966</br>
104	Model X	2		</br>
105	Model 3	2		</br>
106	Nova	3		</br>
Insert the data from the example above. Add primary keys and foreign keys.</br>
### Problem 3.	Many-To-Many Relationship
Create three tables as follows. Use appropriate data types.</br>
Students		Exams		StudentsExams</br>
StudentID	Name		ExamID	Name		StudentID	ExamID</br>
1  	Mila                                      		101	SpringMVC		1	101</br>
2	Toni		102	Neo4j		1	102</br>
3	Ron		103	Oracle 11g		2	101</br>
				3	103</br>
				2	102</br>
				2	103</br>
Insert the data from the example above.</br>
Add primary keys and foreign keys. Have in mind that table StudentsExams should have a composite primary key.</br>
### Problem 4.	Self-Referencing 
Create a single table as follows. Use appropriate data types.</br>
Teachers</br>
TeacherID	Name	ManagerID</br>
101	John	NULL</br>
102	Maya	106</br>
103	Silvia	106</br>
104	Ted	105</br>
105	Mark	101</br>
106	Greta	101</br>
Insert the data from the example above. Add primary keys and foreign keys. The foreign key should be between ManagerId and TeacherId.</br>
### Problem 5.	Online Store Database
Create a new database and design the following structure:</br>
 
### Problem 6.	University Database
Create a new database and design the following structure:</br>
 
### Problem 7.	SoftUni Design
Create an E/R Diagram of the SoftUni Database. There are some special relations you should check out: Employees are self-referenced (ManagerID) and Departments have One-to-One with the Employees (ManagerID) while the Employees have One-to-Many (DepartmentID). You might find it interesting how it looks on the diagram. 
### Problem 8.	Geography Design
Create an E/R Diagram of the Geography Database.
### Problem 9.	*Peaks in Rila
Display all peaks for "Rila" mountain. Include:</br>
•	MountainRange</br>
•	PeakName</br>
•	Elevation</br>
Peaks should be sorted by elevation descending.</br>
Example</br>
MountainRange	PeakName	Elevation</br>
Rila	Musala	2925</br>
…	…	…
