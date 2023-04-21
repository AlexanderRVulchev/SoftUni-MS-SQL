# Database Basics MS SQL Exam – 16 Oct 2021

## Section 1. DDL (30 pts)
You have been given the E/R Diagram of the CigarShop
 
 ![image](https://user-images.githubusercontent.com/106471266/233680371-f444a818-fcd0-4899-95a9-3a3a74c400da.png)
 
Create a database called CigarShop. You need to create 7 tables:</br>
•	Sizes – contains information about the cigar's length and ring range;</br>
•	Tastes – contains information about the cigar's taste type, taste strength, and image of the taste;</br>
•	Brands – contains information about the cigar's brand name and brand description;</br>
•	Cigars – contains information for every single cigar;</br>
•	Addresses – contains information about the clients' address details;</br>
•	Clients – contains information about the customers that buy cigars;</br>
•	ClientsCigars – mapping table between clients and cigars.</br>
</br>
NOTE: Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).</br>
</br>
You have been tasked to create the tables in the database by the following models:</br>
Sizes</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
Length	Integer from 0 to 2,147,483,647	Length should be between 10 cm. and 25 cm; NULL is not allowed</br>
RingRange	Decimal number with two-digit precision.	RingRange should be between 1.5 cm. and 7.5 cm; NULL is not allowed</br>
</br>
Tastes</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
TasteType	String up to 20 symbols	NULL is not allowed</br>
TasteStrength	String up to 15 symbols	NULL is not allowed</br>
ImageURL	String up to 100 symbols, Unicode	NULL is not allowed</br>
</br>
Brands</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
BrandName	String up to 30 symbols	Unique, NULL is not allowed</br>
BrandDescription	String with maximum length	NULL is allowed</br>
</br>
Cigars</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity</br>
CigarName	String up to 80 symbols	NULL is not allowed</br>
BrandId	Integer from 0 to 2,147,483,647	Relationship with table Brands; NULL is not allowed</br>
TastId	Integer from 0 to 2,147,483,647	Relationship with table Tastes; NULL is not allowed</br>
SizeId	Integer from 0 to 2,147,483,647	PK, Relationship with table Sizes; NULL is not allowed</br>
PriceForSingleCigar	A decimal number used for money calculations.	NULL is not allowed</br>
ImageURL	String up to 100 symbols, Unicode.	NULL is not allowed</br>
</br>
Addresses</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity.</br>
Town	String up to 30 symbols	NULL is not allowed</br>
Country	String up to 30 symbols, Unicode	NULL is not allowed</br>
Streat	String up to 100 symbols, Unicode	NULL is not allowed</br>
ZIP	String up to 20 symbols	NULL is not allowed</br>
</br>
Clients</br>
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	PK, Unique table identification, Identity.</br>
FirstName	String up to 30 symbols, Unicode	NULL is not allowed</br>
LastName	String up to 30 symbols, Unicode	NULL is not allowed</br>
Email	String up to 50 symbols, Unicode	NULL is not allowed</br>
AddressId	Integer from 0 to 2,147,483,647	Relationship with table Addresses; NULL is not allowed</br>
</br>
ClientsCigars</br>
Column Name	Data Type	Constraints</br>
ClientId	Integer from 0 to 2,147,483,647	PK, Unique table identification, Relationship with table Clients,  Required</br>
CigarId	Integer from 0 to 2,147,483,647	PK, Unique table identification, Relationship with table Cigars, Required</br>
### 1.	Database design
Submit all of yours CREATE statements to Judge (only creation of tables).</br>
Section 2. DML (10 pts)</br>
Before you start you have to import "01-DDL-Data-Seeder.sql ". If you have created the structure correctly the data should be successfully inserted.</br>
In this section, you have to do some data manipulations:</br>
### 2.	Insert
Let us insert some sample data into the database. Write a query to add the following records into the corresponding tables. All IDs should be auto-generated.</br>
Cigars</br>
CigarName	BrandId	TastId	SizeId	PriceForSingleCigar	ImageURL</br>
COHIBA ROBUSTO	9	1	5	15.50	cohiba-robusto-stick_18.jpg</br>
COHIBA SIGLO I	9	1	10	410.00	cohiba-siglo-i-stick_12.jpg</br>
HOYO DE MONTERREY LE HOYO DU MAIRE	14	5	11	7.50	hoyo-du-maire-stick_17.jpg</br>
HOYO DE MONTERREY LE HOYO DE SAN JUAN	14	4	15	32.00	hoyo-de-san-juan-stick_20.jpg</br>
</br>
TRINIDAD COLONIALES	2	3	8	85.21	trinidad-coloniales-stick_30.jpg</br>
</br>
Addresses</br>
Town	Country	Streat	ZIP</br>
Sofia	Bulgaria	18 Bul. Vasil levski	1000</br>
Athens	Greece	4342 McDonald Avenue	10435</br>
Zagreb	Croatia	4333 Lauren Drive	10000</br>
### 3.	Update
We've decided to increase the price of some cigars by 20%. Update the table Cigars and increase the price of all cigars, which TasteType is "Spicy" by 20%. Also add the text "New description" to every brand, which does not has BrandDescription.</br>
### 4.	Delete
In table Addresses, delete every country which name starts with 'C', keep in mind that could be foreign key constraint conflicts.</br>
## Section 3. Querying (40 pts)
You need to start with a fresh dataset, so recreate your DB and import the sample data again ("01-DDL-Data-Seeder.sql").</br>
### 5.	Cigars by Price
Select all cigars ordered by price (ascending) then by cigar name (descending). </br>
Required columns</br>
•	CigarName</br>
•	PriceForSingleCigar</br>
•	ImageURL</br>
##### Example</br>
CigarName	PriceForSingleCigar	ImageURL</br>
H.UPMANN NO. 2	5.45	h-upmann-magnum-50_6_4_1_9.png</br>
EL-REY-DEL-MUNDO DEMI TASSE	11.45	EL-REY-DEL-MUNDO-magnum-50_6_4_1_9.jpg</br>
VEGUEROS TAPADOS	15.62	VEGUEROS-open-junior_1_1_2_1_1_1_4_1_1_1_1_1_1_1_1_2_4_1_9.jpg</br>
BOLIVAR CORONAS JUNIOR	17.34	bolivar-coronas-junior.jpg</br>
…	…	…</br>
### 6.	Cigars by Taste
Select all cigars with "Earthy" or "Woody" tastes. Order results by PriceForSingleCigar (descending).</br>
Required columns</br>
•	Id</br>
•	CigarName</br>
•	PriceForSingleCigar</br>
•	TasteType</br>
•	TasteStrength</br>
##### Example</br>
Id	CigarName	PriceForSingleCigar	TasteType	TasteStrength</br>
18	TRINIDAD CASILDA COLECCION HABANOS 2019	756.82	Woody	Medium</br>
25	RAMON ALLONES SMALL CLUB CORONAS	567.34	Earthy	Medium to Full</br>
39	MONTECRISTO OPEN MASTER TUBOS	555.45	Earthy	Medium to Full</br>
38	MONTECRISTO OPEN JUNIOR	545.45	Woody	Medium</br>
…	…	…	…	…</br>
### 7.	Clients without Cigars</br>
Select all clients without cigars. Order them by name (ascending).</br>
Required columns</br>
•	Id</br>
•	ClientName – customer's first and last name, concatenated with space</br>
•	Email</br>
##### Example</br>
Id	ClientName	Email</br>
8	Brenda Wallace	Wallace.khan@gmail.com</br>
10	Harry Jones	5ornob.Jones@gmail.com</br>
7	Jason Hamilton	nob.Jason@gmail.com</br>
### 8.	First 5 Cigars</br>
Select the first 5 cigars that are at least 12cm long and contain "ci" in the cigar name or price for a single cigar is bigger than $50 and ring range is bigger than 2.55. Order the result by cigar name (ascending), then by price for a single cigar (descending).</br>
Required columns</br>
•	CigarName</br>
•	PriceForSingleCigar</br>
•	ImageURL</br>
##### Example</br>
CigarName	PriceForSingleCigar	ImageURL</br>
COHIBA 1966 EDICION LIMITADA 2011	19.45	cohiba-siglo-i-stick_18.png</br>
COHIBA BEHIKE 54	254.09	cohiba-esplendidos-stick.jpg</br>
FONSECA NO. 1	76.34	FONSECA-50_6_4_1_9.jpg</br>
HOYO-DE-MONTERREY EPICURE ESPECIAL	98.89	HOYO-DE-MONTERREY-siglo-i-stick_18.jpg</br>
HOYO-DE-MONTERREY EPICURE NO. 2	78.57	HOYO-DE-MONTERREY-siglo-i-stick_18.jpg</br>
### 9.	Clients with ZIP Codes</br>
Select all clients which have addresses with ZIP code that contains only digits, and display they're the most expensive cigar. Order by client full name ascending.</br>
Required columns</br>
•	FullName</br>
•	Country</br>
•	ZIP</br>
•	CigarPrice – formated as "${CigarPrice}"</br>
##### Example</br>
FullName	Country	ZIP	CigarPrice</br>
Betty Wallace	Turkey	13760	$555.45</br>
Joan Peters	Japan	06511	$543.23</br>
Rachel Bishop	Andorra	08043	$555.45</br>
### 10.	Cigars by Size</br>
Select all clients which own cigars. Select their last name, average length, and ring range (rounded up to the next biggest integer) of their cigars. Order the results by average cigar length (descending).</br>
##### Example</br>
LastName	CiagrLength	CiagrRingRange</br>
Miller	20	5</br>
Riley	19	3</br>
Ramirez	18	5</br>
…	…	…</br>
## Section 4. Programmability (20 pts)
### 11.	Client with Cigars</br>
Create a user-defined function, named udf_ClientWithCigars(@name) that receives a client's first name.</br>
The function should return the total number of cigars that the client has.</br>
##### Example</br>
Query</br>
SELECT dbo.udf_ClientWithCigars('Betty')</br>
Output</br>
5</br>
### 12.	Search for Cigar with Specific Taste
Create a stored procedure, named usp_SearchByTaste(@taste), that receives taste type. The procedure must print full information about all cigars with the given tastes: CigarName, Price, TasteType, BrandName, CigarLength, CigarRingRange. Add '$' at the beginning of the price and "cm" at the end of both CigarLength and CigarRingRange. Order them by CigarLength (ascending), and CigarRingRange (descending).</br>
##### Example</br>
Query</br>
EXEC usp_SearchByTaste 'Woody'</br>
Output</br>
CigarName	Price	TasteType	BrandName	CigarLength	CigarRingRange</br>
BOLIVAR PETIT CORONAS	$18.76	Woody	BOLIVAR	10 cm	2.90 cm</br>
DAVIDOFF MILLENNIUM BLEND ROBUSTO	$86.45	Woody	DAVIDOFF	11 cm	5.30 cm</br>
H.UPMANN MAGNUM 50 TUBOS	$23.66	Woody	H.UPMANN	11 cm	4.30 cm</br>
…	…	…	…	…	…</br>
