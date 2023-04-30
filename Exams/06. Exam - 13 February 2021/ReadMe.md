You've most likely heard of Github. Well … There is a side project called "Bitbucket" which is the back-up data of Github. You are one of the few selected to work in the multi-billion company, as one of the back-up database managers. You'll need to prove your skills by designing and manipulating data in the Instagraph prototype.</br>
## Section 1. DDL (30 pts)
You are given an E/R Diagram of the Trip Service:</br>
 
 ![image](https://user-images.githubusercontent.com/106471266/235342867-45175c49-5b9e-492c-b094-71dfd82fbfad.png)
 
Crеate a database called Bitbucket. You need to create 6 tables:</br>
•	Users – contains information about the users</br>
•	Repositories – contains information about the repositories</br>
•	RepositoriesContributors – a many to many mapping table between the repositories and the users</br>
•	Issues – contains information about the issues</br>
o	Each issue has a repository</br>
o	Each issue has an assignee (user)</br>
•	Commits – contains information about the commits</br>
o	Each commit MAY have an issue</br>
o	Each commit has a repository</br>
o	Each commit has a contributor (user)</br>
•	Files – contains information about the files.</br>
o	Each file MAY have a parent (file)</br>
o	Each file has a commit</br>
NOTE: Keep in mind that Judge doesn't accept "ALTER" statement and square brackets naming (when the names are not keywords).</br>
NOTE: Use VARCHAR for strings, not NVARCHAR.</br>
</br>
You have been tasked to create the tables in the database by the following models:</br>
##### Users
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Username	String up to 30 symbols	NULL is not allowed</br>
Password	String up to 30 symbols	NULL is not allowed</br>
Email	String up to 50 symbols	NULL is not allowed</br>
</br>
##### Repositories
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 50 symbols	NULL is not allowed</br>
</br>
##### RepositoriesContributors
Column Name	Data Type	Constraints</br>
RepositoryId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Repositories</br>
ContributorId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Users</br>
</br>
##### Issues
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Title	String up to 255 symbols	NULL is not allowed</br>
IssueStatus	String with maximum 6 symbols	NULL is not allowed</br>
RepositoryId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Repositories</br>
AssigneeId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Users</br>
</br>
##### Commits
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Message	String up to 255 symbols	NULL is not allowed</br>
IssueId	Integer from 0 to 2,147,483,647	Relationship with table Issues</br>
RepositoryId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Repositories</br>
ContributorId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Users</br>
</br>
##### Files
Column Name	Data Type	Constraints</br>
Id	Integer from 0 to 2,147,483,647	Unique table identificator, Identity</br>
Name	String up to 100 symbols	NULL is not allowed</br>
Size	Decimal number with two-digit precision	NULL is not allowed</br>
ParentId	Integer from 0 to 2,147,483,647	Relationship with table Files</br>
CommitId	Integer from 0 to 2,147,483,647	NULL is not allowed, Relationship with table Commits</br>
### 1.	Database Design
Submit all of yours CREATE statements to Judge (only creation of tables).</br>
## Section 2. DML (10 pts)
Before you start, you must import "DataSet-Bitbucket.sql". If you have created the structure correctly, the data should be successfully inserted without any errors.</br>
In this section, you have to do some data manipulations:</br>
### 2.	Insert
Insert some sample data into the database. Write a query to add the following records into the corresponding tables. All Ids should be auto-generated.</br>
##### Files
Name	Size	ParentId	CommitId</br>
Trade.idk	2598.0	1	1</br>
menu.net	9238.31	2	2</br>
Administrate.soshy	1246.93	3	3</br>
Controller.php	7353.15	4	4</br>
Find.java	9957.86	5	5</br>
Controller.json	14034.87	3	6</br>
Operate.xix	7662.92	7	7</br>
</br>
##### Issues
Title	IssueStatus	RepositoryId	AssigneeId</br>
Critical Problem with HomeController.cs file	open	1	4</br>
Typo fix in Judge.html	open	4	3</br>
Implement documentation for UsersService.cs	closed	8	2</br>
Unreachable code in Index.cs	open	9	8</br>
### 3.	Update
Make issue status 'closed' where Assignee Id is 6.</br>
### 4.	Delete
Delete repository "Softuni-Teamwork" in repository contributors and issues.</br>
## Section 3. Querying (40 pts)
You need to start with a fresh dataset, so recreate your DB and import the sample data again ("DataSet-Bitbucket.sql").</br>
### 5.	Commits</br>
Select all commits from the database. Order them by id (ascending), message (ascending), repository id (ascending) and contributor id (ascending).</br>
##### Example
Id	Message	RepositoryId	ContributorId</br>
1	Deleted deprecated functionality from index.cpp	17	8</br>
2	Created README.MD	14	8</br>
3	Initial Commit	24	1</br>
4	Implemented config.json functionality	10	12</br>
…	…	…	…</br>
### 6.	Front-end
Select all of the files, which have size, greater than 1000, and a name containing "html". Order them by size (descending), id (ascending) and by file name (ascending).</br>
##### Example
Id	Name	Size</br>
49	compile.html	27402.59</br>
17	Login.html	2863.23</br>
…	…	..</br>
### 7.	Issue Assignment
Select all of the issues, and the users that are assigned to them, so that they end up in the following format: {username} : {issueTitle}. Order them by issue id (descending) and issue assignee (ascending).</br>
##### Example
Id	IssueAssignee</br>
75	TheDivineBel : Critical bug in Controller.php ruins application when executed</br>
74	DarkImmagidsa : Compilation failed while trying to execute init.xml</br>
73	ScoreAntigarein : Loose Cohesion and Strong Coupling in Beat.html</br>
…	…</br>
### 8.	Single Files
Select all of the files, which are NOT a parent to any other file. Select their size of the file and add "KB" to the end of it. Order them file id (ascending), file name (ascending) and file size (descending).</br>
##### Example
Id	Name	Size</br>
6	Controller.json	14034.87KB</br>
12	Model.MD	4753.67KB</br>
17	Login.html	2863.23KB</br>
…	…	…</br>
### 9.	Commits in Repositories
Select the top 5 repositories in terms of count of commits. Order them by commits count (descending), repository id (ascending) then by repository name (ascending).</br>
##### Example
Id	Name	Commits</br>
1	WorkWork	20</br>
7	DundaApp	16</br>
10	SortedTupleJS	12</br>
…	…	…</br>
### 10.	Average Size
Select all users which have commits. Select their username and average size of the file, which were uploaded by them. Order the results by average upload size (descending) and by username (ascending).</br>
##### Example
Username	Size</br>
RoundInspecindi	19506.877500</br>
BlaAntigadsa	18397.434000</br>
…	…</br>
## Section 4. Programmability (20 pts)
### 11.	All User Commits
Create a user defined function, named udf_AllUserCommits(@username) that receives a username.</br>
The function must return count of all commits for the user.</br>
##### Example
Query</br>
SELECT dbo.udf_AllUserCommits('UnderSinduxrein')</br>
Output</br>
6</br>
### 12.	 Search for Files
Create a user defined stored procedure, named usp_SearchForFiles(@fileExtension), that receives files extensions.</br>
The procedure must print the id, name and size of the file. Add "KB" in the end of the size. Order them by id (ascending), file name (ascending) and file size (descending).</br>
##### Example
Query</br>
EXEC usp_SearchForFiles 'txt'</br>
Output</br>
Id	Name	Size</br>
28	Jason.txt	10317.54KB</br>
31	file.txt	5514.02KB</br>
43	init.txt	16089.79KB</br>
