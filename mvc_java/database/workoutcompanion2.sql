BEGIN TRANSACTION; 

DROP TABLE IF EXISTS equipment, login, profile, access, classes, workout_log; 

CREATE TABLE equipment (
equipment_id serial, 
equipment_name varchar, 
equipment_description varchar, 
equipment_video varchar, 
muscle_group varchar
);

CREATE TABLE login (
login_id serial, 
username varchar,
password varchar,
salt varchar,
profile_id int 
);

CREATE TABLE profile (
profile_id serial, 
name varchar, 
email varchar, 
photo varchar, 
workout_goals varchar,
workout_profile varchar,
role_id int
);

CREATE TABLE access (
role_id int, 
role_name varchar
);

CREATE TABLE classes (
class_id int,
class_name varchar,
class_start_time time,
class_end_time time,
class_date date
);

CREATE TABLE workout_log (
workout_log_id serial,
workout_log_date date,
workout_log_start time,
workout_log_end time,
workout_log_username varchar, 
workout_log_equipment_id varchar, 
workout_log_reps int, 
workout_log_sets int,
workout_log_weight int
); 

INSERT INTO equipment (equipment_name, equipment_description, equipment_video, muscle_group) 
VALUES ('Seated Bicep Curls', 'The seated bicep curl exercise uses the machine and a seated position to isolate the bicep muscles.', 'https://www.youtube.com/watch?v=M_uPvGrMx_o', 'Bicep'),
('Standing Calf Raises', 'Calf raises are a method of exercising the gastrocnemius, tibialis posterior and soleus muscles of the lower leg.', 'https://www.youtube.com/watch?v=YMmgqO8Jo-k', 'Legs'),
('Seated Chest Press', 'The seated chest press machine is an upright version of the standard lying bench press machine. The chest press helps build the pectoral muscles as well as the biceps, deltoids, and latissimus dorsi muscles.', 'https://www.youtube.com/watch?v=xUm0BiZCWlQ', 'Chest'),
('Tricep Extension', ' The triceps extension is an exercise you can do with a weight machine to work the muscle in the back of the upper arm. As the name implies, the triceps extension targets the triceps muscle, located here in the back of the upper arm.', 'https://www.youtube.com/watch?v=cBt1X8fwKKc', 'Tricep'), 
('Lat Pull Down', 'The pulldown exercise is a strength training exercise designed to develop the latissimus dorsi muscle. It performs the functions of downward rotation and depression of the scapulae combined with adduction and extension of the shoulder joint.', 'https://www.youtube.com/watch?v=CAwf7n6Luuc', 'Back'),
('Leg Press', 'The leg press is a weight training exercise in which the individual pushes a weight or resistance away from them using their legs.', 'https://www.youtube.com/watch?v=IZxyjW7MPJQ', 'Legs'), 
('Ab Crunch', 'You use the ab trainer to primarily train your front abdominal muscles, focusing on the rectus abdominis muscle. The front abdominal muscles are responsible for bending the trunk and are part of the muscular core of your body.', 'https://www.youtube.com/watch?v=_O1xunCfYEM', 'Abs'),
('Assisted Pull-Ups', 'Use an assisted pull-up machine or securely attach a heavy-duty band to a pull-up station, securing it around just one knee. The tension should be taut enough to pull that lower leg up. Grasp the bar with an overhand grip just outside shoulder width and hang at full arm extension.', 'https://www.youtube.com/watch?v=YLU74ayuejU', 'Back'),
('Seated Row Machine', 'The seated row is an exercise you can do with a weight machine to work the muscles in your upper back. Specifically, the seated row targets the muscles in your upper back and also the latissimus dorsi — a muscle on the outer side of the chest wall. ... You will feel tension in your back and arms.', 'https://www.youtube.com/watch?v=8MKGArS7w7c', 'Back'), 
('Shoulder Press', 'The machine shoulder press is a variation of the seated barbell shoulder press used to strengthen the muscles of the shoulders.', 'https://www.youtube.com/watch?v=Wqq43dKW1TU', 'Shoulder'); 

