create table peaksoft_lessons
(
    id              serial primary key,
    lesson_name     varchar(50) not null,
    lesson_duration varchar(50) not null
);
insert into peaksoft_lessons(lesson_name, lesson_duration)
values('java','9 month'),
      ('js','9 month'),
      ('computer literacy','1 month'),
      ('flutter','6 month');

create table peaksoft_instructors
(
    id              serial primary key,
    instructor_name varchar(50) not null,
    lesson_id       int references peaksoft_lessons (id)
);

insert into peaksoft_instructors (instructor_name, lesson_id)
values('Aijamal Asangazieva',1 ),
      ('Aizat Duisheeva',1 ),
      ('Ainazik Toktomamatova',1 ),
      ('Ulan agai', 1),
      ('Datka eje',1 ),
      ('Muhammed agai',1 ),
      ('Aziat agai',2 ),
      ('Elizar agai',2 ),
      ('Flutter agai', 3);

create table drinks(id serial primary key, drinks_type varchar(50) not null);
insert into drinks(drinks_type)
values('carbonated'),
      ('non-carbonated');

alter table drinks rename to drinks_types;

create table drinks(drink_name varchar(50), drink_type_id int references drinks_types(id));
insert into drinks(drink_name, drink_type_id)
values('latte', 2 ),
      ('coca-cola',1 ),
      ('cappuccino',2 ),
      ('milkshake',2 ),
      ('fanta', 1),
      ('pepsi',1 ),
      ('shoro',2 );

create table stationery(stationery_name varchar(50) not null, color varchar(50) not null);
insert into stationery(stationery_name, color)
values ('scissors','silver'),
       ('paper','white'),
       ('eraser','rainbow'),
       ('sharpener','blue'),
       ('glue','green'),
       ('pen','black'),
       ('pencil','grey');

create table gender(id serial primary key, gender_type varchar(50) not null);
insert into gender(gender_type)
values ('femail'),
       ('male');

create table professions(professions_name varchar(50) not null, gender_id int references gender(id));
insert into professions(professions_name, gender_id)
values ('firefighters',2 ),
       ('pilots',2 ),
       ('cook',1 ),
       ('seamstress',1 ),
       ('rescuer', 2 ),
       ('stuntman', 2),
       ('consultant', 1);

create table social_networks_of_people(
                                          person_id int references peoples(id),
                                          email varchar(50) not null,
                                          instagram varchar(50) not null);

insert into social_networks_of_people (person_id, email, instagram)
values (1,'ulan@gmail.com','ulan.u'),
       (2,'grisha@gmail.com','grisha.g'),
       (3,'fire@gmail.com','fire.f'),
       (4,'mirlan@gmail.com','mirlan.m'),
       (5,'aizirek@gmail.com','aizirek.a'),
       (6,'sabina@gmail.com','sabina.s'),
       (7,'viktoria@gmail.com','viktoria.v'),
       (8,'asa@gmail.com','asa.a'),
       (9,'rose@gmail.com','rose.r'),
       (10,'jennie@gmail.com','jennie.j');

create table programming_languages(id serial primary key, languages_names varchar(50) not null );
insert into programming_languages(languages_names)
values('java'),
      ('js'),
      ('python'),
      ('c'),
      ('c++'),
      ('c#'),
      ('SQL'),
      ('go'),
      ('PHP'),
      ('Kotlin'),
      ('Swift');

create table beauty_things(
                              things_name varchar(50) not null,
                              price int not null);

insert into beauty_things(things_name, price)
values('lipstick', 760 ),
      ('powder', 1200 ),
      ('cream', 1380),
      ('ampoule', 650 ),
      ('mascara', 420),
      ('eyeliner', 320),
      ('eyebrow pencil',180 ),
      ('lip oil', 800),
      ('blush',560 );