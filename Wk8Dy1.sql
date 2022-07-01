-- DAY1
-- MORNING
-- CREATE TABLE movies (title VARCHAR (255), actor VARCHAR (255), rating INT);
-- How to Put Information in a Table
-- using CRUDE 
-- a) CREATE FUNCTIONALITY 
INSERT INTO movies VALUES ("Spiderman", "Tom Holland", 4);
-- b) READ FUNCTIONALITY

 SELECT title, actor FROM movies; 
 -- Instead of listing all the items use "all operator", i.e * (Find All)
 SELECT * FROM movies;
-- If the movie value is changed to Spiderman The Best One, Andrew Garfield and 11
INSERT INTO movies VALUES ("Spiderman The Best One", "Andrew Garfield", 11); 
-- IF I only want movies from Andrew Garfield (Find Specific)
SELECT * FROM movies WHERE actor = "Andrew Garfield";

-- Auto Increament Field, the result of this create trully unique information for the table
 CREATE TABLE tv (id INT AUTO_INCREMENT NOT NULL UNIQUE, title VARCHAR (255));
 INSERT INTO tv (title) VALUES ("One Punch Man");
 SELECT * FROM tv;
 
 -- Class Activity
-- c) UPDATE SYNTAX 
UPDATE tv  SET title= ("Raising Dion") WHERE id=1; 
-- d) and DELETE SYNTAX
DELETE FROM tv WHERE id=1; 

-- **Class Example**
INSERT INTO movies (title, actor) VALUES ("Spiderman", "Andrew Garfield");
-- READ
SELECT * FROM movies; 
UPDATE movies SET actor = "TOM HOLLAND" WHERE title = "Spiderman";
DELETE FROM movies WHERE title = "Spiderman";
-- ------------------------------------------------------------------------------------------------------

-- AFTERNOON
-- Aggregate Functions
INSERT INTO movies (title, actor) VALUES ("Social Network", "Andrew Garfield");
SELECT count(*) FROM movies; 
-- If we use Aliars i.e AS for the count;
SELECT count(*) AS total_movies FROM movies;
-- min, mac, sum, avarage work exactly in the same way as count, such as:
SELECT count(rating) AS total_movies FROM movies;
 
-- Declarative Properties
-- When ORDER BY is used, results will be produce in assending order except DESC key is introduced. 
SELECT * FROM movies ORDER BY title;
SELECT * FROM movies ORDER BY title DESC;
-- To delete the whole table use DROP TABLE: 
DROP TABLE movies;
-- To create new tale with id use:
CREATE TABLE movies (id INT AUTO_INCREMENT NOT NULL UNIQUE, title VARCHAR (255)); 

