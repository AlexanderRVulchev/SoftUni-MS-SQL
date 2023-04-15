## Section 1. DDL (30 pts)
You have been given the E/R Diagram of the Airport<br/>
 
 ![image](https://user-images.githubusercontent.com/106471266/232194276-66b14fc7-abde-4580-8f77-f9ba6a3856a0.png)
 
Create a database called Airport. You need to create 7 tables:<br/>
•	Passengers – contains information about the passenger<br/>
o	  Each passenger has a full name column and an email column.<br/>
•	Pilots – contains information about the pilot <br/>
o	  Each pilot has first and last name columns, an age column, and a rating column.<br/>
•	AircraftTypes – contains information about the aircraft type<br/>
o	  Contains the name of the type of aircraft.<br/>
•	Aircraft – contains information about the aircraft<br/>
o	Each aircraft has a manufacturer, a model column, a year column, a flight hours column, a condition  column, and an aircraft type column.<br/>
•	PilotsAircraft – a many to many mapping tables between the aircraft and the pilots<br/>
o	Have composite primary key from the AircraftId column and the PilotId column.<br/>
•	Airports – contains information about airport name and the country.<br/>
•	FlightDestinations – contains information about the flight destination<br/>
o	Each flight destination has an airport Id column, a start column, an aircraft Id column, a passenger Id column, and a price of the ticket column.<br/>

NOTE: Please keep in mind that in case you have to work with a date, you have to use the exact same data type, described in the models tables. For example, data type Date means that you have to use Date, DateTime means that you have to use DateTime. If you don't use the correct type, the Judge system won't accept your submission as correct.<br/>
NOTE: Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).<br/>
<br/>
You have been tasked to create the tables in the database by the following models:<br/>
Passengers<br/>
Column Name	Data Type	Constraints<br/>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity<br/>
FullName	String up to 100 symbols	Unique, NULL is not allowed<br/>
Email	String up to 50 symbols	Unique, NULL is not allowed.<br/>
<br/>
Pilots<br/>
Column Name	Data Type	Constraints<br/>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity<br/>
FirstName	String up to 30 symbols	Unique, NULL is not allowed<br/>
LastName	String up to 30 symbols	Unique, NULL is not allowed<br/>
Age	TinyInt	Age should be between 21 and 62 both inclusively, NULL is not allowed<br/>
Rating	Floating-point number	Rating should be between 0.0 and 10.0 both inclusively, NULL is allowed.<br/>
<br/>
AircraftTypes<br/>
Column Name	Data Type	Constraints<br/>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity<br/>
TypeName	String up to 30 symbols	Unique, NULL is not allowed.<br/>
<br/>
Aircraft<br/>
Column Name	Data Type	Constraints<br/>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity<br/>
Manufacturer	String up to 25 symbols	NULL is not allowed.<br/>
Model	String up to 30 symbols	NULL is not allowed.<br/>
Year	Integer from 0 to 2,147,483,647	NULL is not allowed.<br/>
FlightHours	Integer from 0 to 2,147,483,647	NULL is allowed.<br/>
Condition	A character that shows the condition of the aircraft. One character.	NULL is not allowed.<br/>
TypeId	Integer from 0 to 2,147,483,647	Relationship with table AircraftTypes, NULL is not allowed.<br/>
<br/>
PilotsAircraft<br/>
Column Name	Data Type	Constraints<br/>
AircraftId	Integer from 0 to 2,147,483,647	PK, Unique table identification, Relationship with table Aircraft,  NULL is not allowed<br/>
PilotId	Integer from 0 to 2,147,483,647	PK, Unique table identification, Relationship with table Pilots, NULL is not allowed<br/>
<br/>
Airports<br/>
Column Name	Data Type	Constraints<br/>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity<br/>
AirportName	String up to 70 symbols	Unique, NULL is not allowed<br/>
Country	String up to 100 symbols	Unique, NULL is not allowed<br/>
<br/>
FlightDestinations<br/>
Column Name	Data Type	Constraints<br/>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity<br/>
AirportId	Integer from 0 to 2,147,483,647	Relationship with table Airports., NULL is not allowed<br/>
Start	The DateTime when the flight starts	NULL is not allowed<br/>
AircraftId	Integer from 0 to 2,147,483,647	Relationship with table Aircraft, NULL is not allowed<br/>
PassengerId	Integer from 0 to 2,147,483,647	Relationship with table Passengers, NULL is not allowed<br/>
TicketPrice	DECIMAL, up to 18 digits, 2 of which after the decimal point.	The DEFAULT value is 15, NULL is not allowed<br/>
### 1.	Database design<br/>
Submit all of your created statements to Judge (only creation of tables).<br/>
## Section 2. DML (10 pts)<br/>
Before you start you have to import "01.DDL_Dataset.sql". If you have created the structure correctly the data should be successfully inserted.<br/>
In this section, you have to do some data manipulations:<br/>
### 2.	Insert<br/>
Write a query to insert data into the Passengers table, based on the Pilots table. For all Pilots with an id between 5 and 15 (both inclusive), insert data in the Passengers table with the following values:<br/>
•	FullName  –  get the first and last name of the pilot separated by a single space<br/>
o	Example – 'Lois Leidle'<br/>
•	Email – set it to start with full name with no space and add '@gmail.com' - 'FullName@gmail.com'<br/>
o	 Example – 'LoisLeidle@gmail.com'<br/>
### 3.	Update<br/>
Update all Aircraft, which:<br/>
•	Have a condition of 'C' or 'B' <br/>
•	Have FlightHours Null or up to 100 (inclusive)<br/>
•	Have Year after 2013 (inclusive)<br/>
 By setting their condition to 'A'.<br/>
