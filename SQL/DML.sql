--DML
ALTER TABLE personal_dashboard DROP CONSTRAINT IF EXISTS personal_dashboard_member_id_fkey;
ALTER TABLE personal_training_sessions DROP CONSTRAINT IF EXISTS personal_training_sessions_member_id_fkey;
ALTER TABLE personal_training_sessions DROP CONSTRAINT IF EXISTS personal_training_sessions_trainer_id_fkey;
ALTER TABLE class_schedule DROP CONSTRAINT IF EXISTS class_schedule_session_id_fkey;
ALTER TABLE class_schedule DROP CONSTRAINT IF EXISTS class_schedule_booking_id_fkey;
ALTER TABLE trainer_dashboard DROP CONSTRAINT IF EXISTS trainer_dashboard_trainer_id_fkey;
ALTER TABLE trainer_dashboard DROP CONSTRAINT IF EXISTS trainer_dashboard_schedule_id_fkey;
ALTER TABLE events DROP CONSTRAINT IF EXISTS events_member_id_fkey;
ALTER TABLE billings DROP CONSTRAINT IF EXISTS billings_member_id_fkey;
ALTER TABLE payment DROP CONSTRAINT IF EXISTS payment_member_id_fkey;
ALTER TABLE payment DROP CONSTRAINT IF EXISTS payment_billing_id_fkey;
ALTER TABLE loyalty_points DROP CONSTRAINT IF EXISTS loyalty_points_member_id_fkey;
ALTER TABLE manage DROP CONSTRAINT IF EXISTS manage_staff_id_fkey;
ALTER TABLE manage DROP CONSTRAINT IF EXISTS manage_loyalty_id_fkey;
ALTER TABLE manage DROP CONSTRAINT IF EXISTS manage_billing_id_fkey;
ALTER TABLE manage DROP CONSTRAINT IF EXISTS manage_payment_id_fkey;
ALTER TABLE manage DROP CONSTRAINT IF EXISTS manage_equipment_id_fkey;
ALTER TABLE manage DROP CONSTRAINT IF EXISTS manage_booking_id_fkey;
ALTER TABLE manage DROP CONSTRAINT IF EXISTS manage_event_id_fkey;
ALTER TABLE manage DROP CONSTRAINT IF EXISTS manage_activity_id_fkey;



DROP TABLE IF EXISTS personal_dashboard;
DROP TABLE IF EXISTS personal_training_sessions;
DROP TABLE IF EXISTS class_schedule;
DROP TABLE IF EXISTS trainer_dashboard;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS administrator;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS fitness_equipment;
DROP TABLE IF EXISTS room_booking;
DROP TABLE IF EXISTS billings;
DROP TABLE IF EXISTS payment;
DROP TABLE IF EXISTS loyalty_points;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS manage;


select * from members
select * from trainers
select * from administrator
select * from personal_dashboard
select * from personal_training_sessions
select * from trainer_dashboard
select * from class_schedule
select * from room_booking
select * from events
select * from fitness_equipment
select * from payment
select * from billings
select * from loyalty_points
select * from activities
select * from manage


-- Insert data into administrator table
INSERT INTO administrator (full_name, email, username, password) 
VALUES
  ('Wyatt Warren','condimentum.eget@google.ca','Isaac Chavez','Aliquam'),
  ('Akeem Newton','in.consectetuer.ipsum@aol.com','Jonas Velazquez','commodo'),
  ('Colin Carroll','consectetuer.adipiscing@outlook.org','Bradley Mccarty','Suspendisse');

--Insert data into trainers table
INSERT INTO trainers (full_name, email, username, password) 
VALUES 
	('Kerry Wyman', 'Wiley.Daugherty45@example.net', 'Trisha_Mayert-Dicki88', 'eyKsO9Ncz7dSaN0'),  
	('Phyllis Smith', 'Ellis.DAmore@example.com', 'Clyde_Hackett24', 'znaAiNAXKCMxG5E'),  
	('Dawn Schowalter', 'Myrl_Hintz33@example.net', 'Creola88', 'Ed0LKyPaHYZ6WfR'),  
	('Norma Hahn', 'Jeramie.Tillman81@example.com', 'Kelsi_Aufderhar', 'AZhzDH1ptyXiG1M'),  
	('Mr. Israel Gusikowski', 'Micah73@example.net', 'Carol2', '3TiH4UI0Dr0KhJd');  

