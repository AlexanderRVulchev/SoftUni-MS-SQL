*100 Tourist Sites of Bulgaria is a Bulgarian national movement established in 1966 to promote tourism among Bulgaria's most significant cultural, historic, and natural landmarks. You are given the task to create a database in which you will store information about the sites and the tourists who are visiting them.
Section 1. DDL (30 pts)</br>
You have been given the following E/R Diagram.*
 
 ![image](https://user-images.githubusercontent.com/106471266/231244311-c8619b11-5804-4f66-b0ad-55728a4305e9.png)

Create a database called NationalTouristSitesOfBulgaria. You need to create 7 tables:</br>
•	Categories – contains information about the different categories of the tourist sites;</br>
•	Locations – contains information about the locations of the tourist sites;</br>
•	Sites – contains information about the tourist sites;</br>
•	Tourists – contains information about the tourists, who are visiting the tourist sites;</br>
•	SitesTourists – a many to many mapping table between the sites and the tourists;</br>
•	BonusPrizes – contains information about the bonus prizes, which are given to an annual raffle;</br>
•	TouristsBonusPrizes – a many to many mapping table between the tourists and the bonus prizes.</br>
</br>
*NOTE: Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).</br>
NOTE: Use VARCHAR for strings, not NVARCHAR.*</br>
</br>
You have been tasked to create the tables in the database by the following models:</br>
Categories</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
Name	String up to 50 symbols	Null is not allowed</br>
</br>
Locations</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
Name	String up to 50 symbols	Null is not allowed</br>
Municipality	String up to 50 symbols	Null is allowed</br>
Province	String up to 50 symbols	Null is allowed</br>
</br>
Sites</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
Name	String up to 100 symbols	Null is not allowed</br>
LocationId	Integer from 0 to 2,147,483,647	Relationship with table Locations,  Null is not allowed</br>
CategoryId	Integer from 0 to 2,147,483,647	Relationship with table Categories, Null is not allowed</br>
Establishment	String up to 15 symbols	Null is allowed</br>
</br>
Tourists</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
Name	String up to 50 symbols	Null is not allowed</br>
Age	Integer from 0 to 2,147,483,647	In range between 0 (inclusive) and 120 (inclusive).</br>
Null is not allowed</br>
PhoneNumber	String up to 20 symbols	Null is not allowed</br>
Nationality	String up to 30 symbols	Null is not allowed</br>
Reward	String up to 20 symbols	Null is allowed</br>
</br>
SitesTourists</br>
Column Name	Data Type	Constraints</br>
TouristId	Integer from 0 to 2,147,483,647	PK, Unique table identification, Relationship with table Tourists</br>
Null is not allowed</br>
SiteId	Integer from 0 to 2,147,483,647	PK, Unique table identification, Relationship with table Sites.</br>
Null is not allowed</br>
</br>
BonusPrizes</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
Name	String up to 50 symbols	Null is not allowed</br>
</br>
TouristsBonusPrizes</br>
Column Name	Data Type	Constraints</br>
TouristId	Integer from 0 to 2,147,483,647	PK, Unique table identification, Relationship with table Tourists</br>
Null is not allowed</br>
BonusPrizeId	Integer from 0 to 2,147,483,647	PK, Unique table identification, Relationship with table BonusPrizes</br>
Null is not allowed</br>
</br>
### 1.	Database design</br>
Submit all of your created statements to Judge (only creation of tables).</br>
## Section 2. DML (10 pts)</br>
Before you start you have to import "01. DDL_Dataset.sql ". If you have created the structure correctly the data should be successfully inserted.</br>
In this section, you have to do some data manipulations:</br>
### 2.	Insert</br>
Let's insert some sample data into the database. Write a query to add the following records into the corresponding tables. All Ids should be auto-generated.</br>
Tourists</br>
Name	Age	PhoneNumber	Nationality	Reward</br>
Borislava Kazakova	52	+359896354244	Bulgaria	NULL</br>
Peter Bosh	48	+447911844141	UK	NULL</br>
Martin Smith	29	+353863818592	Ireland	Bronze badge</br>
Svilen Dobrev	49	+359986584786	Bulgaria	Silver badge</br>
Kremena Popova	38	+359893298604	Bulgaria	NULL</br>
</br>
Sites</br>
Name	LocationId	CategoryId	Establishment</br>
Ustra fortress	90	7	X</br>
Karlanovo Pyramids	65	7	NULL</br>
The Tomb of Tsar Sevt	63	8	V BC</br>
Sinite Kamani Natural Park	17	1	NULL</br>
St. Petka of Bulgaria – Rupite	92	6	1994</br>
</br>
### 3.	Update</br>
For some of the tourist sites there are no clear records when they were established, so you need to update the column 'Establishment' for those records by putting the text '(not defined)'.</br>
</br>
### 4.	Delete</br>
For this year's raffle it was decided to remove the Sleeping bag from the bonus prizes.</br>
Section 3. Querying (40 pts)</br>
You need to start with a fresh dataset, so recreate your DB and import the sample data again (01. DDL_Dataset.sql). DO NOT CHANGE OR INCLUDE DATA FROM DELETE, INSERT AND UPDATE TASKS!!!</br>
</br>
### 5.	Tourists</br>
Extract information about all the Tourists – name, age, phone number and nationality. Order the result by nationality (ascending), then by age (descending), and then by tourist name (ascending).</br>
Example</br>
Name	Age	PhoneNumber	Nationality</br>
Danny Kane	39	+32487454880	Belgium</br>
Krasen Krasenov	62	+359897653265	Bulgaria</br>
Pavel Mateev	51	+359879632123	Bulgaria</br>
Kameliya Dimitrova	42	+359898645326	Bulgaria</br>
Dobroslav Mihalev	39	+359889632200	Bulgaria</br>
Mariya Petrova	37	+359887564235	Bulgaria</br>
…	…	…	…</br>
</br>
### 6.	Sites with Their Location and Category</br>
Select all sites and find their location and category. Select the name of the tourist site, name of the location,  establishment year/ century and name of the category. Order the result by name of the category (descending), then by name of the location (ascending) and then by name of the site itself (ascending).</br>
Example</br>
Site	Location	Establishment	Category</br>
Clock Tower – Botevgrad	Botevgrad	1866	Spare time in the city</br>
Clock Tower of Etropole	Etropole	1710	Spare time in the city</br>
House of Humour and Satire Museum – Gabrovo	Gabrovo	1972	Spare time in the city</br>
Museum of Education – Gabrovo	Gabrovo	1974	Spare time in the city</br>
Antique Theater – Plovdiv	Plovdiv	II	Spare time in the city</br>
Salt Museum – Pomorie	Pomorie	2002	Spare time in the city</br>
…	…	…	</br>
</br>
### 7.	Count of Sites in Sofia Province</br>
Extract all locations which are in Sofia province. Find the count of sites in every location. Select the name of the province, name of the municipality, name of the location and count of the tourist sites in it. Order the result by count of tourist sites (descending) and then by name of the location (ascending).</br>
Example</br>
Province	Municipality	Location	CountOfSites</br>
Sofia	Sofia	Sofia	11</br>
Sofia	Etropole	Etropole	3</br>
Sofia	Botevgrad	Botevgrad	1</br>
Sofia	Koprivshtitsa	Koprivshtitsa	1</br>
Sofia	Svoge	Osenovlag village	1</br>
Sofia	Samokov	Samokov	1</br>
</br>
### 8.	Tourist Sites established BC</br>
Extract information about the tourist sites, which have a location name that does NOT start with the letters 'B', 'M' or 'D' and which are established Before Christ (BC). Select the site name, location name, municipality, province and establishment. Order the result by name of the site (ascending).</br>
NOTE: If the establishment century is Before Christ (BC), it will always be in the following format: 'RomanNumeral BC'.</br>
Example</br>
Site	Location	Municipality	Province	Establishment</br>
Asen's Fortress	Asenovgrad	Asenovgrad	Plovdiv	V BC</br>
National archaeological reserve Kabile	Yambol	Yambol	Yambol	II BC</br>
Perperikon – Medieval Archaeological Complex	Rhodope Mountain	NULL	NULL	V BC</br>
Shumen Fortress Historical-Archaeological Preserve	Shumen	Shumen	Shumen	I BC</br>
Starosel – Thracian Temple Complex	Starosel village	Hisarya	Plovdiv	V BC</br>
Thracian Tomb of Kazanlak	Kazanlak	Karlovo	Plovdiv	IV BC</br>
</br>
### 9.	Tourists with their Bonus Prizes</br>
Extract information about the tourists, along with their bonus prizes. If there is no data for the bonus prize put '(no bonus prize)'. Select tourist's name, age, phone number, nationality and bonus prize. Order the result by the name of the tourist (ascending).</br>
NOTE: There will never be a tourist with more than one prize.</br>
Example</br>
Name	Age	PhoneNumber	Nationality	Reward</br>
Alonzo Conti	36	+393336258996	Italy	(no bonus prize)</br>
Brus Brown	42	+447459881347	UK	(no bonus prize)</br>
Claudia Reuss	54	+4930774615846	Germany	Sleeping bag</br>
Cosimo Ajello	51	+393521112654	Italy	(no bonus prize)</br>
Cyrek Gryzbowski	64	+48503435735	Poland	(no bonus prize)</br>
Danny Kane	39	+32487454880	Belgium	Water filter jug</br>
…	…	…	…	…</br>
</br>
### 10.	Tourists visiting History and Archaeology sites</br>
Extract all tourists, who have visited sites from category 'History and archaeology'. Select their last name, nationality, age and phone number. Order the result by their last name (ascending).</br>
NOTE: The name of the tourists will always be in the following format: 'FirstName LastName'.</br>
Example</br>
LastName	Nationality	Age	PhoneNumber</br>
Bauer	Germany	49	+496913265224</br>
Becker	Germany	36	+491711234567</br>
Bianchi	Italy	51	+393125965845</br>
Brown	UK	42	+447459881347</br>
Conti	Italy	36	+393336258996</br>
Dimitrova	Bulgaria	42	+359898645326</br>
…	…	…	…</br>
## Section 4. Programmability (20 pts)</br>

