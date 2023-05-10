You've been an intern at Krivodol Trip Service LLC ever since you finished high school. The Krivodol Trip Service doesn't really pay much, but it's the only trip company within a 50km radius in northwestern Bulgaria. </br>
You've recently been appointed as Chief Database Engineer. The Chief Database Engineer's job is to keep track of every single city, account, trip, hotel and hotel room – all on a giant ledger (paper, not blockchain), which has been passed down for the last 3 generations. </br>
Word around the office is that the company is going to hire a few programmers to try and automate the entire process. As you know, the holidays are coming up, and of course, you want to go to the overpopulated, overpriced and overbuilt seaside just to post a couple of photos of your rakia-hardened beach body on your Instagram. So, you decided to design a relational database in SQL Server and let the new code monkeys take care of everything else.</br>
## Section 1. DDL (30 pts)
You are given an E/R Diagram of the Trip Service:</br>
 
 ![image](https://github.com/AlexanderRVulchev/SoftUni-MS-SQL/assets/106471266/5ccbfb30-5c32-43a0-b7dc-27604fd1c49b)
 
Crеate a database called TripService. You need to create 6 tables:</br>
●	Cities – contains information about cities and their countries;</br>
●	Hotels – contains information about the hotels in the system;</br>
●	Rooms – contains information about the rooms each hotel has;</br>
●	Trips – contains information about each trip;</br>
●	Accounts – contains information about the trip service users;</br>
●	AccountsTrips – contains information about all accounts and their trips.</br>
</br>
NOTE: Please keep in mind that in case you have to work with a date, you have to use the exact same data type, described in the models tables. For example, data type Date means that you have to use Date, DateTime means that you have to use DateTime. If you don't use the correct type, the Judge system won't accept your submission as correct.</br>
NOTE: Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).</br>
</br>
You have been tasked to create the tables in the database by the following models:</br>
##### Cities
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 20 symbols, Unicode	NULL is not allowed</br>
CountryCode	String with exactly 2 symbols	NULL is not allowed</br>
</br>
##### Hotels
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 20 symbols, Unicode	NULL is not allowed</br>
CityId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Cities</br>
EmployeeCount	Integer from 0 to 2,147,483,647	NULL is not allowed</br>
BaseRate	Decimal number with two-digit precision	</br>
 </br>
