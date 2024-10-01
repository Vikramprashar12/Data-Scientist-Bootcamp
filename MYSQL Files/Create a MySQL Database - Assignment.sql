CREATE DATABASE people_education;

SHOW DATABASES;

USE people_education;

CREATE TABLE people_info(
name VARCHAR(255), 
age INT, 
highschool_attended VARCHAR(255),
height FLOAT
);

CREATE TABLE school_info(
school_name VARCHAR(255),
zip_code VARCHAR(255)
);

CREATE TABLE school_mascot(
school_name VARCHAR(255), 
school_mascot VARCHAR(255)
);

SHOW TABLES;

DROP TABLE school_mascot;

INSERT INTO people_info (name, age, highschool_attended, height) 
VALUES("Vikram", 22, "Convent Heart Secondary School", 1.8), 
("Numair", 24, "Holy Name of Mary Secondary School", 1.7), 
("Navkaran",23,"Learning School",2.1),
("Aanshu",29,"Skateboarding School",5.2);

INSERT INTO school_info(school_name, zip_code) 
VALUES ("Convent Heart Secondary School", "L6R 1A1"), 
("Holy Name of Mary Secondary School", "G9A 2H2"),
("Learning School","H5K 8S9"),
("Skateboarding School","M4M 909");











