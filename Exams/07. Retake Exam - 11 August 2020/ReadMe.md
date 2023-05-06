Your friend is opening his "bio" bakery. Since he is a lucky one to have you as a friend/programmer you decide to take part of his new journey – selling healthy food to people. Based on his requirements you should create the initial database frame. Then you have to do some data manipulations. Finally, you have to do some work on the programmability part. </br>
## Section 1. DDL 
For this section put your queries in judge and use: “SQL Server run queries and check DB”.</br>
You have been given the E/R Diagram of the bakery:</br>
 
 ![image](https://user-images.githubusercontent.com/106471266/236612220-d2aae084-4e02-4a92-a86b-e4410304d813.png)
 
Crate a database called Bakery. You need to create 7 tables:</br>
•	Products – contains information about the products that are being sold in our bakery;</br>
•	Ingredients – contains information about fruits, vegetables, spices and so on. Has relation to both products and distributors;</br>
•	ProductsIngredients – mapping table between products and ingredients;</br>
•	Distributors – contains information about distributors – organizations that deliver ingredients;</br>
•	Customers – contains information about the customers that use our products;</br>
•	Countries – contains info for origin place (ingredients), general office(distributors) or homeland (customers);</br>
•	Feedbacks – contains information about the feedback that the customers give while evaluating some of the products.</br>
</br>
NOTE: Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).</br>
</br>
You have been tasked to create the tables in the database by the following models:</br>
##### Countries
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 50 characters, Unicode	Unique</br>
</br>
##### Customers
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
FirstName	String up to 25 characters, Unicode	</br>
LastName	String up to 25 characters, Unicode	</br>
Gender	Character with exactly 1 symbol	Could be: 'M' or 'F'</br>
Age	Integer from 0 to 2,147,483,647	</br>
PhoneNumber	String 10 characters long	String length is exactly 10 chars long.</br>
CountryId	Integer from 0 to 2,147,483,647	Relationship with table Countries</br>
</br>
##### Products
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 25 characters, Unicode	Unique</br>
Description	String up to 250 characters, Unicode	</br>
Recipe	String with unlimited number of symbols (max), Unicode	</br>
Price	Decimal number used for money calculations	Non-positive numbers are not allowed</br>
</br>
##### Feedbacks
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Description	String up to 255 characters, Unicode	</br>
Rate	Decimal number with two-digit precision	Rate is between 0 and 10</br>
ProductId	Integer from 0 to 2,147,483,647	Relationship with table Products</br>
CustomerId	Integer from 0 to 2,147,483,647	Relationship with table Customers</br>
</br>
##### Distributors
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 25 characters, Unicode	Unique</br>
AddressText	String up to 30 characters, Unicode	</br>
Summary	String up to 200 characters, Unicode	</br>
CountryId	Integer from 0 to 2,147,483,647	Relationship with table Countries</br>
</br>
##### Ingredients
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 30 characters, Unicode	</br>
Description	String up to 200 characters, Unicode	</br>
OriginCountryId	Integer from 0 to 2,147,483,647	Relationship with table Countries</br>
DistributorId	Integer from 0 to 2,147,483,647	Relationship with table Distributors</br>
</br>
##### ProductsIngredients
Column Name	Data Type	Constraints</br>
ProductId	Integer from 0 to 2,147,483,647	Unique table identificator, Relationship with table Products, Required</br>
IngredientId	Integer from 0 to 2,147,483,647	Unique table identificator, Relationship with table Ingredients, Required</br>
### 1.	Database design</br>
Submit all of your CREATE statements to Judge.</br>
## Section 2. DML </br>
For this section put your queries in judge and use: "SQL Server run skeleton, run queries and check DB".</br>
Before you start you have to import "Скелет". If you have created the structure correctly the data should be successfully inserted.</br>
In this section, you have to do some data manipulations:</br>
### 2.	Insert
Let's insert some sample data into the database. Write a query to add the following records into the corresponding tables. All Ids should be auto-generated.</br>
Distributors</br>
Name	CountryId	AddressText	Summary</br>
Deloitte & Touche	2	6 Arch St #9757	Customizable neutral traveling</br>
Congress Title	13	58 Hancock St	Customer loyalty</br>
Kitchen People	1	3 E 31st St #77	Triple-buffered stable delivery</br>
General Color Co Inc	21	6185 Bohn St #72	Focus group</br>
Beck Corporation	23	21 E 64th Ave	Quality-focused 4th generation hardware</br>
</br>
Customers</br>
FirstName	LastName	Age	Gender	PhoneNumber	CountryId</br>
Francoise	Rautenstrauch	15	M	0195698399	5</br>
Kendra	Loud	22	F	0063631526	11</br>
Lourdes	Bauswell	50	M	0139037043	8</br>
Hannah	Edmison	18	F	0043343686	1</br>
Tom	Loeza	31	M	0144876096	23</br>
Queenie	Kramarczyk	30	F	0064215793	29</br>
Hiu	Portaro	25	M	0068277755	16</br>
Josefa	Opitz	43	F	0197887645	17</br>
### 3.	Update
We've decided to switch some of our ingredients to a local distributor. Update the table Ingredients and change the DistributorId of "Bay Leaf", "Paprika" and "Poppy" to 35. Change the OriginCountryId to 14 of all ingredients with OriginCountryId equal to 8.</br>
### 4.	Delete
Delete all Feedbacks which relate to Customer with Id 14 or to Product with Id 5.</br>
## Section 3. Querying 
You need to start with a fresh dataset, so recreate your DB and import the sample data again.</br>
For this section put your queries in judge and use: "SQL Server prepare DB and run queries".</br>
### 5.	Products by Price
Select all products ordered by price (descending) then by name (ascending). </br>
Required columns</br>
•	Name</br>
•	Price</br>
•	Description</br>
##### Example
Name	Price	Description</br>
Oxygen bread	27.39	Morbi ut odio.</br>
Pizza(small)	27.27	In sagittis dui vel nisl. Duis ac nibh.</br>
### 6.	Negative Feedback
Select all feedbacks alongside with the customers which gave them. Filter only feedbacks which have rate below 5.0. Order results by ProductId (descending) then by Rate (ascending).</br>
Required columns</br>
•	ProductId</br>
•	Rate</br>
•	Description</br>
•	CustomerId</br>
•	Age</br>
•	Gender</br>
##### Example
ProductId	Rate	Description	CustomerId	Age	Gender</br>
30	2.04	I did not like the product	23	27	M</br>
27	4.16	Meh..	20	57	F</br>
### 7.	Customers without Feedback
Select all customers without feedbacks. Order them by customer id (ascending).</br>
Required columns</br>
•	CustomerName – customer’s first and last name, concatenated with space</br>
•	PhoneNumber</br>
•	Gender</br>
##### Example
CustomerName	PhoneNumber	Gender</br>
Rachel Bishop	0779574407	F</br>
Irene Peters	0995086966	F</br>
### 8.	Customers by Criteria
Select customers that are either at least 21 old and contain "an" in their first name or their phone number ends with "38" and are not from Greece. Order by first name (ascending), then by age(descending).</br>
Required columns</br>
•	FirstName</br>
•	Age</br>
•	PhoneNumber</br>
##### Example
FirstName	Age	PhoneNumber</br>
Amanda	30	0886609909</br>
Antonio	49	0781375797</br>
Edward	55	0988359338</br>
### 9.	Middle Range Distributors
Select all distributors which distribute ingredients used in the making process of all products having average rate between 5 and 8 (inclusive). Order by distributor name, ingredient name and product name all ascending.</br>
Required columns</br>
•	DistributorName</br>
•	IngredientName</br>
•	ProductName</br>
•	AverageRate</br>
##### Example
DistributorName	IngredientName	ProductName	AverageRate</br>
Alprazolam	Cinnamon	Nicotine Pleasure	5.260000</br>
Arinase	Peppercorn	Panetone	5.400000</br>
…	…	…	…</br>
### 10.	Country Representative
Select all countries with their most active distributor (the one with the greatest number of ingredients). If there are several distributors with most ingredients delivered, list them all. Order by country name then by distributor name.</br>
Required columns</br>
•	CountryName</br>
•	DistributorName</br>
##### Example
CountryName	DisributorName</br>
Albania	Arinase</br>
Andorra	Allopurinol</br>
Andorra	SPF 17</br>
…	…</br>
## Section 4. Programmability 
For this section put your queries in Judge and use "SQL Server run skeleton, run queries and check DB".</br>
### 11.	Customers with Countries
Create a view named v_UserWithCountries which selects all customers with their countries.</br>
Required columns</br>
•	CustomerName – first name plus last name, with space between them</br>
•	Age</br>
•	Gender</br>
•	CountryName</br>
##### Example usage
Query</br>
SELECT TOP 5 </br>
  FROM v_UserWithCountries</br>
 ORDER BY Age</br>
CustomerName	Age	Gender	CountryName</br>
Paul Wells	6	M	Philippines</br>
Jeremy Banks	7	M	Brazil</br>
Marie Hudson	7	F	Bulgaria</br>
…	…	…	…</br>
### 12.	Delete Products
Create a trigger that deletes all of the relations of a product upon its deletion. </br>
##### Example usage
Query</br>
DELETE FROM Products WHERE Id = 7</br>
Response</br>
(1 row(s) affected)</br>
</br>
(3 row(s) affected)</br>
</br>
(1 row(s) affected)</br>
</br>
(1 row(s) affected)</br>
</br>
