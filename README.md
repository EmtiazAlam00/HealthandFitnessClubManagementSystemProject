# HealthandFitnessClubManagementSystemProject_COMP3005

Requirments
2.1
- The health and fitness Club managment System is orginaized into three diverse needs of club members, trainers and admistrative staff.
The admistrative staff has many responsibilites and operations. The database will already be stored with 3 admin staffs each having a unique username and StaffId,fullname and password. In the application the password and username is needed to sign in. The database will keep track and store, class schedule, room booking, club activites, billings, payments, and fitness equipments each containing their own attributes.
The cardnality of club administrative is 3, this is because 1 staff would not be enough to do everything and to many staff would be hard to track who did what operation. New admin Staff can still be stored in the database. 

-The database will store each club member's fullname, username, email, height, password, and height. It will also able to create a new member  and store into the database it is not shown in ER 

-The database will store trainer's fullname, password, username, email. 


2.2 Reduction to Relation Schemas



2.3 Normalization and Dependencies of Relalation Schemas
Functional dependencies and Decomposition to 2NF and 3NF:

1) Club Member 
member_id -> full_name, email, height, password, username
Already in 2NF and 3NF form because each nonprime atrribute is dependent on the primary key.

2) Personal Dashboard
id -> member_id, exercise_routines, fitness_achievements, health_statistics
member_id -> exercise_routines, fitness_achievements, health_statistics
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

3) Personal Training Sessions
session_id -> member_id, trainer_id, date, time, status
member_id -> session_id, trainer_id, date, time, status
trainer_id -> session_id, member_id, date, time, status
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

4) Club Trainer
trainer_id -> email, full_name, password, username
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

5) Trainer's Dashboard
id-> trainer_id, schedule_id, progress_notes
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

6) Club Administrative
staff_id -> full_name, email, username, password
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

7) Club Activites
activity_id -> staff_id, activity_name, feedback
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

8) Room Booking
booking_id -> staff_id, room_number, booking_date_time
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

9) Event
event_id -> staff_id, group_fitness_classes, workshops, other
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

10) Fitness Equipment
equipment_id -> staff_id, name, status,last_maintenace_date, next_maintenace_date
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

11) Payment
payment_id-> member_id, staff_id, status, payment_type, billing_id
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

12) Billings
billing_id-> staff_id, member_id, amount, due
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

13) Loyalty Points
loyalty_id-> staff_id, member_id, points_earned, redeemed_points
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 

14) Class Schedule
schedule_id->session_id, booking_id,scheduled
Already in 2NF and 3NF form because there are no partial dependencies and no transitive dependencies as each non-prime attribute is dependent on the primary key 




