# HealthandFitnessClubManagementSystemProject_COMP3005

COMP3005 Term Project

(Optional) Setup instructions for Application GUI:
1) Download MSTermProject3005 folder into a Java IDE, I used Intellij
2) Inside the MSTermProject3005 folder go to src/main then to java folder and managmentsystem/mstermproject3005 folder a file named Database.java will contain code to connect to a PostgreSQL the name of the database and the required user and password, can be configured to your needs.
3) Then in PostgreSQL create a database name the same as above required. Download or paste the 3 SQL source files from the SQL folder.
4) Run all the DDL's and from DML run only INSERT INTO administrator (full_name, email, username, password)...., INSERT INTO trainers (full_name, email, username, password)... and INSERT INTO members (full_name, email, height, username, password).... so the application has something to work with.
5) Now the application can be used, using the managmentsystem/mstermproject3005 folder in the file ManagementSystemApplication.java.
6) Should be able to sign in using the member data or register and then sign in. Login as a trainer or staff as well using the already inserted data.

Setup instructions for the database Postgresql:

In PostgreSQL create a database called "ManagementSystemProject" or anything else once created make sure to download the SQL files from the SQL folder or copy-paste them, use the query tool, open the files and run all DDL first then, DML, and lastly DQL can be used.

-