INSERT INTO access (role_id, role_name)
VALUES (1, 'Administrator'), (2, 'Employee'), (3 , 'Member');

INSERT INTO login (username, password, salt, profile_id)
VALUES ('bscherf', 'brentscherf','EGTkpV_9mHjG_fyeo-Pt', 1), 
('lfitriana', 'lailafitriana', 'ol-WGAc8RRPaC18ingQb', 2), 
('ebaillargeon', 'ericbaillargeon','EEUneAD6leQiD8EdZjzy', 3), 
('aozvath', 'andrewpzvath', '2GwKVPXJl3MWkRkWEZDz', 4), 
('jsmith', 'johnsmith', 'vB7gjSGsMGTJcO45zy1R', 5), 
('bbrown', 'brianbrown', 'Qv-BCHTVzeAQ3Hf6G8zG', 6),
('awebster', 'allisonwebster', 'wY3hP75zoC5bakKdQyrS', 7), 
('cweathers', 'carlweathers', 'XLCJxCnr8WhTPYUSwJR8', 8), 
('tburton', 'timburton', 'kzYGlhTBq8ohm9it_LNC', 9), 
('fjohnson', 'fredjohnson', 'KeudOoYBYXjxzE96gbS7', 10), 
('pschultz', 'paulaschultz', 'xdAOa-Innh2_wcQi4hym', 11);

INSERT INTO profile (name, email, photo, workout_goals, workout_profile, role_id)
VALUES ('Brent Scherf', 'bscherf@wc.com', 'null', 'I would love to do a push up!', 'Crossfit', 1), 
('Laila Fitriana', 'lfitriana@wc.com', 'null', 'Working everyday to run that mile :)', 'Running', 1), 
('Eric Baillergeon', 'ebaillergeon@wc.com', 'null', 'I want 22 inch biceps.', 'Lifting ', 1), 
('Andrew Ozvath', 'aozvath@wc.com', 'null', 'Very close to a 300lb squat!', 'Lifting', 1), 
('John Smith', 'jsmith@wc.com', 'null', 'Training for my next half  marathon.', 'Running', 2), 
('Brian Brown', 'bbrown@wc.com', 'null', 'Next goal is deadlifting 200lbs.', 'Lifting', 2), 
('Allison Webster', 'aliwebster@gmail.com', 'null', 'Training for football season, GO BUCKS!', 'Cardio', 3), 
('Carl Weathers', 'carl.weathers@yahoo.com','null', 'Working off my dad bod...', 'Lifting', 3), 
('Tim Burton', 'timburton@aol.com', 'null', 'Training for my next race.', 'Biking', 3),
('Fred Johnosn', 'fredj@hotmail.com', 'null', 'My wife is making me come here...', 'Crossfit', 3), 
('Paula Schultz', 'paual_schultz@gmail.com', 'null', 'Getting ready for my wedding in December!', 'Cardio', 3);

INSERT INTO classes (class_id, class_name, class_start_time, class_end_time, class_date)
VALUES (1, 'Pilates', '08:00:00', '09:00:00', '2019-08-15'),
(2, 'Yoga', '09:00:00', '10:00:00', '2019-08-15'),
(3, 'Body Sculpting', '10:00:00','11:00:00','2019-08-15'),
(4, 'Crossfit','11:00:00','12:00:00','2019-08-15'),
(5, 'Powerlifting', '12:00:00', '1:00:00', '2019-08-15'),
(6, 'Pilates', '08:00:00', '09:00:00', '2019-08-16'),
(7, 'Yoga', '09:00:00', '10:00:00', '2019-08-16'),
(8, 'Body Sculpting', '10:00:00','11:00:00','2019-08-16'),
(9, 'Crossfit','11:00:00','12:00:00','2019-08-16'),
(10, 'Powerlifting', '12:00:00', '1:00:00', '2019-08-16'),
(11, 'Pilates', '08:00:00', '09:00:00', '2019-08-17'),
(12, 'Yoga', '09:00:00', '10:00:00', '2019-08-17'),
(13, 'Body Sculpting', '10:00:00','11:00:00','2019-08-17'),
(14, 'Crossfit','11:00:00','12:00:00','2019-08-17'),
(15, 'Powerlifting', '12:00:00', '1:00:00', '2019-08-17'),
(16, 'Pilates', '08:00:00', '09:00:00', '2019-08-18'),
(17, 'Yoga', '09:00:00', '10:00:00', '2019-08-18'),
(18, 'Body Sculpting', '10:00:00','11:00:00','2019-08-18'),
(19, 'Crossfit','11:00:00','12:00:00','2019-08-18'),
(20, 'Powerlifting', '12:00:00', '1:00:00', '2019-08-18'),
(21, 'Pilates', '08:00:00', '09:00:00', '2019-08-19'),
(22, 'Yoga', '09:00:00', '10:00:00', '2019-08-19'),
(23, 'Body Sculpting', '10:00:00','11:00:00','2019-08-19'),
(24, 'Crossfit','11:00:00','12:00:00','2019-08-19'),
(25, 'Powerlifting', '12:00:00', '1:00:00', '2019-08-19');



