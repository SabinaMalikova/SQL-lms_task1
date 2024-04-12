create database lms_task1;
create table library
(
    id           serial primary key,
    library_name varchar,
    address      varchar,
    library_type varchar
);

alter table library
    alter column library_name set not null;
alter table library
    add column quantity_book int;
alter table library
    alter column quantity_book set not null;
alter table library
    rename to Libraries;

insert into libraries (library_name, address, library_type, quantity_book)
VALUES ('им. И. Раззакова', 'пр. Чынгыза Айтматова, 61а', 'государственная', 3000),
       ('им. Тоголока Молдо', 'ул. Салиевой, 145а', 'государственная', 2500),
       ('Ж. Боконбаева', 'ул. Исанова, 78', 'государственная', 3500),
       ('Д. Турусбекова', 'ул. Киевская, 252', 'государственная', 4500),
       ('McKimken', 'ул.Kimken, 75', 'частная ', 15000);


create table books
(
    id           serial primary key,
    book_name    varchar(50) not null,
    author       varchar(50),
    release_date date
);

alter table books
    add column book_condition varchar(50);
alter table books
    add column library_id int references libraries (id);


insert into books(book_name, author, release_date, book_condition, library_id)
VALUES ('Мастер и Маргарита', 'Михаил Булгаков', '1847-12-25', 'новый', 1),
       ('Евгений Онегин', 'Александр Пушкин', '1721-11-11', 'б/у', 2),
       ('Война и мир', 'Лев Толстой', '1677-10-21', 'б/у', 3),
       ('Гарри Поттер', 'Джоан Роулинг', '1997-07-26', 'новый', 4);


create table Mall
(
    id           serial primary key,
    mall_name    varchar(50) not null,
    mall_address varchar(50) not null
);
insert into mall(mall_name, mall_address)
VALUES ('asia mall', 'проспект Чингиза Айтматова 3'),
       ('bishkek park', 'Киевская 148'),
       ('ala-archa', 'проспект Чынгыза Айтматова 299В'),
       ('ЦУМ', 'проспект Чуй 155'),
       ('i-mall', 'Шевченко 88');

alter table mall
    rename to malls;


create table markets
(
    id                serial primary key,
    market_name       varchar(50) not null,
    market_type       varchar(50) not null,
    market_address_id int references malls (id)
);

insert into markets(market_name, market_type, market_address_id)
VALUES ('asia', 'grocery store', 1),
       ('globus', 'grocery store', 2),
       ('alma', 'grocery store', 3),
       ('terranova', 'clothing store', 1),
       ('H&M', 'clothing store', 2),
       ('mango', 'clothing store', 3),
       ('lining', 'clothing store', 4),
       ('puma', 'clothing store', 4),
       ('adidas', 'clothing store', 5),
       ('Элита', 'jewelry store', 4),
       ('sokolov', 'jewelry store', 3),
       ('"Beren Gold', 'jewelry store', 4),
       ('KEDDO', 'shoes store', 1),
       ('LION', 'shoes store', 2),
       ('krossbox', 'shoes store', 3),
       ('Mekadi Kids', 'shoes store', 4),
       ('FABISHOP', 'shoes store', 5);

create table confectionery
(
    id                    serial primary key,
    confectionery_name    varchar(50) not null,
    confectionery_address varchar(50) not null
);

insert into confectionery(confectionery_name, confectionery_address)
VALUES ('kulikov', ' ул. Ахунбаева 100'),
       ('сладости востока ', 'проспект Чуй 127'),
       ('графский', 'ул. Ауэзова'),
       ('бонжур', 'ул. Токтогула 62'),
       ('ширин', 'улица Гагарина 74'),
       ('Наша Марка', 'ул. Гоголя 127');

create table cars
(
    id                    serial primary key,
    car_brand_name        varchar(50) not null,
    car_model_name        varchar(50) not null,
    car_country_of_origin varchar(50) not null,
    car_color             varchar(50) not null,
    car_release_date      date        not null,
    car_price             integer     not null
);

alter table cars
    rename column car_price to car_price_$;
--subjects at the university

insert into cars(car_brand_name, car_model_name, car_country_of_origin, car_color, car_release_date, car_price_$)
VALUES ('toyota', 'camry', 'Япония', 'white', '2023-12-12', 55.000),
       ('lexus', 'RX 450', 'Япония', 'black', '2023-11-11', 41.000),
       ('kia', 'k5', 'Япония', 'white', '2022-10-10', 35.000),
       ('toyota', 'C-HR', 'Япония', 'yellow', '2024-09-09', 47.000),
       ('toyota', ' RAV4', 'Япония', 'blue', '2021-08-08', 52.000),
       ('BMW', 'X6', 'Япония', 'black', '2024-07-07', 86.000),
       ('Mercedes', 'S63 AMG', 'Япония', 'black', '2023-05-05', 67.000),
       ('Tesla', 'Model 3', 'Китай', 'pink', '2023-04-04', 54.000);

