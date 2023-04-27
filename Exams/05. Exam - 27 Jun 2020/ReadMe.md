Your task is to implement Washing Machine Service database based on the specs given below. Database will include information about broken machines which will be distributed to mechanics through so called "jobs". Each mechanic may have several jobs and for each job he/she can require some parts. To let the mechanic get whats needed he/she has to make order for a particular part also specifying how many of it will be needed (specifying quantity).</br>
## Section 1. DDL 
You have been given the E/R Diagram of the washing machine service:</br>
 
 ![image](https://user-images.githubusercontent.com/106471266/234938956-de249570-8611-4ac1-91ad-8d515a4fd99c.png)
 
Crate a database called WMS. You need to create 9 tables:</br>
•	Clients – contains information about the customers that use the service;</br>
•	Mechanics – contains information about employees;</br>
•	Jobs – contains information about all machines that clients submitted for repairs;</br>
•	Models – list of all washing machine models that the servie operates with;</br>
•	Orders – contains information about orders for parts;</br>
•	Parts – list of all parts the service operates with;</br>
•	OrderParts – mapping table between Orders and Parts with additional Quantity field;</br>
•	PartsNeeded – mapping table between Jobs and Parts with additional Quantity field;</br>
•	Vendors – list of vendors that supply parts to the service.</br>
Include the following fields in each table. Unless otherwise specified, all fields are required.</br>
NOTE: Please keep in mind that in case you have to work with a date, you have to use the exact same data type, described in the models tables. For example, data type Date means that you have to use Date, DateTime means that you have to use DateTime. If you don't use the correct type, the Judge system won't accept your submission as correct.</br>
NOTE: Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).</br>
</br>
You have been tasked to create the tables in the database by the following models:</br>
##### Clients</br>
Column Name	Data Type	Constraints</br>
ClientId	32-bit Integer	Primary table identificator, Identity</br>
FirstName	String up to 50 symbols, ASCII	</br>
LastName	String up to 50 symbols, ASCII	</br>
Phone	String containing 12 symbols	String length is exactly 12 chars long</br>
</br>
##### Mechanics</br>
Column Name	Data Type	Constraints</br>
MechanicId	32-bit Integer	Primary table identificator, Identity</br>
FirstName	String up to 50 symbols, ASCII	</br>
LastName	String up to 50 symbols, ASCII	</br>
Address	String up to 255 symbols, ASCII	</br>
</br>
##### Jobs</br>
Column Name	Data Type	Constraints</br>
JobId	32-bit Integer	Primary table identificator, Identity</br>
ModelId	32-bit Integer	Relationship with table Models</br>
Status	String up to 11 symbols, ASCII	Allowed values: 'Pending', 'In Progress' and 'Finished'; Default value is 'Pending'</br>
ClientId	32-bit Integer	Relationship with table Clients</br>
MechanicId	32-bit Integer	Relationship with table Mechanics; Can be NULL</br>
IssueDate	Date	</br>
FinishDate	Date	Can be NULL</br>
</br>
##### Models</br>
Column Name	Data Type	Constraints</br>
ModelId	32-bit Integer	Primary table identificator, Identity</br>
Name	String up to 50 symbols, ASCII	Unique</br>
</br>
##### Orders</br>
Column Name	Data Type	Constraints</br>
OrderId	32-bit Integer	Primary table identificator, Identity</br>
JobId	32-bit Integer	Relationship with table Jobs</br>
IssueDate	Date	Can be NULL</br>
Delivered	Boolean	Default value is False</br>
</br>
##### Parts</br>
Column Name	Data Type	Constraints</br>
PartId	32-bit Integer	Primary table identificator, Identity</br>
SerialNumber	String up to 50 symbols, ASCII	Unique</br>
Description	String up to 255 symbols, ASCII	Can be NULL</br>
Price	Monetary value up to 9999.99	Cannot be zero or negative</br>
VendorId	32-bit Integer	Relationship with table Vendors</br>
StockQty	32-bit Integer	Cannot be negative; Default value is 0</br>
</br>
##### OrderParts</br>
Column Name	Data Type	Constraints</br>
OrderId	32-bit Integer	Relationship with table Orders;</br>
Primary table identificator</br>
PartId	32-bit Integer	Relationship with table Parts;</br>
Primary table identificator</br>
Quantity	32-bit Integer	Cannot be zero or negative; Default value is 1</br>
</br>
##### PartsNeeded</br>
Column Name	Data Type	Constraints</br>
JobId	32-bit Integer	Relationship with table Jobs;</br>
Primary table identificator</br>
PartId	32-bit Integer	Relationship with table Parts;</br>
Primary table identificator</br>
Quantity	32-bit Integer	Cannot be zero or negative; Default value is 1</br>
</br>
##### Vendors</br>
Column Name	Data Type	Constraints</br>
VendorId	32-bit Integer	Primary table identificator, Identity</br>
Name	String up to 50 symbols, ASCII	Unique</br>
### 1.	Database design</br>
Submit all of your CREATE statements to Judge. Do not include database creation statements.</br>
Look for hints in the details of your submission!</br>
## Section 2. DML</br>
Before you start you have to import "Data.sql". If you have created the structure correctly the data should be successfully inserted.</br>
In this section, you have to do some data manipulations:</br>
### 2.	Insert</br>
Let's insert some sample data into the database. Write a query to add the following records into the corresponding tables. All Ids should be auto-generated. Replace names that relate to other tables with the appropriate ID (look them up manually, there is no need to perform table joins).</br>
Clients</br>
First Name	Last Name	Phone</br>
Teri	Ennaco	570-889-5187</br>
Merlyn	Lawler	201-588-7810</br>
Georgene	Montezuma	925-615-5185</br>
Jettie	Mconnell	908-802-3564</br>
Lemuel	Latzke	631-748-6479</br>
Melodie	Knipp	805-690-1682</br>
Candida	Corbley	908-275-8357</br>
</br>
Parts</br>
Serial Number	Description	Price	VendorId</br>
WP8182119	Door Boot Seal	117.86	2</br>
W10780048	Suspension Rod	42.81	1</br>
W10841140	Silicone Adhesive 	6.77	4</br>
WPY055980	High Temperature Adhesive	13.94	3</br>
### 3.	Update</br>
Assign all Pending jobs to the mechanic Ryan Harnos (look up his ID manually, there is no need to use table joins) and change their status to 'In Progress'.</br>
### 4.	Delete</br>
Cancel Order with ID 19 – delete the order from the database and all associated entries from the mapping table.</br>
## Section 3. Querying 
You need to start with a fresh dataset, so run the "Data.sql" script again. It includes a section that will delete all records and replace them with the starting set, so you don’t need to drop your database.</br>
### 5.	Mechanic Assignments
Select all mechanics with their jobs. Include job status and issue date. Order by mechanic Id, issue date, job Id (all ascending).</br>
Required columns</br>
•	Mechanic Full Name</br>
•	Job Status</br>
•	Job Issue Date</br>
##### Example</br>
Mechanic	Status	IssueDate</br>
Joni Breland	Finished	2017-01-12</br>
Joni Breland	Finished	2017-01-17</br>
Joni Breland	Finished	2017-01-24</br>
…	…	…</br>
### 6.	Current Clients
Select the names of all clients with active jobs (not Finished). Include the status of the job and how many days it’s been since it was submitted. Assume the current date is 24 April 2017. Order results by time length (descending) and by client ID (ascending).</br>
Required columns</br>
•	Client Full Name</br>
•	Days going – how many days have passed since the issuing</br>
•	Status</br>
##### Example</br>
Client	Days going	Status</br>
Gertude Witten	18	In Progress</br>
Brittni Gillaspie	14	In Progress</br>
Levi Munis	12	In Progress</br>
…	…	…</br>
### 7.	Mechanic Performance</br>
Select all mechanics and the average time they take to finish their assigned jobs. Calculate the average as an integer. Order results by mechanic ID (ascending).</br>
Required columns</br>
•	Mechanic Full Name</br>
•	Average Days – average number of days the machanic took to finish the job</br>
##### Example</br>
Mechanic	Average Days</br>
Joni Breland	9</br>
Malcolm Tromblay	10</br>
Ryan Harnos	5</br>
…	…</br>
### 8.	Available Mechanics</br>
Select all mechanics without active jobs (include mechanics which don't have any job assigned or all of their jobs are finished). Order by ID (ascending).</br>
Required columns</br>
•	Mechanic Full Name</br>
##### Example</br>
Available</br>
Joni Breland</br>
Ryan Harnos</br>
…</br>
### 9.	Past Expenses</br>
Select all finished jobs and the total cost of all parts that were ordered for them. Sort by total cost of parts ordered (descending) and by job ID (ascending).</br>
Required columns</br>
•	Job ID</br>
•	Total Parts Cost</br>
##### Example</br>
JobId	Total</br>
17	173.60</br>
12	140.50</br>
1	91.86</br>
…	…</br>
### 10.	Missing Parts</br>
List all parts that are needed for active jobs (not Finished) without sufficient quantity in stock and in pending orders (the sum of parts in stock and parts ordered is less than the required quantity). Order them by part ID (ascending).</br>
Required columns</br>
•	Part ID</br>
•	Description</br>
•	Required – number of parts required for active jobs</br>
•	In Stock – how many of the part are currently in stock</br>
•	Ordered – how many of the parts are expected to be delivered (associated with order that is not Delivered)</br>
##### Example</br>
PartId	Description	Required	In Stock	Ordered</br>
12	Shock Dampener	2	1	0</br>
14	Door Handle	1	0	0</br>
17	Lid Switch Assembly	1	0	0</br>
</br>
## Section 4. Programmability</br>
### 11.	Place Order
Your task is to create a user defined procedure (usp_PlaceOrder) which accepts job ID, part serial number and   quantity and creates an order with the specified parameters. If an order already exists for the given job that and the order is not issued (order's issue date is NULL), add the new product to it. If the part is already listed in the order, add the quantity to the existing one.</br>
When a new order is created, set it's IssueDate to NULL.</br>
Limitations:</br>
•	An order cannot be placed for a job that is Finished; error message ID 50011 "This job is not active!"</br>
•	The quantity cannot be zero or negative; error message ID 50012 "Part quantity must be more than zero!"</br>
•	The job with given ID must exist in the database; error message ID 50013 "Job not found!"</br>
•	The part with given serial number must exist in the database ID 50014 "Part not found!"</br>
If any of the requirements aren't met, rollback any changes to the database you've made and throw an exception with the appropriate message and state 1. </br>
Parameters</br>
•	JobId</br>
•	Part Serial Number</br>
•	Quantity</br>
##### Example usage</br>
Query</br>
DECLARE @err_msg AS NVARCHAR(MAX);</br>
BEGIN TRY</br>
  EXEC usp_PlaceOrder 1, 'ZeroQuantity', 0</br>
END TRY</br>
</br>
BEGIN CATCH</br>
  SET @err_msg = ERROR_MESSAGE();</br>
  SELECT @err_msg</br>
END CATCH</br>
Response</br>
Part quantity must be more than zero!</br>
### 12.	Cost Of Order
Create a user defined function (udf_GetCost) that receives a job's ID and returns the total cost of all parts that were ordered for it. Return 0 if there are no orders.</br>
Parameters</br>
•	JobId</br>
##### Example usage</br>
Query</br>
SELECT dbo.udf_GetCost(1)</br>
Id	Result</br>
1	91.86</br>
3	40.97</br>
…	…</br>