### 11.	Tourists Count on a Tourist Site</br>
Create a user-defined function named udf_GetTouristsCountOnATouristSite (@Site) which receives a tourist site and returns the count of tourists, who have visited it.</br>
Examples</br>
Query</br>
SELECT dbo.udf_GetTouristsCountOnATouristSite ('Regional History Museum – Vratsa')</br>
Output</br>
6</br>
</br>
Query</br>
SELECT dbo.udf_GetTouristsCountOnATouristSite ('Samuil’s Fortress')</br>
Output</br>
8</br>
</br>
Query</br>
SELECT dbo.udf_GetTouristsCountOnATouristSite ('Gorge of Erma River')</br>
Output</br>
7</br>

### 12.	Annual Reward Lottery</br>
A reward scheme has been developed to encourage collection of as many stamps as possible. Depending on the number of stamps collected, participants may receive bronze, silver or gold badges. </br>
Create a stored procedure, named usp_AnnualRewardLottery(@TouristName). Update the reward of the given tourist according to the count of the sites he have visited:</br>
	>= 100 receives 'Gold badge'</br>
	>= 50 receives 'Silver badge'</br>
	>= 25 receives 'Bronze badge'</br>
Extract the name of the tourist and the reward he has.</br>
Example</br>
Query</br>
EXEC usp_AnnualRewardLottery 'Gerhild Lutgard'</br>
Result</br>
Name	Reward</br>
Gerhild Lutgard	Gold badge</br>

Example</br>
Query</br>
EXEC usp_AnnualRewardLottery 'Teodor Petrov'</br>
Result</br>
Name	Reward</br>
Teodor Petrov	Silver badge</br>
</br>
Example</br>
Query</br>
EXEC usp_AnnualRewardLottery 'Zac Walsh'</br>
Result</br>
Name	Reward</br>
Zac Walsh	Bronze badge</br>

Example</br>
Query</br>
EXEC usp_AnnualRewardLottery 'Brus Brown'</br>
Result</br>
Name	Reward</br>
Brus Brown	NULL</br>
