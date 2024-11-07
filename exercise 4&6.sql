#### Creating a database
create database b102;
use b102;
CREATE TABLE student (
    id INT NOT NULL,
    name TEXT,
    marks INT
) 
SELECT * FROM student;
insert into student (id, name, marks) values (2,"vaidehi",96),(3,"sumit",87);
select * from student;

use b102;
CREATE TABLE movies (
    id INT NOT NULL,
    title TEXT,
    director TEXT,
    year INT,
    length_minutes INT
);
insert into movies (id, title,director,year,length_minutes) values(1,'toy story','john lasseter',1995,81),(2,'A Bugs life','john lasseter',1998,95),(3,'Toy story 2','john lasseter',1999,93),(4,'Monster inc','Pete Docter',1998,92),(5,'Finding nemo','Andrew Stanton',2003,107),(6,'The incredibles','Brad bird',2004,116);
select * from movies;
insert into movies (id, title,director,year,length_minutes) values (7,'cars','John lasseter',2006,117),(8,'Ratatouille','Brad bird',2007,115),(9,'WALL-E','Andrew stanton',2008,104),(10,'Up','Pete Docter',2009,101),(11,'Toy story 3','Lee Unkrich',2010,103),(12,'Cars 2','John lasseter',2011,120),(13,'Brave','Brenda Chapman',2012,102),(14,'Monsters University','Dan Scanlon',2013,110);
select * from movies;
select * from movie_sales;
select title from movies;
select title,director from movies;
select title from movies where id=6;
select title from movies where year between 2000 and 2010;
select title from movies where year not between 2000 and 2010;
select title from movies where title like 'toy%';
select title,director from movies where director='john lasseter';
select * from movies where title like 'WALL-_';
select distinct director as unique_director from movies order by director asc;
select title from movies where title like 'toy%';
select title from movies where director='john lasseter';
select * from movies where title like 'wall-_';
select distinct director  from movies order by director desc;
select distinct director as unique_director from movies order by director asc;
select distinct director as unique_director from movies order by director asc limit 3 offset 4;
select distinct director from movies order by director asc;
select distinct title from movies order by title asc limit 4 offset 10;
select distinct title from movies order by title asc limit 5;
select distinct title from movies order by title asc limit 5 offset 5;
select m.title,ms.domestic_sales, ms.international_sales from movies m inner join movie_sales ms on m.id=ms.movie_id;
select m.title, ms.domestic_sales,ms.international_sales from movies m inner join movie_sales ms on m.id=ms.movie_id where ms.international_sales > ms.domestic_sales limit 1 offset 2;
select m.title,ms.rating from movies m inner join movie_sales ms on m.id=ms.movie_id order by rating desc;