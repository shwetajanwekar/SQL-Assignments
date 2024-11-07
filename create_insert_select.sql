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