INSERT INTO workout_log (workout_log_date, workout_log_start, workout_log_end, workout_log_username, workout_log_equipment_id, workout_log_reps, workout_log_sets, workout_log_weight)
VALUES ('2019-08-05', '01:00', '02:00', 'awebster', 1 , 10, 3, 25),
('2019-08-05', '01:00', '02:00', 'awebster', 3, 10, 3, 45),
('2019-08-05', '01:00', '02:00', 'awebster', 5, 10, 3, 50),
('2019-08-05', '01:00', '02:00', 'awebster', 7, 10, 5, 25),
('2019-08-05', '01:00', '02:00', 'awebster', 3 , 10, 3, 45),
('2019-08-07', '10:00', '10:45', 'awebster', 2 , 20, 3, 60),
('2019-08-07', '10:00', '10:45', 'awebster', 4 , 10, 3, 35),
('2019-08-07', '10:00', '10:45', 'awebster', 6 , 15, 4, 50),
('2019-08-09', '09:00', '09:45', 'awebster', 7, 20, 3, 60),
('2019-08-09', '09:00', '09:45', 'awebster', 9 , 20, 3, 100),
('2019-08-09', '09:00', '09:45', 'awebster', 10 , 15, 3, 60),
('2019-08-12', '01:00', '02:00', 'awebster', 1 , 10, 3, 25),
('2019-08-12', '01:00', '02:00', 'awebster', 3, 10, 3, 45),
('2019-08-12', '01:00', '02:00', 'awebster', 5, 10, 3, 50),
('2019-08-12', '01:00', '02:00', 'awebster', 7, 10, 5, 25),
('2019-08-12', '01:00', '02:00', 'awebster', 3 , 10, 3, 45),
('2019-08-14', '10:00', '10:45', 'awebster', 2 , 20, 3, 60),
('2019-08-14', '10:00', '10:45', 'awebster', 4 , 10, 3, 35),
('2019-08-14', '10:00', '10:45', 'awebster', 6 , 15, 4, 50),
('2019-08-16', '09:00', '09:45', 'awebster', 7, 20, 3, 60),
('2019-08-16', '09:00', '09:45', 'awebster', 9 , 20, 3, 100),
('2019-08-16', '09:00', '09:45', 'awebster', 10 , 15, 3, 60),
('2019-08-05', '01:00', '02:15', 'cweathers', 1 , 20, 3, 50),
('2019-08-05', '01:00', '02:15', 'cweathers', 3, 20, 3, 90),
('2019-08-05', '01:00', '02:15', 'cweathers', 5, 20, 3, 100),
('2019-08-05', '01:00', '02:15', 'cweathers', 7, 20, 5, 50),
('2019-08-05', '01:00', '02:15', 'cweathers', 3 , 20, 3, 90),
('2019-08-07', '10:00', '10:50', 'cweathers', 2 , 20, 3, 120),
('2019-08-07', '10:00', '10:50', 'cweathers', 4 , 20, 3, 70),
('2019-08-07', '10:00', '10:50', 'cweathers', 6 , 20, 4, 100),
('2019-08-09', '09:00', '09:50', 'cweathers', 7, 20, 3, 120),
('2019-08-09', '09:00', '09:50', 'cweathers', 9 , 20, 3, 20),
('2019-08-09', '09:00', '09:50', 'cweathers', 10 , 20, 3, 120),
('2019-08-12', '01:00', '02:05', 'cweathers', 1 , 20, 3, 50),
('2019-08-12', '01:00', '02:05', 'cweathers', 3, 20, 3, 90),
('2019-08-12', '01:00', '02:05', 'cweathers', 5, 20, 3, 100),
('2019-08-12', '01:00', '02:05', 'cweathers', 7, 20, 5, 50),
('2019-08-12', '01:00', '02:05', 'cweathers', 3 , 20, 3, 90),
('2019-08-14', '10:00', '10:45', 'cweathers', 2 , 20, 3, 120),
('2019-08-14', '10:00', '10:45', 'cweathers', 4 , 20, 3, 70),
('2019-08-14', '10:00', '10:45', 'cweathers', 6 , 20, 4, 100),
('2019-08-16', '09:00', '09:50', 'cweathers', 7, 20, 3, 120),
('2019-08-16', '09:00', '09:50', 'cweathers', 9 , 20, 3, 20),
('2019-08-16', '09:00', '09:50', 'cweathers', 10 , 20, 3, 120),
('2019-08-05', '01:00', '02:10', 'tburton', 1 , 15, 4, 40),
('2019-08-05', '01:00', '02:10', 'tburton', 3, 15, 4, 80),
('2019-08-05', '01:00', '02:10', 'tburton', 5, 15, 4, 90),
('2019-08-05', '01:00', '02:10', 'tburton', 7, 15, 4, 40),
('2019-08-05', '01:00', '02:10', 'tburton', 3 , 15, 4, 80),
('2019-08-07', '10:00', '10:40', 'tburton', 2 , 15, 4, 110),
('2019-08-07', '10:00', '10:40', 'tburton', 4 , 15, 4, 60),
('2019-08-07', '10:00', '10:40', 'tburton', 6 , 15, 4, 90),
('2019-08-09', '09:00', '09:45', 'tburton', 7, 15, 4, 110),
('2019-08-09', '09:00', '09:45', 'tburton', 9 , 15, 4, 30),
('2019-08-09', '09:00', '09:45', 'tburton', 10 , 15, 4, 110),
('2019-08-12', '01:00', '02:00', 'tburton', 1 , 15, 4, 40),
('2019-08-12', '01:00', '02:00', 'tburton', 3, 15, 4, 80),
('2019-08-12', '01:00', '02:00', 'tburton', 5, 15, 4, 90),
('2019-08-12', '01:00', '02:00', 'tburton', 7, 15, 4, 45),
('2019-08-12', '01:00', '02:00', 'tburton', 3 , 15, 4, 85),
('2019-08-14', '10:00', '10:40', 'tburton', 2 , 15, 4, 115),
('2019-08-14', '10:00', '10:40', 'tburton', 4 , 15, 4, 65),
('2019-08-14', '10:00', '10:40', 'tburton', 6 , 15, 4, 95),
('2019-08-16', '09:00', '09:45', 'tburton', 7, 15, 4, 110),
('2019-08-16', '09:00', '09:45', 'tburton', 9 , 15, 4, 15),
('2019-08-16', '09:00', '09:45', 'tburton', 10 , 15, 4, 195),
('2019-08-05', '01:00', '01:30', 'fjohnson', 1 , 5, 2, 30),
('2019-08-05', '01:00', '01:30', 'fjohnson', 3, 5, 2, 30),
('2019-08-05', '01:00', '01:30', 'fjohnson', 5, 5, 2, 30),
('2019-08-05', '01:00', '01:30', 'fjohnson', 7, 5, 2, 20),
('2019-08-05', '01:00', '01:30', 'fjohnson', 3 , 5, 2, 35),
('2019-08-07', '10:00', '10:30', 'fjohnson', 2 , 5, 2, 40),
('2019-08-07', '10:00', '10:30', 'fjohnson', 4 , 5, 2, 40),
('2019-08-07', '10:00', '10:30', 'fjohnson', 6 , 5, 2, 25),
('2019-08-09', '09:00', '09:30', 'fjohnson', 7, 5, 2, 20),
('2019-08-09', '09:00', '09:30', 'fjohnson', 9 , 5, 2, 20),
('2019-08-09', '09:00', '09:30', 'fjohnson', 10 , 5, 2, 20),
('2019-08-12', '01:30', '02:00', 'fjohnson', 1 , 5, 2, 35),
('2019-08-12', '01:30', '02:00', 'fjohnson', 3, 5, 2, 15),
('2019-08-12', '01:30', '02:00', 'fjohnson', 5, 5, 2, 30),
('2019-08-12', '01:30', '02:00', 'fjohnson', 7, 5, 2, 45),
('2019-08-12', '01:30', '02:00', 'fjohnson', 3 , 5, 2, 20),
('2019-08-14', '10:10', '10:40', 'fjohnson', 2 , 5, 2, 30),
('2019-08-14', '10:10', '10:40', 'fjohnson', 4 , 5, 2, 40),
('2019-08-14', '10:10', '10:40', 'fjohnson', 6 , 5, 2, 30),
('2019-08-16', '09:15', '09:45', 'fjohnson', 7, 5, 2, 15),
('2019-08-16', '09:15', '09:45', 'fjohnson', 9 , 5, 2, 30),
('2019-08-16', '09:15', '09:45', 'fjohnson', 10 , 5, 2, 25),
('2019-08-05', '01:00', '02:00', 'pschultz', 1 , 15, 3, 25),
('2019-08-05', '01:00', '02:00', 'pschultz', 3, 15, 3, 90),
('2019-08-05', '01:00', '02:00', 'pschultz', 5, 15, 3, 45),
('2019-08-05', '01:00', '02:00', 'pschultz', 7, 15, 3, 35),
('2019-08-05', '01:00', '02:00', 'pschultz', 3 , 15, 3, 80),
('2019-08-07', '10:00', '10:40', 'pschultz', 2 , 15, 3, 40),
('2019-08-07', '10:00', '10:40', 'pschultz', 4 , 15, 3, 30),
('2019-08-07', '10:00', '10:40', 'pschultz', 6 , 15, 3, 50),
('2019-08-09', '09:00', '09:45', 'pschultz', 7, 15, 3, 25),
('2019-08-09', '09:00', '09:45', 'pschultz', 9 , 15, 3, 30),
('2019-08-09', '09:00', '09:45', 'pschultz', 10 , 15, 3, 55),
('2019-08-12', '01:30', '02:15', 'pschultz', 1 , 15, 3, 40),
('2019-08-12', '01:30', '02:15', 'pschultz', 3, 15, 3, 75),
('2019-08-12', '01:30', '02:15', 'pschultz', 5, 15, 3, 30),
('2019-08-12', '01:30', '02:15', 'pschultz', 7, 15, 3, 45),
('2019-08-12', '01:30', '02:15', 'pschultz', 3 , 15, 3, 45),
('2019-08-14', '10:10', '10:55', 'pschultz', 2 , 15, 3, 90),
('2019-08-14', '10:10', '10:55', 'pschultz', 4 , 15, 3, 65),
('2019-08-14', '10:10', '10:55', 'pschultz', 6 , 15, 3, 45),
('2019-08-16', '09:15', '10:00', 'pschultz', 7, 15, 3, 90),
('2019-08-16', '09:15', '10:00', 'pschultz', 9 , 15, 3, 15),
('2019-08-16', '09:15', '10:00', 'pschultz', 10 , 15, 3, 45);

ALTER TABLE login
ADD CONSTRAINT pk_login_id PRIMARY KEY (login_id);

ALTER TABLE profile
ADD CONSTRAINT pk_profile_id PRIMARY KEY (profile_id); 

ALTER TABLE access
ADD CONSTRAINT pk_role_id PRIMARY KEY (role_id);

ALTER TABLE login
ADD CONSTRAINT fk_profile_id FOREIGN KEY (profile_id) REFERENCES profile (profile_id);

ALTER TABLE profile
ADD CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES access (role_id);

COMMIT;