##### Rooms
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Price	Decimal number with two-digit precision	NULL is not allowed</br>
Type	String up to 20 symbols, Unicode	NULL is not allowed</br>
Beds	Integer from 0 to 2,147,483,647	NULL is not allowed</br>
HotelId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Hotels</br>
</br>
##### Trips
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
RoomId	Integer from 0 to 2,147,483,647	NULL is not allowed , Relationship with table Rooms</br>
BookDate	Date	NULL is not allowed , must be before ArrivalDate</br>
ArrivalDate	Date	NULL is not allowed , must be before ReturnDate</br>
ReturnDate	Date	NULL is not allowed</br>
CancelDate	Date	</br>
</br>
##### Accounts
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
FirstName	String up to 50 symbols, Unicode	NULL is not allowed</br>
MiddleName	String up to 20 symbols, Unicode	</br>
LastName	String up to 50 symbols, Unicode	NULL is not allowed</br>
CityId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Cities</br>
BirthDate	Date	NULL is not allowed</br>
Email	String up to 100 symbols	NULL is not allowed, Unique</br>
</br>
##### AccountsTrips
Column Name	Data Type	Constraints</br>
AccountId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Accounts</br>
TripId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Trips</br>
Luggage	Integer from 0 to 2,147,483,647	NULL is not allowed, must be at least 0</br>
### 1. Database design</br>
Submit all of your CREATE statements to Judge (only creation of tables).</br>
## Section 2. DML (10 pts)
Before you start, you must import "DataSet-TripService.sql". If you have created the structure correctly, the data should be successfully inserted without any errors.</br>
In this section, you must do some data manipulations:</br>
### 2. Insert
Insert some sample data into the database. Write a query to add the following records into the corresponding tables. All Ids should be auto-generated.</br>
Accounts</br>
FirstName	MiddleName	LastName	CityId	BirthDate	Email</br>
John	Smith	Smith	34	1975-07-21	j_smith@gmail.com</br>
Gosho	NULL	Petrov	11	1978-05-16	g_petrov@gmail.com</br>
Ivan	Petrovich	Pavlov	59	1849-09-26	i_pavlov@softuni.bg</br>
Friedrich	Wilhelm	Nietzsche	2	1844-10-15	f_nietzsche@softuni.bg</br>
</br>
Trips</br>
RoomId	BookDate	ArrivalDate	ReturnDate	CancelDate</br>
101	2015-04-12	2015-04-14	2015-04-20	2015-02-02</br>
102	2015-07-07	2015-07-15	2015-07-22	2015-04-29</br>
103	2013-07-17	2013-07-23	2013-07-24	NULL</br>
104	2012-03-17	2012-03-31	2012-04-01	2012-01-10</br>
109	2017-08-07	2017-08-28	2017-08-29	NULL</br>
### 3. Update
Make all rooms’ prices 14% more expensive where the hotel ID is either 5, 7 or 9.</br>
### 4. Delete
Delete all of Account ID 47's account's trips from the mapping table.</br>
## Section 3. Querying (40 pts)
You need to start with a fresh dataset, so recreate your DB and import the sample data again (DataSet-TripService.sql).</br>
### 5. EEE-Mails
Select accounts whose emails start with the letter 'e'. Select their first and last name, their birthdate in the format "MM-dd-yyyy", their city name, and their Email.</br>
Order them by city name (ascending)</br>
##### Example
FirstName	LastName	BirthDate	Hometown	Email</br>
Edgardo	Slessar	12-29-1983	Glasgow	e_slessar@outlook.com</br>
Eadith	Gull	03-03-1983	Haskovo	e_gull@outlook.com</br>
Eward	Prigg	12-10-1982	Shumen	e_prigg@gmail.com</br>
Evvie	Covolini	01-11-1979	Wolverhampton	e_covolini@softuni.bg</br>
### 6. City Statistics
Select all cities with the count of hotels in them. Order them by the hotel count (descending), then by city name. Do not include cities, which have no hotels in them.</br>
##### Example
City	Hotels</br>
Belfast	11</br>
Cardiff	11</br>
Chelyabinsk	11</br>
Phoenix	11</br>
San Francisco	11</br>
Seattle	11</br>
Veliko Tarnovo	11</br>
Houston	10</br>
…	…</br>
### 7. Longest and Shortest Trips
Find the longest and shortest trip for each account, in days. Filter the results to accounts with no middle name and trips, which are not cancelled (CancelDate is null).</br>
Order the results by Longest Trip days (descending), then by Shortest Trip (ascending).</br>
##### Example
AccountId	FullName	LongestTrip	ShortestTrip</br>
40	Winna Maisey	7	1</br>
56	Tillie Windress	7	1</br>
57	Eadith Gull	7	1</br>
66	Sargent Rockhall	7	1</br>
69	Jerome Flory	7	2</br>
…	…	…	…</br>
### 8. Metropolis
Find the top 10 cities, which have the most registered accounts in them. Order them by the count of accounts (descending).</br>
##### Example
Id	City	Country	Accounts</br>
76	Tyumen	RU	5</br>
12	Haskovo	BG	4</br>
33	Belfast	UK	4</br>
…	…	…	…</br>
### 9. Romantic Getaways
Find all accounts, which have had one or more trips to a hotel in their hometown.</br>
Order them by the trips count (descending), then by Account ID.</br>
##### Example
Id	Email	City	Trips</br>
50	t_joules@mail.com	New York	2</br>
19	m_stango@yahoo.com	Burgas	1</br>
48	n_revitt@softuni.bg	Bradford	1</br>
…	…	…	…</br>
### 10. GDPR Violation
Retrieve the following information about each trip:</br>
•	Trip ID</br>
•	Account Full Name</br>
•	From – Account hometown</br>
•	To – Hotel city</br>
•	Duration – the duration between the arrival date and return date in days. If a trip is cancelled, the value is "Canceled"</br>
Order the results by full name, then by Trip ID.</br>
##### Example
Id	Full Name	From	To	Duration</br>
273	Adah Douglass Lathaye	Stara Zagora	Cardiff	Canceled</br>
491	Adah Douglass Lathaye	Stara Zagora	Houston	4 days</br>
776	Adah Douglass Lathaye	Stara Zagora	Chelyabinsk	3 days</br>
133	Allissa Rickey Gigg	Austin	Veliko Tarnovo	6 days</br>
…	…	…	…	…</br>
## Section 4. Programmability (14 pts)
### 11. Available Room
Create a user defined function, named udf_GetAvailableRoom(@HotelId, @Date, @People), that receives a hotel ID, a desired date and the count of people that are going to be signing up.</br>
The total price of the room can be calculated by using this formula:</br>
•	(HotelBaseRate + RoomPrice) * PeopleCount</br>
The function should find a suitable room in the provided hotel, based on these conditions:</br>
•	The room must not be already occupied. A room is occupied if the date the customers want to book is between the arrival and return dates of a trip to that room and the trip is not canceled.</br>
•	The room must be in the provided hotel.</br>
•	The room must have enough beds for all the people.</br>
If any rooms in the desired hotel satisfy the customers’ conditions, find the highest priced room (by total price) of all of them and provide them with that room.</br>
The function must return a message in the format:</br>
•	"Room {Room Id}: {Room Type} ({Beds} beds) - ${Total Price}"</br>
If no room could be found, the function should return "No rooms available".</br>
##### Example
Query</br>
SELECT dbo.udf_GetAvailableRoom(112, '2011-12-17', 2)</br>
Output</br>
Room 211: First Class (5 beds) - $202.80</br>
</br>
Query</br>
SELECT dbo.udf_GetAvailableRoom(94, '2015-07-26', 3)</br>
Output</br>
No rooms available</br>
### 12. Switch Room
Create a user defined stored procedure, named usp_SwitchRoom(@TripId, @TargetRoomId), that receives a trip and a target room and attempts to move the trip to the target room. A room will only be switched if all of these conditions are true:</br>
•	If the target room ID is in a different hotel, than the trip is in, raise an exception with the message "Target room is in another hotel!".</br>
•	If the target room doesn't have enough beds for all the trip's accounts, raise an exception with the message "Not enough beds in target room!".</br>
If all the above conditions pass, change the trip's room ID to the target room ID.</br>
##### Example usage</br>
Query	Output</br>
EXEC usp_SwitchRoom 10, 11</br>
SELECT RoomId FROM Trips WHERE Id = 10	11</br>
EXEC usp_SwitchRoom 10, 7	Target room is in another hotel!</br>
EXEC usp_SwitchRoom 10, 8	Not enough beds in target room!</br>

