--DQL

--Adding new Member
Insert Into members (full_name, email, height, username, password) 
Values 
	('Jack', 'Jack@example.com', 193, 'Jack12', '123456');

--Select member with specific name
SELECT member_id, full_name, email, height
FROM members
WHERE full_name = 'Jack';

--Update member email with specified name
UPDATE members
SET email = 'Jack2@example.com'
WHERE full_name = 'Jack';

--Name and email of specific staff id 
SELECT full_name, email
FROM administrator
WHERE staff_id = 2;

--Update password of a specific staff
UPDATE administrator
SET password = 'Aliquam1234'
WHERE staff_id = 1;

--Check if password was changed
SELECT password
FROM administrator
WHERE staff_id = 1;

--Update email of a specific staff
UPDATE administrator
SET email = 'Aliquam1234@icloud'
WHERE staff_id = 1;

--Insert new staff
INSERT INTO administrator (full_name, email, username, password)
VALUES ('Name', 'newstaff@example.com', 'newstaff', 'ascfdgSW#@@');

--Information about a specific member
SELECT full_name, email, height, username
FROM members
WHERE member_id = 8;

--Update email of a specific member
UPDATE members
SET email = 'new_email@example.com'
WHERE member_id = 1;

--Get email of specific member
SELECT email
FROM members
WHERE member_id = 1;

--Information of specific trainer id
SELECT full_name, email, username
FROM trainers
WHERE trainer_id = 3;

-- Retreives information about members and their personal training sessions
SELECT m.full_name, pd.exercise_routines, pd.fitness_achievements, health_statistics 
FROM members m
JOIN personal_dashboard pd ON m.member_id = pd.member_id;

--Change the exercise routines of a specific member
UPDATE personal_dashboard
SET exercise_routines = 'Jump and sprint'
WHERE member_id = 1;

--change the time and trainer within a session
UPDATE personal_training_sessions
SET time = '09:00:00', trainer_id = 2
WHERE session_id = 1;

--Retreive information about a specific personal training session
SELECT pts.session_id, pts.member_id, pts.trainer_id, t.full_name 
AS trainer_name, pts.date, pts.time, pts.status
FROM personal_training_sessions pts
JOIN trainers t ON pts.trainer_id = t.trainer_id
WHERE pts.session_id = 3;


--print member name and trainer name for that session
SELECT 
    pts.session_id,
    m.full_name AS member_name,
    t.full_name AS trainer_name,
    pts.date,
    pts.time,
    pts.status
FROM 
    personal_training_sessions pts
JOIN 
    members m ON pts.member_id = m.member_id
JOIN 
    trainers t ON pts.trainer_id = t.trainer_id
WHERE 
    pts.session_id = 1;
	

--change the trainer and time in a session
UPDATE personal_training_sessions
SET trainer_id = 4, time = '10:30:00' 
WHERE session_id = 1;

-- Retrieve event details along with member names
SELECT
    e.event_id,
    m.full_name AS member_name,
    e.group_fitness_classes,
    e.workshops,
    e.other
FROM
    events e
JOIN
    members m ON e.member_id = m.member_id;

-- Retrieve events for a specific member
SELECT
    e.event_id,
    e.group_fitness_classes,
    e.workshops,
    e.other
FROM
    events e
JOIN
    members m ON e.member_id = m.member_id
WHERE
    m.member_id = 5;


-- View data from personal_dashboard with member names
SELECT pd.id,
       pd.member_id,
       m.full_name AS member_name,
       pd.exercise_routines,
       pd.fitness_achievements,
       pd.health_statistics
FROM personal_dashboard pd
JOIN members m ON pd.member_id = m.member_id;



-- Update fitness equipment data
UPDATE fitness_equipment
SET
    name = 'OLD Treadmill',
    last_maintenace_date = '2023-05-04',
    next_maintenace_date = '2024-05-11'
WHERE equipment_id = 3;


-- Retrieve member names and payment information
SELECT
    m.full_name AS member_name,
    p.payment_id,
    p.status,
    p.payment_type,
    p.billing_id
FROM
    members m
JOIN
    payment p ON m.member_id = p.member_id;

-- Retrieve member names, payment, and billing information
SELECT
    m.full_name AS member_name,
    p.payment_id,
    p.status,
    p.payment_type,
    b.amount,
    b.due
FROM
    members m
JOIN
    payment p ON m.member_id = p.member_id
JOIN
    billings b ON m.member_id = b.member_id;
	
-- Retrieve payment and billing information for a specific member
SELECT
    m.full_name AS member_name,
    p.payment_id,
    p.status,
    p.payment_type,
    b.amount,
    b.due
FROM
    members m
JOIN
    payment p ON m.member_id = p.member_id
JOIN
    billings b ON m.member_id = b.member_id
WHERE
    m.member_id = 5;

-- Retrieve member name and loyalty points information
SELECT
    m.full_name AS member_name,
    lp.loyalty_id,
    lp.points_earned,
    lp.redeemed_points
FROM
    members m
JOIN
    loyalty_points lp ON m.member_id = lp.member_id;

-- Retrieve loyalty points information for a specific member (replace 1 with the desired member_id)
SELECT
    m.full_name AS member_name,
    lp.loyalty_id,
    lp.points_earned,
    lp.redeemed_points
FROM
    members m
JOIN
    loyalty_points lp ON m.member_id = lp.member_id
WHERE
    m.member_id = 1;


-- Retrieve data with names from the Manage table
SELECT
    m.staff_id,
    a.full_name AS administrator_name,
    l.points_earned,
    b.amount,
    p.payment_type,
    e.name AS equipment_name,
    r.room_number,
    ev.group_fitness_classes,
    act.activity_name
FROM
    manage m
JOIN
    administrator a ON m.staff_id = a.staff_id
JOIN
    loyalty_points l ON m.loyalty_id = l.loyalty_id
JOIN
    billings b ON m.billing_id = b.billing_id
JOIN
    payment p ON m.payment_id = p.payment_id
JOIN
    fitness_equipment e ON m.equipment_id = e.equipment_id
JOIN
    room_booking r ON m.booking_id = r.booking_id
JOIN
    events ev ON m.event_id = ev.event_id
JOIN
    activities act ON m.activity_id = act.activity_id;

--Names of members who are in a specified session
SELECT m.full_name AS member_name
FROM members m
JOIN personal_training_sessions pts ON m.member_id = pts.member_id
WHERE pts.session_id = 3;

--Retreives the names of each event from members
SELECT
    m.full_name AS member_name,
    e.event_id,
    e.group_fitness_classes,
    e.workshops,
    e.other
FROM
    members m
JOIN
    events e ON m.member_id = e.member_id; 
