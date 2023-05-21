2000 years from now, the known space is colonized by the human race. However, the four Citadel Council races are planning to populate new home worlds in the SoftUnia Galaxy as part of a strategy called the SoftUnia Initiative. 20000 citizens are sent aboard space transportation vessels. The Council has asked you to create a Colonization Management system so they can keep track of the colonists' journeys trough the stars.</br>
## Section 1. DDL (30 pts)
You have given an Entity / Relationship Diagram of the CJMS Database:</br>
 
 ![image](https://github.com/AlexanderRVulchev/SoftUni-MS-SQL/assets/106471266/e398af33-0405-4af3-9441-7427beebb82e)

 The ColonialJourney Database holds information about colonists, their travel cards, information about the journeys, types of space vessels and destination planets. Your task is to create a database called ColonialJourney. Then you will have to create several tables.</br>
•	Planets – contains information about planets;</br>
•	Spaceports – contains information about space ports;</br>
•	Spaceships – contains information about space ships;</br>
•	Colonists – contains information about colonists;</br>
•	Journeys – contains information about journeys;</br>
•	TravelCards – contains information about travel cards.</br>
</br>
NOTE: Please keep in mind that in case you have to work with a date, you have to use the exact same data type, described in the models tables. For example, data type Date means that you have to use Date, DateTime means that you have to use DateTime. If you don't use the correct type, the Judge system won't accept your submission as correct.</br>
NOTE: Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).</br>
</br>
You have been tasked to create the tables in the database by the following models:</br>
##### Planets
Column	Data Type	Constraints</br>
Id	Integer from 1 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 30 symbols, non-unicode	NULL is not allowed</br>
</br>
##### Spaceports
Column	Data Type	Constraints</br>
Id	Integer from 1 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 50 symbols, non-unicode	NULL is not allowed</br>
PlanetId	Integer, from 1 to 2,147,483,647.	NULL is not allowed, Relationship with table Planets</br>
</br>
##### Spaceships
Column	Data Type	Constraints</br>
Id	Integer from 1 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 50 symbols, non-unicode	NULL is not allowed</br>
Manufacturer	String up to 30 symbols, non-unicode	NULL is not allowed</br>
LightSpeedRate	Integer from 1 to 2,147,483,647	Has a default value of 0</br>
</br>
##### Colonists
Column	Data Type	Constraints</br>
Id	Integer from 1 to 2,147,483,647	Unique table identificator, Identity</br>
FirstName	String up to 20 symbols, non-unicode	NULL is not allowed</br>
LastName	String up to 20 symbols, non-unicode	NULL is not allowed</br>
Ucn	String up to 10 symbols, non-unicode	NULL is not allowed </br>
UNIQUE values.</br>
BirthDate	Date	NULL is not allowed</br>
</br>
##### Journeys
Column	Data Type	Constraints</br>
Id	Integer from 1 to 2,147,483,647	Unique table identificator, Identity</br>
JourneyStart	DateTime	NULL is not allowed</br>
JourneyEnd	DateTime	NULL is not allowed</br>
Purpose	String up to 11 symbols, non-unicode	Should only contain one of the following purposes: "Medical", "Technical", "Educational", "Military".</br>
NULL is allowed</br>
DestinationSpaceportId	Integer from 1 to 2,147,483,647	NULL is not allowed, Relationship with table Spaceports</br>
SpaceshipId	Integer from 1 to 2,147,483,647	NULL is not allowed, Relationship with table Spaceships</br>
</br>
##### TravelCards
Column	Data Type	Constraints</br>
Id	Integer from 1 to 2,147,483,647	Unique table identificator, Identity</br>
CardNumber	String exactly to 10 symbols, non-unicode	NULL is not allowed </br>
UNIQUE values.</br>
JobDuringJourney	String up to 8 symbols, non-unicode	Should only contain one of the following jobs: “Pilot”, “Engineer”, “Trooper”, “Cleaner”, “Cook”.</br>
 NULL is allowed</br>