--Insert data into members table
INSERT INTO members (full_name, email, height, username, password) 
VALUES 
	('Clark Veum', 'Herminio_Ritchie36@example.com', 153, 'Archibald.Berge37', 'c7cJHus_pnYTcEB'),  
	('Dr. Ismael Breitenberg', 'Carissa.Boyer3@example.com', 171, 'Dusty38', 'SeLvcqM6XDNwXAv'),
 	('Sidney Nolan', 'Brannon28@example.org', 203, 'Giovani_Jenkins95', 'wIOlPacMH0_0AFU'), 
 	('John Johnston', 'Brandon.Herman24@example.net', 184, 'Freddie5', '68kahclV0sH1bHq'),  
 	('Gustavo Johnson', 'Jayme.Bernhard55@example.org', 255, 'Isaiah.Tremblay', 'STPIf_YB83lIKlT'),  
 	('Ben Carroll', 'Cecilia70@example.com', 169, 'Whitney_Pagac', 'EcS7I6JHdj9iUic'),  
	('Alton Rutherford', 'Mercedes.Erdman15@example.net', 157, 'Felicita.Lakin41', 'DZZr2cJGIJtC33g'),  
 	('Shane Stroman', 'Tess65@example.org', 140, 'Ariane96', 'mwzzKB_47_19aM8'),
	('John Doe', 'john.doe@example.com', '175', 'john_doe', 'password123'),
    ('Jane Smith', 'jane.smith@example.com', '160', 'jane_smith', 'securepass'),
    ('Robert Johnson', 'robert.johnson@example.com', '185', 'robert_j', 'pass123'),
    ('Alice Williams', 'alice.williams@example.com', '168', 'alice_w', 'strongpass'),
    ('Michael Brown', 'michael.brown@example.com', '180', 'michael_brown', 'password567');

--Insert data into personal_training_sessions table
INSERT INTO personal_training_sessions (member_id, trainer_id, date, time, status)
VALUES
	(1, 1, '2023-12-09', '10:00:00', true),
    (3, 2, '2023-12-10', '14:00:00', false),
    (4, 4, '2023-12-11', '09:30:00', true),
    (5, 2, '2023-12-12', '16:45:00', true),
    (6, 5, '2023-12-13', '11:15:00', false),
    (7, 3, '2023-12-14', '13:30:00', true),
    (8, 4, '2023-12-15', '15:00:00', false),
    (9, 5, '2023-12-16', '08:00:00', true),
    (10, 1, '2023-12-17', '12:45:00', true),
    (11, 2, '2023-12-18', '17:30:00', false),
    (12, 4, '2023-12-19', '10:30:00', true),
    (13, 5, '2023-12-20', '14:15:00', true);
	
--Insert data into personal_dashboard table
INSERT INTO personal_dashboard (member_id, exercise_routines, fitness_achievements, health_statistics)
VALUES
    (1, 'Morning jog and stretching', 'Ran 5 miles in 30 minutes', 'Normal blood pressure'),
    (2, 'Weight lifting - upper body', 'Reached a new bench press personal record', 'Improved cholesterol levels'),
    (3, 'Yoga and meditation', 'Completed a 60-minute yoga session', 'Reduced stress levels'),
    (4, 'Cycling and HIIT workout', 'Burned 800 calories in 45 minutes', 'Increased cardiovascular fitness'),
	(5, 'Swimming and core exercises', 'Swam 1 mile in 45 minutes', 'Maintained healthy heart rate'),
    (6, 'Running and bodyweight exercises', 'Completed a 10K run', 'Improved lung capacity'),
    (7, 'Pilates and strength training', 'Increased flexibility and muscle tone', 'Stable blood pressure'),
    (8, 'CrossFit WOD', 'Achieved a personal best in CrossFit workout', 'Optimal metabolic health'),
	(9, 'High-Intensity Interval Training (HIIT)', 'Completed 4 HIIT sessions this week', 'Maintaining healthy BMI'),
    (10, 'Circuit Training', 'Improved strength and endurance', 'Stable blood pressure'),
    (11, 'Zumba Dance Workout', 'Burned 600 calories in a session', 'Enhanced cardiovascular health'),
    (12, 'Martial Arts Training', 'Advanced to a new belt level', 'Maintaining optimal body weight'),
    (13, 'Barre Fitness Class', 'Increased flexibility and core strength', 'Maintaining good cholesterol levels');
	
-- Insert data into room_booking table
INSERT INTO room_booking (room_number, booking_date_time)
VALUES
    (101, '2023-12-10 09:00:00'),
    (102, '2023-12-11 14:30:00'),
    (103, '2023-12-12 18:45:00'),
    (104, '2023-12-13 11:15:00'),
    (105, '2023-12-14 16:00:00'),
    (106, '2023-12-15 10:30:00'),
    (107, '2023-12-16 13:45:00'),
    (108, '2023-12-17 19:30:00');
	
-- Insert data into class_schedule table
INSERT INTO class_schedule (session_id, booking_id, scheduled)
VALUES
    (1, 1, true),
    (2, 2, true),
    (3, 3, false),
    (4, 4, true),
    (5, 5, false);
	
