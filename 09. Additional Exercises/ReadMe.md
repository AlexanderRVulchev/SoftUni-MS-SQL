## PART I – Queries for Diablo Database
### 1.	Number of Users for Email Provider</br>
Find number of users for email provider from the largest to smallest, then by Email Provider in ascending order. </br>
###### Output</br>
Email Provider	Number Of Users</br>
yahoo.com	14</br>
dps.centrin.net.id	5</br>
softuni.bg	5</br>
indosat.net.id	4</br>
…	…</br>
### 2.	All User in Games
Find all user in games with information about them. Display the game name, game type, username, level, cash and character name. Sort the result by level in descending order, then by username and game in alphabetical order. Submit your query statement as Prepare DB & run queries in Judge.</br>
###### Output
Game	Game Type	Username	Level	Cash	Character</br>
Calla lily white	Kinky	obliquepoof	99	7527.00	Monk</br>
Dubai	Funny	rateweed	99	7499.00	Barbarian</br>
Stonehenge	Kinky	terrifymarzipan	99	4825.00	Witch Doctor</br>
…		…	…	…	…</br>
### 3.	Users in Games with Their Items
Find all users in games with their items count and items price. Display the username, game name, items count and items price. Display only user in games with items count more or equal to 10. Sort the results by items count in descending order, then by price in descending order, and by username in ascending order. Submit your query statement as Prepare DB & run queries in Judge.</br>
###### Output
Username	Game	Items Count	Items Price</br>
skippingside	Rose Fire & Ice	23	11065.00</br>
countrydecay	Star of Bethlehem	18	8039.00</br>
obliquepoof	Washington D.C.	17	5186.00</br>
### 4.	*User in Games with Their Statistics*
Find information about every game a user has played with their statistics. Each user may have participated in several games. Display the username, game name, character name, strength, defence, speed, mind and luck.</br>
Every statistic (strength, defence, speed, mind and luck) should be a sum of the character statistic, game type statistic and items for user in game statistic. One user may have multiple characters in a single game.</br> 
What you should do in order to calculate the statistics properly is to sum the following: </br>
1.	Get the sum of all items – of all characters that the user may have (SUM).</br>
2.	For all of his characters get the character stats which are the biggest (MAX).</br>
3.	For all of his game types stats select only these which are again the biggest (MAX).</br>
Order the results by Strength, Defence, Speed, Mind, Luck – all in descending order. Submit your query statement as Prepare DB & run queries in Judge.</br>
###### Example
Let's say that we have user "Ana" and she is in the game "Star of Bethlehem", having two characters: Sorceress and Paladin. In tables below, you will be given their statistics:</br>
Paladin</br>
Type of Stats\Statistics	Strength	Defence	Speed	Mind	Luck</br>
Item A Stats	15	10	3	14	20</br>
Game Type Stats	5	5	7	4	5</br>
Character Stats	20	17	10	8	6</br>
Sorceress</br>
Type of Stats\Statistics	Strength	Defence	Speed	Mind	Luck</br>
Item B Stats	8	4	10	22	12</br>
Game Type Stats	6	6	6	4	6</br>
Character Stats	8	6	13	23	10</br>
What we should get as a result is:</br>
Username	Game	Character	Strength	Defence	Speed	Mind	Luck</br>
Ana	Star of Bethlehem	Sorceress	49	37	33	63	48</br>
Now let's see how the Strength is calculated:</br>
Strength – (Item A's Strength + Item B's Strength) + MAX (Paladin Game Type's Strength, Sorceress GameType's Strength) + MAX (Paladin Character's Strength, Sorceress Character's Strength) = 15 + 8 + 6 + 20 = 49.</br>
Here we sum up first the items stats (15 + 8), then we add the biggest one between the game type stats (6 > 5 → 6), then we add the biggest one between the character stats (20 > 8 → 20). So, (15 + 8) + 6 + 20 = 49.</br>
Same goes for the Luck:</br>
Luck = (Item A's Luck + Item B's Luck) + MAX (Paladin Game Type's Luck, Sorceress GameType's Luck) + MAX (Paladin Character’s Luck, Sorceress Character’s Luck) = 20 + 12 + 6 + 10 = 49.</br>
Here we sum up first the items stats (20 + 12), then we add the biggest one between the game type stats (6 > 5 → 6), then we add the biggest one between the character stats (10 > 6 → 10). So, (20 + 12) + 6 + 10 = 48.</br>
###### Output
Username	Game	Character	Strength	Defence	Speed	Mind	Luck</br>
skippingside	Rose Fire & Ice	Sorceress	258	215	246	240	263</br>
countrydecay	Star of Bethlehem	Sorceress	221	163	216	153	196</br>
obliquepoof	Washington D.C.	Paladin	204	200	183	185	185</br>
Note that for the Character column you should select the character name which is alphabetically "bigger" than others. In other words, if you have two characters: 'A' and 'Z', pick 'Z' because alphabetically is after 'A'.</br>
Hints</br>
You have to join GameType with Statistics, Characters with Statistics and Items with their Statistics in a single query (and that for every user in a game). After that use aggregate functions (like MAX and SUM) to calculate the above statistics. </br>
For the character name use MAX(characterName).</br>
### 5.	All Items with Greater than Average Statistics</br>
Find all items with statistics larger than average. Display only items that have Mind, Luck and Speed, greater than average Items mind, luck and speed. Sort the results by item names in alphabetical order. Submit your query statement as Prepare DB & run queries in Judge.</br>
###### Output
Name	Price	MinLevel	Strength	Defence	Speed	Luck	Mind</br>
Aether Walker	473.00	46	2	10	15	11	13</br>
Ancient Parthan Defenders	566.00	38	5	7	10	19	18</br>
Aquila Cuirass	405.00	76	5	7	10	19	18</br>
Arcstone	613.00	50	2	10	15	11	13</br>
### 6.	Display All Items with Information about Forbidden Game Type
Find all items and information whether and what forbidden game types they have. Display item name, price, min level and forbidden game type. Display all items. Sort the results by game type in descending order, then by item name in ascending order. Submit your query statement as Prepare DB & run queries in Judge.</br>
###### Output</br>
Item	Price	MinLevel	Forbidden Game Type</br>
Archfiend Arrows	531.00	8	Kinky</br>
Behistun Rune	611.00	67	Kinky</br>
Boots	782.00	44	Kinky</br>
…	…	…	…</br>
### 7.	Buy Items for User in Game
User Alex is in the shop of the game "Edinburgh" and she wants to buy some items. She likes Blackguard, Bottomless Potion of Amplification, Eye of Etlich (Diablo III), Gem of Efficacious Toxin, Golden Gorget of Leoric and Hellfire Amulet. Buy the items. You should add the data in the right tables. Get the money for the items from the user in column Cash.</br>
Select all users in the current game with their items. Display username, game name, cash and item name. Sort the result by item name.</br>
Submit your query statements as Prepare DB & run queries in Judge.</br>
###### Output
Username	Name	Cash	Item Name</br>
Alex	Edinburgh	****.**	Akanesh, the Herald of Righteousness</br>
…	…	…	…</br>
corruptpizz	Edinburgh	****.**	Broken Crown</br>
…	…	…	…</br>
printerstencils	Edinburgh	****.**	Envious Blade</br>
## PART II – Queries for Geography Database
### 8.	Peaks and Mountains
Find all peaks along with their mountain sorted by elevation (from the highest to the lowest), then by peak name alphabetically. Display the peak name, mountain range name and elevation. Submit your query statement as Prepare DB & run queries in Judge.</br>
###### Output
PeakName	Mountain	Elevation</br>
Everest	Himalayas	8848</br>
K2	Karakoram	8611</br>
Kangchenjunga	Himalayas	8586</br>
…		…</br>
### 9.	Peaks with Their Mountain, Country and Continent
Find all peaks along with their mountain, country and continent. When a mountain belongs to multiple countries, display them all. Sort the results by peak name alphabetically, then by country name alphabetically. Submit your query statement as Prepare DB & run queries in Judge.</br>
Output</br>
PeakName	Mountain	CountryName	ContinentName</br>
Aconcagua	Andes	Argentina	South America</br>
Aconcagua	Andes	Chile	South America</br>
Banski Suhodol	Pirin	Bulgaria	Europe</br>
…	…	…	…
### 10.	Rivers by Country
For each country in the database, display the number of rivers passing through that country and the total length of these rivers. When a country does not have any river, display 0 as rivers count and as total length. Sort the results by rivers count (from largest to smallest), then by total length (from largest to smallest), then by country alphabetically. Submit your query statement as Prepare DB & run queries in Judge.</br>
Output</br>
CountryName	ContinentName	RiversCount	TotalLength</br>
China	Asia	8	35156</br>
Russia	Europe	6	26427</br>
…		…	…
### 11.	Count of Countries by Currency
Find the number of countries for each currency. Display three columns: currency code, currency description and number of countries. Sort the results by number of countries (from highest to lowest), then by currency description alphabetically. Name the columns exactly like in the table below. Submit your query statement as Prepare DB & run queries in Judge.</br>
###### Output
CurrencyCode	Currency	NumberOfCountries</br>
EUR	Euro Member Countries	35</br>
USD	United States Dollar	17</br>
AUD	Australia Dollar	8</br>
XOF	Communauté Financière Africaine (BCEAO) Franc	8</br>
…	…	…
### 12.	Population and Area by Continent
For each continent, display the total area and total population of all its countries. Sort the results by population from highest to lowest. Submit your query statement as Prepare DB & run queries in Judge.</br>
###### Output
ContinentName	CountriesArea	CountriesPopulation</br>
Asia	31603228	4130318467</br>
Africa	30360296	1015470588</br>
…	…	…</br>
### 13.	Monasteries by Country
Create a table Monasteries(Id, Name, CountryCode). Use auto-increment for the primary key. Create a foreign key between the tables Monasteries and Countries.
Execute the following SQL script (it should pass without any errors):</br>