create table university
(
    id                 serial primary key,
    university_name    varchar(100) not null,
    university_address varchar(50)  not null
);


insert into university(university_name, university_address)
VALUES ('AUCA', 'bishkek'),
       ('KNU', 'bishkek'),
       ('KSMU', 'bishkek'),
       ('Ala-Too', 'bishkek'),
       ('IUK', 'bishkek'),
       ('Manas', 'bishkek'),
       ('Кембриджский университет', 'Великобритания'),
       ('Оксфордский университет', 'Великобритания'),
       ('Мюнхенский университет имени Людвига и Максимилиана', 'Германия'),
       ('Швейцарская высшая техническая школа Цюриха', 'Швейцария'),
       ('Автономный университет Мадрида', 'Испания'),
       ('Барселонский университет', 'Испания'),
       ('Высшая нормальная школа в Пизе', 'Италия'),
       ('Университет Осло', 'Норвегия'),
       ('Копенгагенский университет', 'Дания'),
       ('университет – Сорбонна', 'Франция'),
       ('Университет Париж-Сакл', 'Франция');

create table subjects
(
    id                             serial primary key,
    subjects_name                  varchar(50) not null,
    subjects_type                  varchar(50) not null,
    direction_at_the_university_id int references university(id)
);


insert into subjects (subjects_name, subjects_type, direction_at_the_university_id)
VALUES ('История', 'гуманитария', 1),
       ('теория вероятностей', 'технические', 7),
       ('Иностранный язык', 'гуманитария', 2),
       ('алгебра и геометрия', 'технические', 10),
       ('Социология', 'гуманитария', 3),
       ('Биология', 'технические', 11),
       ('Философия', 'гуманитария', 3),
       ('Химия', 'технические', 12),
       ('Экология', 'гуманитария', 4),
       ('Механика', 'технические', 16),
       ('Психология ', 'гуманитария', 5),
       ('Машиностроение', 'технические', 17),
       ('Алгоритмизация', 'технические', 6),
       ('Физическая культура', 'гуманитария', 8),
       ('информатика', 'технические', 9),
       ('Политология', 'гуманитария', 13),
       ('Филология', 'гуманитария', 14),
       ('лингвистика', 'гуманитария', 15);

create table countries
(
    id               serial primary key,
    country_name     varchar(50) not null,
    country_language varchar(50) not null,
    country_capital  varchar(50) not null
);
insert into countries(country_name, country_language, country_capital)
VALUES ('Австралия', 'австралийский английский', 'Канберра'),
       ('Афганистан', 'пушту и дари', 'Кабул'),
       ('Бангладеш', 'Бенгальский', 'Дакка'),
       ('Вьетнам', 'Вьетнамский', 'Ханой'),
       ('Индия', 'хинди', 'Нью-Дели'),
       ('Китай', 'китайский ', 'Пекин'),
       ('Япония', 'японский ', 'Токио'),
       ('Корея', 'корейский', 'Сеул'),
       ('Малайзия', 'Малайский', 'Куала-Лумпур '),
       ('Новая Зеландия', 'маори', 'Новая Зеландия'),
       ('Сингапур', 'английский', ' Сингапур'),
       ('Монголия', 'монгольский ', 'Улан-Батор'),
       ('Филиппины', 'филипино', 'Манила'),
       ('Таиланд', 'Тайский', 'Бангкок'),
       ('Израиль', 'Израильский', 'Иерусалим'),
       ('Катар', 'Арабский', 'Доха'),
       ('Марокко', 'Арабский', 'Рабат'),
       ('Испания', 'испанский', 'Мадрид'),
       ('Венгрия', 'Венгерский', 'Будапешт'),
       ('Греция', 'Греческий', 'Афины');

create table flowers
(
    flower_name varchar(50) not null ,
    flower_color varchar(50) not null ,
    flower_price int not null
);

insert into flowers(flower_name, flower_color, flower_price)
VALUES ('тюльпан','pink',150),
       ('розы','red',250),
       ('ромашки','white',80),
       ('пионы','pink',500),
       ('хризантемы','purple', 120),
       ('астра','white',70),
       ('гипсофилы','blue',160),
       ('лилия','pink',140),
       ('Гвоздик','black',55),
       ('Орхидеи','yellow',2000);