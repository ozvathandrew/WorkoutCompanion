BEGIN TRANSACTION; 

DROP TABLE IF EXISTS equipment, login, profile, access, classes; 

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
class_time timestamp
);

INSERT INTO equipment (equipment_name, equipment_description, equipment_video, muscle_group) 
VALUES ('Seated Bicep Curls', 'The seated bicep curl exercise uses the machine and a seated position to isolate the bicep muscles.', 'https://www.youtube.com/watch?v=M_uPvGrMx_o', 'Bicep'),
('Standing Calf Raises', 'Calf raises are a method of exercising the gastrocnemius, tibialis posterior and soleus muscles of the lower leg.', 'https://www.youtube.com/watch?v=YMmgqO8Jo-k', 'Legs'),
('Seated Chest Press', 'The seated chest press machine is an upright version of the standard lying bench press machine. The chest press helps build the pectoral muscles as well as the biceps, deltoids, and latissimus dorsi muscles.', 'https://www.youtube.com/watch?v=xUm0BiZCWlQ', 'Chest'),
('Free Weights', 'A weight, such as a barbell or dumbbell, that is not attached to another structural device and is raised and lowered by use of the hands and arms in weightlifting.', 'https://www.youtube.com/watch?v=y1r9toPQNkM', 'Total Body'), 
('Lat Pull Down', 'The pulldown exercise is a strength training exercise designed to develop the latissimus dorsi muscle. It performs the functions of downward rotation and depression of the scapulae combined with adduction and extension of the shoulder joint.', 'https://www.youtube.com/watch?v=CAwf7n6Luuc', 'Back'),
('Leg Press', 'The leg press is a weight training exercise in which the individual pushes a weight or resistance away from them using their legs.', 'https://www.youtube.com/watch?v=IZxyjW7MPJQ', 'Legs'), 
('Power Tower', 'Power tower, also known as a knee raise station, and as a captains chair, is a piece of exercise equipment that allows one to build upper body and abdominal muscle strength.', 'https://www.youtube.com/watch?v=ghwdoXHeiIk', 'Abs'),
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

INSERT INTO classes (class_id, class_name, class_time)
VALUES (1, 'Pilates', '2019-08-15 08:00:00'),
(2, 'Yoga', '2019-08-15 09:00:00'),
(3, 'Body Sculpting', '2019-08-15 10:00:00'),
(4, 'Crossfit', '2019-08-15 11:00:00'),
(5, 'Powerlifting', '2019-08-15 12:00:00'),
(1, 'Pilates', '2019-08-16 08:00:00'),
(2, 'Yoga', '2019-08-16 09:00:00'),
(3, 'Body Sculpting', '2019-08-16 10:00:00'),
(4, 'Crossfit', '2019-08-16 11:00:00'),
(5, 'Powerlifting', '2019-08-16 12:00:00');

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
