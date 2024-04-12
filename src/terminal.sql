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