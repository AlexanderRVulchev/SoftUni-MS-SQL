*Your childhood dream came true and you are  invited to work in the local Zoo. Noticing your potential, you are asked to design a management system, so that they can keep track of the animals and the people, who are involved in the zoo.*</br>
## Section 1. DDL (30 pts)</br>
You have been given the E/R Diagram of the Zoo</br>
 
 ![image](https://user-images.githubusercontent.com/106471266/231657973-7faa444d-fdc1-4129-9066-7a7452252aae.png)
 
Create a database called Zoo. You need to create 7 tables:</br>
•	Owners – contains information about the owners of the animals;</br>
•	AnimalTypes – contains information about the different animal types in the zoo;</br>
•	Cages – contains information about the animal cages;</br>
•	Animals – contains information about the animals;</br>
•	AnimalsCages – a many-to-many mapping table between the animals and the cages;</br>
•	VolunteersDepartments – contains information about the departments of the volunteers;</br>
•	Volunteers – contains information about the volunteers.</br>

NOTE: Please keep in mind that in case you have to work with a date, you have to use the exact same data type, described in the models tables. For example, data type Date means that you have to use Date, DateTime means that you have to use DateTime. If you don't use the correct type, the Judge system won't accept your submission as correct.</br>
NOTE: Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).</br>
NOTE: Use VARCHAR for strings, not NVARCHAR.</br>
You have been tasked to create the tables in the database by the following models:</br>
#### Owners</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
Name	String up to 50 symbols	Null is not allowed</br>
PhoneNumber	String up to 15 symbols	Null is not allowed</br>
Address	String up to 50 symbols	Null is allowed</br>
</br>
#### AnimalTypes</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
AnimalType	String up to 30 symbols	Null is not allowed</br>
</br>
Cages</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
AnimalTypeId	Integer from 0 to 2,147,483,647	Relationship with table AnimalTypes,  Null is not allowed</br>
</br>
#### Animals</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
Name	String up to 30 symbols	Null is not allowed</br>
BirthDate	Date	Null is not allowed</br>
OwnerId	Integer from 0 to 2,147,483,647	Relationship with table Owners,  Null is allowed</br>
AnimalTypeId	Integer from 0 to 2,147,483,647	Relationship with table AnimalTypes,  Null is not allowed</br>
</br>
#### AnimalsCages</br>
Column Name	Data Type	Constraints</br>
CageId	Integer from 0 to 2,147,483,647	PK, Unique table identification, Relationship with table Cages,  Null is not allowed</br>
AnimalId	Integer from 0 to 2,147,483,647	PK, Unique table identification, Relationship with table Animals, Null is not allowed</br>
</br>
#### VolunteersDepartments</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
DepartmentName	String up to 30 symbols	Null is not allowed</br>
</br>
#### Volunteers</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
Name	String up to 50 symbols	Null is not allowed</br>
PhoneNumber	String up to 15 symbols	Null is not allowed</br>
Address	String up to 50 symbols	Null is allowed</br>
AnimalId	Integer from 0 to 2,147,483,647	Relationship with table Animals; Null is allowed</br>
DepartmentId	Integer from 0 to 2,147,483,647	Relationship with table VolunteersDepartments, Null is not allowed.</br>
### 1.	Database design</br>
Submit all of your created statements to Judge (only creation of tables).</br>
## Section 2. DML (10 pts)</br>
Before you start you have to import "01. DDL_Dataset.sql ". If you have created the structure correctly the data should be successfully inserted. </br>
In this section, you have to do some data manipulations:</br>
### 2.	Insert
Let's insert some sample data into the database. Write a query to add the following records into the corresponding tables. All Ids should be auto-generated.
Volunteers</br>
Name	PhoneNumber	Address	AnimalId	DepartmentId</br>
Anita Kostova	0896365412	Sofia, 5 Rosa str.	15	1</br>
Dimitur Stoev	0877564223	null	42	4</br>
Kalina Evtimova	0896321112	Silistra, 21 Breza str.	9	7</br>
Stoyan Tomov	0898564100	Montana, 1 Bor str.	18	8</br>
Boryana Mileva	0888112233	null	31	5</br>
</br>
Animals</br>
Name	BirthDate	OwnerId	AnimalTypeId</br>
Giraffe	2018-09-21	21	1</br>
Harpy Eagle	2015-04-17	15	3</br>
Hamadryas Baboon	2017-11-02	null	1</br>
Tuatara	2021-06-30	2	4</br>
</br>
### 3.	Update
Kaloqn Stoqnov (a current owner, present in the database) came to the zoo to adopt all the animals, who don't have an owner. Update the records by putting to those animals the correct OwnerId.</br>
### 4.	Delete
The Zoo decided to close one of the Volunteers Departments - Education program assistant. Your job is to delete this department from the database. </br>
NOTE: Keep in mind that there could be foreign key constraint conflicts!</br>
## Section 3. Querying (40 pts)
You need to start with a fresh dataset, so recreate your DB and import the sample data again (01. DDL_Dataset.sql). DO NOT CHANGE OR INCLUDE DATA FROM DELETE, INSERT AND UDATE TASKS!!!</br>
### 5.	Volunteers
Extract information about all the Volunteers – name, phone number, address, id of the animal, they are responsible to and id of the department they are involved into. Order the result by name of the volunteer (ascending), then by the id of the animal (ascending) and then by the id of the department (ascending).</br>
</br>
Example</br>
Name	PhoneNumber	Address	AnimalId	DepartmentId</br>
Anton Antonov	0877456123	Varna, 2 Dobrotitsa str.	11	3</br>
Boyan Boyanov	0896321546	Plovdiv, 15 Arda str.	14	1</br>
Darina Petrova	0889654236	Sofia, 39 Bratya Buxton str.	31	3</br>
Dilyana Stoeva	0889412025	Sofia, 15 Lyulyak str.	NULL	2</br>
Dimitrichka Stateva	0888632123	Sofia, 26 Vasil Levski str.	7	8</br>
Gabriel Radkov	0889745102	Sliven, 6 Krim str.	18	5</br>
…	…	…	…	…</br>
### 6.	Animals data</br>
Select all animals and their type. Extract name, animal type and birth date (in format 'dd.MM.yyyy'). Order the result by animal's name (ascending).</br>
Example</br>
Name	AnimalType	BirthDate</br>
African Penguin	Birds	17.07.2017</br>
African Spurred Tortoise	Reptiles	26.09.2009</br>
American Kestrel	Birds	27.04.2019</br>
Anaconda	Reptiles	13.07.2016</br>
Axolotl	Amphibians	21.01.2019</br>
Bald Eagle	Birds	29.06.2014</br>
…	…	…</br>
### 7.	Owners and Their Animals</br>
Extract the animals for each owner. Find the top 5 owners, who have the biggest count of animals. Select the owner's name and the count of the animals he owns. Order the result by the count of animals owned (descending) and then by the owner's name.</br>
Example</br>
Owner	CountOfAnimals</br>
Kaloqn Stoqnov	4</br>
Kiril Peshev	4</br>
Kamelia Yancheva	3</br>
Martin Genchev	3</br>
Metodi Dimitrov	3</br>
### 8.	Owners, Animals and Cages</br>
Extract information about the owners of mammals, the name of their animal and in which cage these animals are. Select owner's name and animal's name (in format 'owner-animal'), owner's phone number and the id of the cage. Order the result by the name of the owner (ascending) and then by the name of the animal (descending).</br>
Example</br>
OwnersAnimals	PhoneNumber	CageId</br>
Anelia Mihova-Koala	0897856147	16</br>
Borislava Kamenova-Fennec Fox	0877477112	21</br>
Gergana Mancheva-Brown bear	0897412123	26</br>
Kaloqn Stoqnov-Leopard	0878325642	32</br>
Kaloqn Stoqnov-Elephant	0878325642	37</br>
Kamelia Yancheva-Lion	0876213799	7</br>
…	…	…</br>
### 9.	Volunteers in Sofia</br>
Extract information about the volunteers, involved in 'Education program assistant' department, who live in Sofia. Select their name, phone number and their address in Sofia (skip city's name). Order the result by the name of the volunteers (ascending).</br>
Example</br>
Name	PhoneNumber	Address</br>
Dilyana Stoeva	0889412025	15 Lyulyak str.</br>
Kiril Kostadinov	0896541233	213 Tsarigradsko shose str.</br>
Yanko Totev	0896369258	54 Hristo Botev str.</br>
Zdravko Asenov	0889652365	6 Neven str.</br>
### 10.	Animals for Adoption</br>
Extract all animals, who does not have an owner and are younger than 5 years (5 years from '01/01/2022'), except for the Birds. Select their name, year of birth and animal type. Order the result by animal's name.</br>
Example</br>
Name	BirthYear	AnimalType</br>
Banded Archer Fish	2022	Fish</br>
Chameleon	2018	Reptiles</br>
Desert Hairy Scorpion	2020	Invertebrates</br>
Goliath Frog	2020	Amphibians</br>
Koi	2021	Fish</br>
Poison Frog	2020	Amphibians</br>
## Section 4. Programmability (20 pts)</br>
### 11.	All Volunteers in a Department</br>
Create a user-defined function named udf_GetVolunteersCountFromADepartment (@VolunteersDepartment) that receives a department and returns the count of volunteers, who are involved in this department.</br>
Examples</br>
Query</br>
SELECT dbo.udf_GetVolunteersCountFromADepartment ('Education program assistant')</br>
Output</br>
6</br>
</br>
Query</br>
SELECT dbo.udf_GetVolunteersCountFromADepartment ('Guest engagement')</br>
Output</br>
4</br>
</br>
Query</br>
SELECT dbo.udf_GetVolunteersCountFromADepartment ('Zoo events')</br>
Output</br>
5</br>
### 12.	Animals with Owner or Not
Create a stored procedure, named usp_AnimalsWithOwnersOrNot(@AnimalName). </br>
Extract the name of the owner of the given animal.  If there is no owner, put 'For adoption'.</br>
Example</br>
Query</br>
EXEC usp_AnimalsWithOwnersOrNot 'Pumpkinseed Sunfish'</br>
Result</br>
Name	OwnersName</br>
Pumpkinseed Sunfish	Kamelia Yancheva</br>
Example</br>
Query</br>
EXEC usp_AnimalsWithOwnersOrNot 'Hippo'</br>
Result</br>
Name	OwnersName</br>
Hippo	For adoption</br>
Example</br>
Query</br>
EXEC usp_AnimalsWithOwnersOrNot 'Brown bear'</br>
Result</br>
Name	OwnersName</br>
Brown bear	Gergana Mancheva</br>