ColonistId	Integer from 1 to 2,147,483,647	NULL is not allowed, Relationship with table Colonists</br>
JourneyId	Integer from 1 to 2,147,483,647	NULL is not allowed, Relationship with table Journeys</br>
### 1.	Database Design
Submit all of your CREATE statements to the Judge system.</br>
## Section 2. DML
Before you start, you must import "DataSet-ColonialJourney.sql". If you have created the structure correctly, the data should be successfully inserted without any errors.</br>
In this section, you have to do some data manipulations:</br>
### 2.	Insert
Insert sample data into the database. Write a query to add the following records into the corresponding tables. All Ids should be auto-generated.</br>
Planets</br>
Name</br>
Mars</br>
Earth</br>
Jupiter</br>
Saturn</br>
</br>
Spaceships</br>
Name	Manufacturer	LightSpeedRate</br>
Golf	VW	3</br>
WakaWaka	Wakanda	4</br>
Falcon9	SpaceX	1</br>
Bed	Vidolov	6</br>
### 3.	Update
Update all spaceships light speed rate with 1 where the Id is between 8 and 12.</br>
### 4.	Delete
Delete first three inserted Journeys (be careful with the relationships).</br>
## Section 3. Querying 
You need to start with a fresh dataset, so recreate your DB and import the sample data again (DataSet-ColonialJourney.sql).</br>
### 5.	Select all military journeys
Extract from the database, all Military journeys in the format "dd-MM-yyyy". Sort the results ascending by journey start.</br>
Required Columns</br>
•	Id</br>
•	JourneyStart</br>
•	JourneyEnd</br>
##### Example</br>
Id	JourneyStart	JourneyEnd</br>
7	04/01/2019	09/12/2049</br>
3	21/02/2019	03/01/2049</br>
...	...	... </br>
### 6.	Select all pilots
Extract from the database all colonists, which have a pilot job. Sort the result by id, ascending.</br>
Required Columns</br>
•	Id</br>
•	FullName</br>
##### Example</br>
Id	full_name</br>
6	Clark Cowan</br>
18	Wald Bim</br>
...	...</br>
### 7.	Count colonists
Count all colonists that are on technical journey. </br>
Required Columns</br>
•	Count</br>
##### Example</br>
count</br>
16</br>
### 8.	Select spaceships with pilots younger than 30 years
Extract from the database those spaceships, which have pilots, younger than 30 years old. In other words, 30 years from 01/01/2019. Sort the results alphabetically by spaceship name.</br>
Required Columns</br>
•	Name</br>
•	Manufacturer</br>
##### Example</br>
Name	Manufacturer</br>
Anarchy	Fivebridge</br>
...	...</br>
### 9.	Select all planets and their journey count
Extract from the database all planets' names and their journeys count. Order the results by journeys count, descending and by planet name ascending.</br>
Required Columns</br>
•	PlanetName</br>
•	JourneysCount</br>
##### Example</br>
PlanetName	JourneysCount</br>
Otroyphus	4</br>
Eipra	2</br>
...	...</br>
### 10.	Select Second Oldest Important Colonist
Find all colonists and their job during journey with rank 2. Keep in mind that all the selected colonists with rank 2 must be the oldest ones. You can use ranking over their job during their journey.</br>
Required Columns</br>
•	JobDuringJourney</br>
•	FullName</br>
•	JobRank</br>
##### Example</br>
JobDuringJourney	FullName	JobRank</br>
Cleaner	Hale O'Doireidh	2</br>
Cook	Laurie Askin	2</br>
…	…	…</br>
## Section 4. Programmability
### 11.	Get Colonists Count
Create a user defined function with the name dbo.udf_GetColonistsCount(PlanetName VARCHAR (30)) that receives planet name and returns the count of all colonists sent to that planet.</br>
##### Example</br>
Query</br>
SELECT dbo.udf_GetColonistsCount('Otroyphus')</br>
Output</br>
35</br>
### 12.	Change Journey Purpose
Create a user defined stored procedure, named usp_ChangeJourneyPurpose(@JourneyId, @NewPurpose), that receives a journey id and purpose, and attempts to change the purpose of that journey. An purpose will only be changed if all of these conditions pass:</br>
•	If the journey id doesn't exist, then it cannot be changed. Raise an error with the message "The journey does not exist!"</br>
•	If the journey has already that purpose, raise an error with the message "You cannot change the purpose!"</br>
If all the above conditions pass, change the purpose of that journey.</br>
##### Example</br>
Query	Output</br>
EXEC usp_ChangeJourneyPurpose 4, 'Technical'	</br>
EXEC usp_ChangeJourneyPurpose 2, 'Educational'	You cannot change the purpose!</br>
EXEC usp_ChangeJourneyPurpose 196, 'Technical'	The journey does not exist!</br>
