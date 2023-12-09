--DDL
CREATE TABLE members (
	member_id serial,
	full_name varchar(255),
	email varchar(255),
	height varchar(255),
	username varchar(255),
	password varchar(255),
	primary key (member_id)
);

CREATE TABLE trainers(
    trainer_id serial,
    full_name varchar(255),
    email varchar(255),
    username varchar(255),
    password varchar(255),
    primary key (trainer_id)
);


CREATE TABLE administrator(
    staff_id serial,
    full_name varchar(255),
    email varchar(255),
    username varchar(255),
    password varchar(255),
	primary key (staff_id)
);

CREATE TABLE personal_dashboard(
	id serial,
	member_id Int,
	exercise_routines TEXT,
	fitness_achievements TEXT,
	health_statistics TEXT,
	foreign key (member_id) references members,
	primary key (id)
);

CREATE TABLE personal_training_sessions (
    session_id SERIAL PRIMARY KEY,
    member_id INT,
    trainer_id INT,
    date DATE,
    time TIME,
    status BOOLEAN,
    FOREIGN KEY (member_id) REFERENCES members,
    FOREIGN KEY (trainer_id) REFERENCES trainers
);

CREATE TABLE room_booking(
	booking_id serial,
	room_number int,
	booking_date_time DATE,
	primary key (booking_id)
);

CREATE TABLE class_schedule(
	schedule_id serial,
	session_id int,
	booking_id int,
	scheduled boolean,
	foreign key (session_id) references personal_training_sessions,
	foreign key (booking_id) references room_booking,
	primary key (schedule_id)
);

CREATE TABLE trainer_dashboard(
	id serial,
	trainer_id Int,
	schedule_id Int,
	progress_notes TEXT,
	foreign key (trainer_id) references trainers,
	foreign key (schedule_id) references class_schedule,
	primary key (id)
);


CREATE TABLE events(
	event_id serial,
	member_id int,
	group_fitness_classes text,
	workshops text,
	other text,
	primary key (event_id),
	FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE fitness_equipment(
	equipment_id serial,
	name text,
	status boolean,
	last_maintenace_date date,
	next_maintenace_date date,
	primary key (equipment_id)
);

CREATE TABLE billings(
	billing_id serial,
	member_id int,
	amount float,
	due Date,
	primary key (billing_id),
	foreign key (member_id) references members
);

CREATE TABLE payment(
	payment_id serial,
	member_id int,
	billing_id int,
	status boolean,
	payment_type text,
	primary key (payment_id),
	foreign key (member_id) references members,
	foreign key (billing_id) references billings
);


CREATE TABLE loyalty_points(
	loyalty_id serial,
	member_id int,
	points_earned int,
	redeemed_points int,
	primary key (loyalty_id),
	foreign key (member_id) references members
);

CREATE TABLE activities(
	activity_id int,
	activity_name text,
	feedback text,
	primary key (activity_id)
);

CREATE TABLE manage(
	staff_id int, 
	loyalty_id int,
	billing_id int,
	payment_id int,
	equipment_id int,
	booking_id int,
	event_id int,
	activity_id int,
	foreign key (staff_id) references administrator,
	foreign key (loyalty_id) references loyalty_points,
	foreign key (billing_id) references billings,
	foreign key (payment_id) references payment,
	foreign key (equipment_id) references fitness_equipment,
	foreign key (booking_id) references room_booking,
	foreign key (event_id) references events,
	foreign key (activity_id) references activities
);