-- Insert data into events table with member_id
INSERT INTO events (member_id, group_fitness_classes, workshops, other)
VALUES
    (1, 'Zumba Party', 'Introduction to Yoga', 'Team Building Workshop'),
    (2, 'High-Intensity Interval Training', 'Nutrition Seminar', 'Networking Event'),
    (3, 'Cycling Marathon', 'Mindfulness Meditation', 'Guest Speaker Series'),
    (4, 'Pilates Workshop', 'Functional Training', 'Health and Wellness Expo'),
    (5, 'Dance Fitness Fusion', 'Stress Management Workshop', 'Community Outreach Program'),
	(6, 'CrossFit Challenge', 'Yoga for Beginners', 'Career Development Seminar'),
    (7, 'Bootcamp Workout', 'Mental Health Awareness Workshop', 'Fitness Technology Demo'),
    (8, 'Running Club Meetup', 'Nutrition and Cooking Class', 'Mind-Body Connection Workshop'),
    (9, 'Strength Training Clinic', 'Self-Care and Relaxation Session', 'Educational Webinar'),
    (10, 'Aqua Aerobics', 'Posture Improvement Workshop', 'Social Mixer'),
    (11, 'Boxing Training Session', 'Healthy Eating Workshop', 'Team Building Activity'),
    (12, 'Outdoor Adventure Day', 'Flexibility and Stretching Class', 'Motivational Speaker Event'),
    (13, 'Functional Fitness Workshop', 'Wellness Fair', 'Networking Mixer');

-- Insert sample data into fitness_equipment table
INSERT INTO fitness_equipment (name, status, last_maintenace_date, next_maintenace_date)
VALUES
    ('Treadmill', true, '2022-11-01', '2023-11-01'),
    ('Stationary Bike', false, '2022-12-15', '2023-12-15'),
    ('Elliptical Trainer', true, '2023-01-10', '2024-01-10'),
    ('Dumbbells Set', true, '2023-02-20', '2024-02-20'),
    ('Rowing Machine', false, '2023-03-05', '2024-03-05'),
	('Leg Press Machine', true, '2023-04-15', '2024-04-15'),
    ('Chest Press Machine', false, '2023-05-01', '2024-05-01'),
    ('Kettlebell Set', true, '2023-06-10', '2024-06-10'),
    ('Resistance Bands', true, '2023-07-20', '2024-07-20'),
    ('Battle Ropes', false, '2023-08-05', '2024-08-05');
	
-- Insert sample data into billings table
INSERT INTO billings (member_id, amount, due)
VALUES
    (1, 50.00, '2023-12-15'),
    (2, 75.00, '2023-12-20'),
    (3, 60.00, '2023-12-18'),
    (4, 90.00, '2023-12-22'),
    (5, 55.00, '2023-12-17'),
	(6, 65.00, '2023-12-21'),
    (7, 80.00, '2023-12-19'),
    (8, 70.00, '2023-12-23'),
    (9, 100.00, '2023-12-25'),
    (10, 45.00, '2023-12-16'),
    (11, 55.00, '2023-12-27'),
    (12, 85.00, '2023-12-26'),
    (13, 95.00, '2023-12-28');
	
-- Insert sample data into payment table
INSERT INTO payment (member_id, status, payment_type, billing_id)
VALUES
    (1, true, 'Credit Card', 1),
    (2, true, 'PayPal', 2),
    (3, false, 'Debit Card', 3),
    (4, true, 'Credit Card', 4),
    (5, false, 'Bank Transfer', 5),
	(6, true, 'Google Pay', 6),
    (7, false, 'Apple Pay', 7),
    (8, true, 'Credit Card', 8),
    (9, false, 'Debit Card', 9),
    (10, true, 'PayPal', 10),
	(11, true, 'Credit Card', 11),
    (12, false, 'Bank Transfer', 12),
    (13, true, 'Google Pay', 13);
	
-- Insert data into loyalty_points table
INSERT INTO loyalty_points (member_id, points_earned, redeemed_points)
VALUES
    (1, 50, 10),
    (2, 30, 5),
    (3, 70, 20),
    (4, 40, 15),
    (5, 60, 25),
	  (6, 50, 10),
    (7, 30, 5),
    (8, 70, 20),
    (9, 40, 15),
    (10, 60, 25),
    (11, 80, 30),
    (12, 45, 12),
    (13, 55, 18);
	
	
--Insert data into trainer_dashboard
INSERT INTO trainer_dashboard (trainer_id, schedule_id, progress_notes)
VALUES
    (1, 2, 'Good progress, keep it up!'),
    (2, 2, 'Focus on core exercises for the next session'),
    (3, 3, 'Impressive improvement in strength'),
    (4, 4, 'Incorporate more cardio in the routine'),
    (5, 5, 'Excellent form during weightlifting');

	
-- Insert data into Club Activities table
INSERT INTO activities (activity_id, activity_name, feedback)
VALUES
    (1, 'Yoga Class', 'Great session!'),
    (2, 'Running Club', 'Enjoyed the run with the group'),
    (3, 'Weightlifting Workshop', 'Learned new techniques'),
    (4, 'Dance Fitness Class', 'Fun and energetic workout'),
    (5, 'Meditation Session', 'Relaxing and calming experience');

-- Insert data into Manage table
INSERT INTO manage (staff_id, loyalty_id, billing_id, payment_id, equipment_id, booking_id, event_id, activity_id)
VALUES
    (1, 1, 1, 1, 1, 1, 1, 1),
	(2, 2, 2, 2, 2, 2, 2, 2),
	(3, 3, 5, 5, 7, 3, 5, 1);