*INSERT INTO Monasteries(Name, CountryCode) VALUES</br>
('Rila Monastery “St. Ivan of Rila”', 'BG'), </br>
('Bachkovo Monastery “Virgin Mary”', 'BG'),</br>
('Troyan Monastery “Holy Mother''s Assumption”', 'BG'),</br>
('Kopan Monastery', 'NP'),</br>
('Thrangu Tashi Yangtse Monastery', 'NP'),</br>
('Shechen Tennyi Dargyeling Monastery', 'NP'),</br>
('Benchen Monastery', 'NP'),</br>
('Southern Shaolin Monastery', 'CN'),</br>
('Dabei Monastery', 'CN'),</br>
('Wa Sau Toi', 'CN'),</br>
('Lhunshigyia Monastery', 'CN'),</br>
('Rakya Monastery', 'CN'),</br>
('Monasteries of Meteora', 'GR'),</br>
('The Holy Monastery of Stavronikita', 'GR'),</br>
('Taung Kalat Monastery', 'MM'),</br>
('Pa-Auk Forest Monastery', 'MM'),</br>
('Taktsang Palphug Monastery', 'BT'),</br>
('Sümela Monastery', 'TR')*</br>

Write a SQL command to add a new Boolean column IsDeleted in the Countries table (defaults to false). Note that there is no "Boolean" type in SQL server, so you should use an alternative and make sure you set the default value properly.</br>
Write and execute a SQL command to mark as deleted all countries that have more than 3 rivers.</br>
Write a query to display all monasteries along with their countries, sorted by monastery name. Skip all deleted countries and their monasteries.</br>
Submit your query statements without the INSERT statement from above as Prepare DB & run queries in Judge.</br>
###### Output
Monastery	Country</br>
Bachkovo Monastery “Virgin Mary”	Bulgaria</br>
Benchen Monastery	Nepal</br>
Kopan Monastery	Nepal</br>
…	…</br>
### 14.	Monasteries by Continents and Countries</br>
This problem assumes that the previous task is completed successfully without errors.</br>
Write and execute a SQL command that changes the country named "Myanmar" to its other name "Burma".</br>
Add a new monastery, holding the following information: Name="Hanga Abbey", Country="Tanzania".</br>
Add a new monastery, holding the following information: Name="Myin-Tin-Daik", Country="Myanmar".</br>
Find the count of monasteries for each continent and not deleted country. Display the continent name, the country name and the count of monasteries. Include also the countries with 0 monasteries. Sort the results by monasteries count (from largest to lowest), then by country name alphabetically. Name the columns exactly like in the table below.</br>
Submit all your query statements at once as Prepare DB & run queries in Judge.</br>
NOTE: when you insert the monasteries make sure to specify the country code by the country name (use subquery).</br>
###### Output
ContinentName	CountryName	MonasteriesCount</br>
Asia	Nepal	4</br>
Europe	Bulgaria	3</br>
Asia	Burma	2</br>
Europe	Greece	2</br>
…	…	…</br>