### 4.	Delete<br/>
Delete every passenger whose FullName is up to 10 characters (inclusive) long.<br/>
## Section 3. Querying (40 pts)<br/>
You need to start with a fresh dataset, so recreate your DB and import the sample data again ("01. DDL_Dataset.sql").<br/>
### 5.	Aircraft<br/>
Extract information about all the Aircraft. Order the results by aircraft's FlightHours descending.<br/>
Required columns:<br/>
•	Manufacturer<br/>
•	Model<br/>
•	FlightHours<br/>
•	Condition<br/>
Example<br/>
Manufacturer	Model	FlightHours	Condition<br/>
Northrop Grumman	Bat	149039	C<br/>
Airbus	A330	999	B<br/>
Rolls-Royce Holdings	Trent 900	958	B<br/>
GE Aviation	CF6	936	C<br/>
Boeing	BBJ	925	C<br/>
Northrop Grumman	X-47A Pegasus	906	B<br/>
…	…	…	…<br/>
### 6.	Pilots and Aircraft<br/>
Select pilots and aircraft that they operate. Extract the pilot's First, Last names, aircraft's Manufacturer, Model, and FlightHours. Skip all plains with NULLs and up to 304 FlightHours. Order the result by the FlightHours in descending order, then by the pilot's FirstName alphabetically. <br/>
Required columns:<br/>
•	FirstName<br/>
•	LastName<br/>
•	Manufacturer<br/>
•	Model<br/>
•	FlightHours<br/>
Example<br/>
FirstName	LastName	Manufacturer	Model	FlightHours<br/>
Genna	Jaquet	Safran	SaM146	303<br/>
Jaynell	Kidson	Safran	SaM146	303<br/>
Lexie	Salasar	Safran	SaM146	303<br/>
Roddie	Gribben	Safran	SaM146	303<br/>
Delaney	Stove	GE Aviation	CT10	275<br/>
Crosby	Godlee	Lockheed Martin	F-22 Raptor	271<br/>
…	…	…	…	…<br/>
### 7.	Top 20 Flight Destinations<br/>
Select top 20  flight destinations, where Start day is an even number. Extract DestinationId, Start date, passenger's FullName, AirportName, and TicketPrice. Order the result by TicketPrice descending, then by AirportName ascending.<br/>
Required columns:<br/>
•	DestinationId<br/>
•	Start<br/>
•	FullName (passenger)<br/>
•	AirportName<br/>
•	TicketPrice<br/>
Example<br/>
DestinationId	Start	FullName	AirportName	TicketPrice<br/>
95	2020-07-02 15:27:47.000	Cullan Dogerty	Kisangani Bangoka International Airport	5048.89<br/>
9	2020-02-06 22:32:14.000	Lanita Crockatt	Providenciales Airport	4100.49<br/>
56	2021-02-20 21:04:53.000	Gaye Sillars	Netaji Subhas Chandra Bose International Airport	4002.21<br/>
55	2021-02-28 13:13:55.000	Zeke Rowston	Sir Seretse Khama International Airport	3700.65<br/>
32	2020-09-10 01:55:19.000	Jacquelynn Plackstone	Bujumbura International Airport	3690.22<br/>
38	2020-11-28 17:58:40.000	Jeralee Tue	Winnipeg James Armstrong Richardson International Airport	3390.81<br/>
…	…	…	…	…<br/>
### 8.	Number of Flights for Each Aircraft<br/>
Extract information about all the Aircraft and the count of their FlightDestinations. Display average ticket price (AvgPrice) of each flight destination by the Aircraft, rounded to the second digit. Take only the aircraft with at least 2  FlightDestinations. Order the results by count of flight destinations descending, then by the aircraft's id ascending. <br/>
Required columns:<br/>
•	AircraftId<br/>
•	Manufacturer<br/>
•	FlightHours<br/>
•	FlightDestinationsCount<br/>
•	AvgPrice<br/>
Example<br/>
AircraftId	Manufacturer	FlightHours	FlightDestinationsCount	AvgPrice<br/>
13	Safran	849	4	3208.200000<br/>
80	Lockheed Martin	714	4	1743.140000<br/>
1	Safran	559	3	1347.710000<br/>
8	Safran	527	3	1366.200000<br/>
25	Northrop Grumman	414	3	452.960000<br/>
37	GE Aviation	4	3	896.950000<br/>
…	…	…	…	…<br/>
### 9.	Regular Passengers<br/>
Extract all passengers, who have flown in more than one aircraft and have an 'a' as the second letter of their full name. Select the full name, the count of aircraft that he/she traveled, and the total sum which was paid.<br/>
Order the result by passenger's FullName.<br/>
Required columns:<br/>
•	FullName<br/>
•	CountOfAircraft<br/>
•	TotalPayed<br/>
Example<br/>
FullName	CountOfAircraft	TotalPayed<br/>
Danny Simoneau	2	7587.68<br/>
Haven Seaton	2	5390.92<br/>
Jacquelynn Plackstone	2	4398.36<br/>
Kaylee Coushe	4	4286.71<br/>
Lanita Crockatt	2	4704.12<br/>
Parker McGeorge	4	3896.57<br/>
…	…	…<br/>
### 10.	Full Info for Flight Destinations<br/>
Extract information about all flight destinations which Start between hours: 6:00 and 20:00 (both inclusive) and have ticket prices higher than 2500. Select the airport's name, time of the day,  price of the ticket, passenger's full name, aircraft manufacturer, and aircraft model. Order the result by aircraft model ascending.<br/>
Required columns:<br/>
•	AirportName <br/>
•	DayTime<br/>
•	TicketPrice<br/>
•	FullName (passenger)<br/>
•	Manufacturer<br/>
•	Model<br/>
Example<br/>
AirportName	DayTime	TicketPrice	FullName	Manufacturer	Model<br/>
N'Djamena International Airport	2020-09-12 18:14:55.000	3096.19	Owen Strivens	Boeing	737<br/>
Hosea Kutako International Airport	2020-08-02 15:43:34.000	3010.46	Courtnay Devoy	Boeing	787<br/>
Winnipeg James Armstrong Richardson International Airport	2020-11-28 17:58:40.000	3390.81	Jeralee Tue	Airbus	A330<br/>
Monastir Habib Bourguiba International Airport	2020-08-23 14:33:46.000	4807.43	Danny Simoneau	Northrop Grumman	B-21 Raider<br/>
Modibo Keita International Airport	2021-02-04 14:38:44.000	2930.91	Abbey Pedrinson	Rolls-Royce Holdings	EJ200<br/>
King Mswati III International Airport	2020-06-13 10:53:40.000	3190.57	Juane Gorrynsen	Lockheed Martin	F-117 Nighthawk<br/>
…	…	…	…	…	…<br/>
## Section 4. Programmability (20 pts)<br/>
### 11.	Find all Destinations by Email Address<br/>
Create a user-defined function named udf_FlightDestinationsByEmail(@email) that receives a passenger's email address and returns the number of flight destinations that the passenger has in the database.<br/>
Examples<br/>
Query<br/>
SELECT dbo.udf_FlightDestinationsByEmail ('PierretteDunmuir@gmail.com')<br/>
Output<br/>
1<br/>
<br/>
Query<br/>
SELECT dbo.udf_FlightDestinationsByEmail('Montacute@gmail.com')<br/>
Output<br/>
3<br/>
<br/>
Query<br/>
SELECT dbo.udf_FlightDestinationsByEmail('MerisShale@gmail.com')<br/>
Output<br/>
0<br/>
### 12.	Full Info for Airports
Create a stored procedure, named usp_SearchByAirportName, which accepts the following parameters:<br/>
•	airportName(with max length 70)<br/>
Extract information about the airport locations with the given airport name. The needed data is the name of the airport, full name of the passenger, level of the ticket price (depends on flight destination's ticket price: 'Low'– lower than 400 (inclusive), 'Medium' – between 401 and 1500 (inclusive), and 'High' – more than 1501), manufacturer and condition of the aircraft, and the name of the aircraft type.<br/>
Order the result by Manufacturer, then by passenger's full name.<br/>
Required columns:<br/>
•	AirportName<br/>
•	FullName (passenger)<br/>
•	LevelOfTickerPrice <br/>
•	Manifacturer<br/>
•	Condition<br/>
•	TypeName (aircraft type)<br/>
Example<br/>
Query<br/>
EXEC usp_SearchByAirportName 'Sir Seretse Khama International Airport'<br/>
Result<br/>
AirportName	FullName	LevelOfTickerPrice	Manufacturer	Condition	TypeName<br/>
Sir Seretse Khama International Airport	Alyson Jankowski	Low	Airbus	B	Private Single Engine<br/>
Sir Seretse Khama International Airport	Bev Wrigglesworth	Medium	Airbus	B	Private Single Engine<br/>
Sir Seretse Khama International Airport	Kelcy Viccary	High	Airbus	B	Mid-Size Passenger Jets<br/>
Sir Seretse Khama International Airport	Courtnay Devoy	Low	GE Aviation	B	Heavy Business Jets<br/>
Sir Seretse Khama International Airport	Joyann Garrettson	Low	Lockheed Martin	A	Twin Turboprops<br/>
Sir Seretse Khama International Airport	Zeke Rowston	High	Lockheed Martin	A	Private Single Engine<br/>
