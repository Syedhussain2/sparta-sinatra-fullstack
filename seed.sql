DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS cars;

create table car (
	id SERIAL PRIMARY KEY,
	modal_name VARCHAR(50),
	color VARCHAR(50),
	year VARCHAR(50)
);

create table people (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(50)
	car_id int REFERENCES cars(id)
);
insert into cars (modal_name, color, year) values ('3000GT', 'Violet', 1997);
insert into cars (modal_name, color, year) values ('Fiero', 'Fuscia', 1987);
insert into cars (modal_name, color, year) values ('A8', 'Violet', 1999);
insert into cars (modal_name, color, year) values ('9-5', 'Turquoise', 2011);
insert into cars (modal_name, color, year) values ('Mystique', 'Fuscia', 1999);
insert into cars (modal_name, color, year) values ('GX', 'Goldenrod', 2006);
insert into cars (modal_name, color, year) values ('Grand Marquis', 'Crimson', 1994);
insert into cars (modal_name, color, year) values ('B-Series', 'Khaki', 1991);
insert into cars (modal_name, color, year) values ('C-Class', 'Violet', 2002);
insert into cars (modal_name, color, year) values ('Grand Prix', 'Indigo', 1992);
insert into cars (modal_name, color, year) values ('Ram Van 2500', 'Indigo', 1995);
insert into cars (modal_name, color, year) values ('LR3', 'Aquamarine', 2008);
insert into cars (modal_name, color, year) values ('Rio', 'Fuscia', 2006);
insert into cars (modal_name, color, year) values ('F350', 'Green', 1997);
insert into cars (modal_name, color, year) values ('Acadia', 'Pink', 2008);
insert into cars (modal_name, color, year) values ('Jetta', 'Yellow', 2006);
insert into cars (modal_name, color, year) values ('R-Class', 'Mauv', 2007);
insert into cars (modal_name, color, year) values ('Lucerne', 'Red', 2010);
insert into cars (modal_name, color, year) values ('SJ', 'Puce', 1988);
insert into cars (modal_name, color, year) values ('Impala', 'Pink', 2011);
insert into cars (modal_name, color, year) values ('Ram 50', 'Red', 1993);
insert into cars (modal_name, color, year) values ('Crown Victoria', 'Green', 2003);
insert into cars (modal_name, color, year) values ('L-Series', 'Puce', 2002);
insert into cars (modal_name, color, year) values ('Ram 2500', 'Teal', 2002);
insert into cars (modal_name, color, year) values ('S-Series', 'Teal', 1996);
insert into cars (modal_name, color, year) values ('Ram 2500', 'Blue', 1999);
insert into cars (modal_name, color, year) values ('Mazda6', 'Green', 2007);
insert into cars (modal_name, color, year) values ('Ram 3500', 'Purple', 2008);
insert into cars (modal_name, color, year) values ('FX', 'Maroon', 2004);
insert into cars (modal_name, color, year) values ('Suburban 1500', 'Teal', 1995);
insert into cars (modal_name, color, year) values ('SL-Class', 'Pink', 2001);
insert into cars (modal_name, color, year) values ('944', 'Blue', 1983);
insert into cars (modal_name, color, year) values ('Sable', 'Goldenrod', 2000);
insert into cars (modal_name, color, year) values ('300ZX', 'Crimson', 1994);
insert into cars (modal_name, color, year) values ('Passat', 'Goldenrod', 2008);
insert into cars (modal_name, color, year) values ('Civic', 'Turquoise', 1989);
insert into cars (modal_name, color, year) values ('Xtra', 'Khaki', 1992);
insert into cars (modal_name, color, year) values ('IS', 'Turquoise', 2012);
insert into cars (modal_name, color, year) values ('Silverado', 'Indigo', 2010);
insert into cars (modal_name, color, year) values ('Elise', 'Aquamarine', 2010);
insert into cars (modal_name, color, year) values ('Sportvan G10', 'Mauv', 1993);
insert into cars (modal_name, color, year) values ('Avanti', 'Aquamarine', 1964);
insert into cars (modal_name, color, year) values ('Astro', 'Yellow', 2000);
insert into cars (modal_name, color, year) values ('JUKE', 'Aquamarine', 2012);
insert into cars (modal_name, color, year) values ('Forester', 'Red', 2012);
insert into cars (modal_name, color, year) values ('Fairlane', 'Khaki', 1965);
insert into cars (modal_name, color, year) values ('Canyon', 'Orange', 2011);
insert into cars (modal_name, color, year) values ('Matrix', 'Fuscia', 2010);
insert into cars (modal_name, color, year) values ('Ranger', 'Aquamarine', 2001);
insert into cars (modal_name, color, year) values ('Galaxie', 'Yellow', 1964);

