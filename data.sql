-- Create/ run file with command "psql - f data.sql"
-- Remember - Semi-colons and single quotes!!

DROP DATABASE IF EXISTS practise_italian_recipes_db;
CREATE DATABASE practise_italian_recipes_db;

\c practise_italian_recipes_db

CREATE TABLE Dishes (Dish VARCHAR (40), Course VARCHAR (40), Dish_type VARCHAR (40));

CREATE TABLE Courses (Course VARCHAR (40), Dish VARCHAR(40));

CREATE TABLE Dish_types (Dish_type VARCHAR(40), Dish VARCHAR(40));

INSERT INTO Dishes (VALUES ('Minestrone', 'Starter', 'Soup'),
('Pepperoni Pizza', 'Main', 'Pizza'), ('Pistachio Gelato', 'Dessert', 'Ice-cream'), ('Pinot Grigio', 'Drink', 'Wine'), ('Garlic Bread', 'Side', 'Extra'));

INSERT INTO Courses (VALUES ('Starter', 'Minestrone'), ('Main', 'Pepperoni Pizza'), ('Dessert', 'Pistachio Gelato'),('Drink', 'Pinot Grigio'), ('Side','Garlic Bread'));

INSERT INTO Dish_types (VALUES ('Soup', 'Minestrone'), ('Pizza', 'Pepperoni Pizza'), ('Ice-cream', 'Pistachio Gelato'),('Wine', 'Pinot Grigio'), ('Extra','Garlic Bread'));

-- Query for all Dish_types
SELECT * FROM Dish_types;

-- Query for all Courses
SELECT * FROM Courses;

-- Query for all Dishes
SELECT * FROM Dishes;

-- Query for all Dishes for a certain course
SELECT * FROM Dishes WHERE Course='Starter';

-- Query for all Dishes of a certain Dish_type 
SELECT * FROM Dish_types WHERE Dish_type='Pizza';