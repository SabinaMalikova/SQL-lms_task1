Server [localhost]:
Database [postgres]: lms_task1
Port [5432]:
Username [postgres]:
Password for user postgres:

psql (16.2)
WARNING: Console code page (866) differs from Windows code page (1251)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

lms_task1=# create table technology(id serial primary key,technology_name varchar(50) not null,brand varchar(50) not null,price integer not null);
CREATE TABLE
    lms_task1=# insert into technology (technology_name, brand, price)VALUES ('laptop','lenovo',65000),('smartphone','Samsung', 75000 ),('vacuum cleaner','dyson', 120000 ),('multicooker','panasonic ', 14000 ),('headphones','apple', 7000 ),('charger','Samsung', 2500 ),('power bank','apple', 4500),('loudspeaker','Яндекс', 9000 ),('Dishwasher','FAGOR', 40000 ),('washing machine','beko', 55000 );
INSERT 0 10
lms_task1=# create table foods (id serial primary key, food_name varchar(50) not null, description varchar not null , my_mark varchar not null );
CREATE TABLE
    lms_task1=# insert into foods(food_name, description, my_mark) VALUES ('lagman','Uyghur cuisine','6/10'),('manty','Central Asian cuisine','7/10'),('plov','Uzbek cuisine','5/10'), ('lasagna','italian cuisine','10/10'),('boorsok','Central Asian cuisine','10/10'),('fettuccine ','italian cuisine','7/10'), ('khinkali','Georgian cuisine','7/10'),('donut','American cuisine','3/10'), ('besh-barmak','Central Asian cuisine','5/10'), ('fricassee','French cuisine','7/10'),('shawarma','Eastern cuisine','8/10'), ('ganfan','Uyghur cuisine','8/10');
INSERT 0 12
    lms_task1=# create table peoples (id serial primary key, person_name varchar(50) not null, age int not null, nationality varchar(50) not null);
CREATE TABLE
    lms_task1=# insert into peoples(person_name, age, nationality) values ('ulan', 20, 'kyrgyz'), ('Grisha',21,'russian'),('Fire',20,'uigur'),('Mirlan',22,'kyrgyz'),('Aizirek',20,'kyrgyz'), ('Sabina',20,'kyrgyz'),('Voktoria',19,'korean'),('Asa',17,'japanese'),('Rose', 25,'australian'),('Jennie',27 ,'korean');
INSERT 0 10
    lms_task1=# create table color (id serial primary key, color_name varchar(50), color_association varchar(50) not null);
CREATE TABLE
    lms_task1=# insert into color(color_name, color_association) VALUES ('red','blood'), ('pink','flamingo'), ('yellow','sun'), ('blue','ocean'), ('white','snow'), ('black','darkness'), ('orange','carrot'), ('green','grass');
INSERT 0 8
    lms_task1=# create table games(game_name varchar(50) not null , game_type varchar(50) not null , game_for_gender varchar(50) not null);
CREATE TABLE
    lms_task1=# insert into games(game_name, game_type, game_for_gender) VALUES ('mafia','board game', 'universal'),('uno', 'board game', 'universal'),('tennis','active game','universal'),('doll','board game','female'),('cars','board game','male'),('chess','board game','universal');
INSERT 0 6
    lms_task1=# create table regions(id serial primary key, region_name varchar(50) not null, area_of_the_region varchar(50) not null );
CREATE TABLE
    lms_task1=# alter table regions drop column area_of_the_region;
ALTER TABLE
    lms_task1=# alter table regions add column area_of_the_region double precision;
ALTER TABLE
    lms_task1=# insert into regions(region_name, area_of_the_region) VALUES ('Batken', 17.048),('Chuy', 20.2), ('Jalal-Abad', 33.7),('Issyk-Kul', 6.236),('Naryn', 40.5),('Talas', 13),('Osh', 29);
INSERT 0 7
INSERT 0 7
    lms_task1=#  create  table  products (products_name varchar(50) not null, products_price int not null);
CREATE TABLE
    lms_task1=# insert into products(products_name, products_price) VALUES ('bread', 35), ('water',80),('oil',180),('butter',120),('salt',30),('pepper',40),('rice',170),('noodles',130),('eggs',160),('milk',70),('cream',150),('cheese',330),('fruits',460),('vegetables',740);
INSERT 0 14
    lms_task1=# create table phone_model (phone_name varchar(50) not null, phone_price_$ int not null, phone_color varchar(50) not null);
CREATE TABLE
    lms_task1=# insert into phone_model(phone_name, phone_price_$, phone_color) VALUES ('iPhone 11',400,'purple'),  ('iPhone 12 pro', 600 ,'white'), ('iPhone 13',620 ,'black'), ('iPhone 14 pro max',840 ,'pink'), ('iPhone 15', 850,'white'), ('samsung s23',670,'green'), ('samsung zip5',980,'white'), ('samsung egl',300,'yellow'), ('samsung flat',420,'blue'), ('mi 9',210,'white'), ('mi 11',250,'red'), ('mi 15',280,'pink'), ('mi f4',320,'white'), ('poco x3',450,'green'), ('poco x4',510,'black'), ('poco x5',630,'white');
INSERT 0 16
    lms_task1=# create table residence_house(id serial primary key, residence_type varchar(50) not null, residence_address varchar not null, id_who_lives int references peoples(id));
CREATE TABLE
    lms_task1=# insert into residence_house(residence_type, residence_address, id_who_lives) values  ('house','Berlin',6),('apartment','Seoul',9),('house','Almaty',3),('house','Moscow',7),('house','Astana',5),('apartment','Seoul',2),('apartment','Baku',4),('apartment','Bishkek',1),('house','Morocco',8),('apartment','LA',10);
INSERT 0 10
    lms_task1=# create table furniture(id serial primary key, Furniture_name varchar(50) not null, color varchar(50) not null, material varchar(50) not null);
CREATE TABLE
    lms_task1=# insert into furniture(furniture_name, color, material) values ('chair','grey','wood'),('table','white','wood'),('sofa','blue','leather'),('bed','pink','iron'),('cupboard','yellow','wood'),('bookcase','black','wood'),('Desk','white','plastic'),('fireplace','red','brick');
INSERT 0 8
