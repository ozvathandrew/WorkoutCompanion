BEGIN TRANSACTION; 

DROP TABLE IF EXISTS login, profile, access; 

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

INSERT INTO access (role_id, role_name)
VALUES (1, 'administrator'), (2, 'employee'), (3 , 'member');

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
VALUES ('brent scherf', 'bscherf@wc.com', 'null', 'i would love to do a push up', 'crossfit', 1), 
('laila fitriana', 'lfitriana@wc.com', 'null', 'working everyday to run that mile', 'running', 1), 
('eric baillergeon', 'ebaillergeon@wc.com', 'null', 'i want 22 inch biceps', 'lifting', 1), 
('andrew ozvath', 'aozvath@wc.com', 'null', 'very close to a 300lb squat', 'lifting', 1), 
('john smith', 'jsmith@wc.com', 'null', 'training for my next half  marathon', 'running', 2), 
('brian brown', 'bbrown@wc.com', 'null', 'next goal is deadlifting 200lbs', 'lifting', 2), 
('allison webster', 'aliwebster@gmail.com', 'null', 'training for football season', 'cardio', 3), 
('carl weathers', 'carl.weathers@yahoo.com','null', 'working off my dad bod', 'lifting', 3), 
('tim burton', 'timburton@aol.com', 'null', 'training for my next race', 'biking', 3),
('fred johnosn', 'fredj@hotmail.com', 'null', 'my wife is making me come here', 'crossfit', 3), 
('paula schultz', 'paual_schultz@gmail.com', 'null', 'getting ready for my wedding', 'cardio', 3);

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