insert into people (first_name, last_name, gender) values ('Natalina', 'Barok', 'Female');
insert into people (first_name, last_name, gender) values ('Abramo', 'Tyson', 'Male');
insert into people (first_name, last_name, gender) values ('Evelyn', 'Obal', 'Male');
insert into people (first_name, last_name, gender) values ('Malissa', 'Attwill', 'Female');
insert into people (first_name, last_name, gender) values ('Arlena', 'Goodrum', 'Female');
insert into people (first_name, last_name, gender) values ('Morena', 'Besson', 'Female');
insert into people (first_name, last_name, gender) values ('Grantham', 'Blakelock', 'Male');
insert into people (first_name, last_name, gender) values ('Derby', 'St Louis', 'Male');
insert into people (first_name, last_name, gender) values ('Ave', 'Maytum', 'Male');
insert into people (first_name, last_name, gender) values ('Terry', 'Montford', 'Male');
insert into people (first_name, last_name, gender) values ('Edsel', 'Luc', 'Male');
insert into people (first_name, last_name, gender) values ('Derek', 'Burstow', 'Male');
insert into people (first_name, last_name, gender) values ('Alysia', 'Keeping', 'Female');
insert into people (first_name, last_name, gender) values ('Verge', 'Birwhistle', 'Male');
insert into people (first_name, last_name, gender) values ('Everard', 'Kinahan', 'Male');
insert into people (first_name, last_name, gender) values ('Keslie', 'Hefner', 'Female');
insert into people (first_name, last_name, gender) values ('Seymour', 'Penke', 'Male');
insert into people (first_name, last_name, gender) values ('Estelle', 'Hazeldene', 'Female');
insert into people (first_name, last_name, gender) values ('Birgit', 'Pryke', 'Female');
insert into people (first_name, last_name, gender) values ('Alvis', 'Kestin', 'Male');
insert into people (first_name, last_name, gender) values ('Inez', 'Holyland', 'Female');
insert into people (first_name, last_name, gender) values ('Frazier', 'Sitlington', 'Male');
insert into people (first_name, last_name, gender) values ('Madel', 'Singh', 'Female');
insert into people (first_name, last_name, gender) values ('Mycah', 'Tume', 'Male');
insert into people (first_name, last_name, gender) values ('Hermie', 'Maddern', 'Male');
insert into people (first_name, last_name, gender) values ('Trix', 'O''Moylan', 'Female');
insert into people (first_name, last_name, gender) values ('Kellen', 'Gawne', 'Male');
insert into people (first_name, last_name, gender) values ('Codi', 'Daveridge', 'Male');
insert into people (first_name, last_name, gender) values ('Nick', 'Crossgrove', 'Male');
insert into people (first_name, last_name, gender) values ('Marcela', 'Moubray', 'Female');
insert into people (first_name, last_name, gender) values ('Arlinda', 'Fearnley', 'Female');
insert into people (first_name, last_name, gender) values ('Jamesy', 'Delafont', 'Male');
insert into people (first_name, last_name, gender) values ('Sterne', 'Yushkov', 'Male');
insert into people (first_name, last_name, gender) values ('Rebecka', 'Cargen', 'Female');
insert into people (first_name, last_name, gender) values ('Leese', 'Yellowlee', 'Female');
insert into people (first_name, last_name, gender) values ('Mayne', 'Nibley', 'Male');
insert into people (first_name, last_name, gender) values ('Hanny', 'De Domenico', 'Female');
insert into people (first_name, last_name, gender) values ('Melvin', 'Duchant', 'Male');
insert into people (first_name, last_name, gender) values ('Cordy', 'Figures', 'Female');
insert into people (first_name, last_name, gender) values ('Chaim', 'Balaisot', 'Male');
insert into people (first_name, last_name, gender) values ('Lockwood', 'Kordes', 'Male');
insert into people (first_name, last_name, gender) values ('Tatiana', 'Kuban', 'Female');
insert into people (first_name, last_name, gender) values ('Pacorro', 'Hughill', 'Male');
insert into people (first_name, last_name, gender) values ('Karla', 'Radenhurst', 'Female');
insert into people (first_name, last_name, gender) values ('Winnah', 'Colt', 'Female');
insert into people (first_name, last_name, gender) values ('Dacy', 'Marquez', 'Female');
insert into people (first_name, last_name, gender) values ('Stepha', 'Bence', 'Female');
insert into people (first_name, last_name, gender) values ('Stefanie', 'Poynser', 'Female');
insert into people (first_name, last_name, gender) values ('Dominik', 'Setter', 'Male');
insert into people (first_name, last_name, gender) values ('Tobias', 'Wittier', 'Male');
