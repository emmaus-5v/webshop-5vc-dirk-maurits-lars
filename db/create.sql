--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
  genre_id INTEGER,
  schrijver_id INTEGER,
  bladzijdes INTEGER,
  uitgever_id INTEGER,
  verflimd_id INTEGER
);

DROP TABLE IF EXISTS genre;
CREATE TABLE genre (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(30)
);

DROP TABLE IF EXISTS products_genre;
CREATE TABLE products_genre (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  boek_id INTEGER
  genre_id INTEGER
);

DROP TABLE IF EXISTS schrijver;
CREATE TABLE schrijver (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(101)
);

DROP TABLE IF EXISTS uitgever;
CREATE TABLE uitgever (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(101)
);

DROP TABLE IF EXISTS verfilmd;
CREATE TABLE verfilmd (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(10)
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id) values ('BH', 'BH', 'Deze BH is gemaakt van zachte kinderbilletjes. Getest door onze BH-dwerg Lars. Made in China:)'', '816905633-0', 69.0);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id) values ('STRING', '..', '077030122-3', 11);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id) values ('Scarlet and the Black, The', '..', '445924201-X', 13.5);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id) values ('Aquí llega ', '..', '693155505-7', 13.5);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id) values ('Kiss for Corliss, A (Almost a Bride)', '..', '686928463-6', 14);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id) values ('Velvet Goldmine', '..', '492662523-7', 14);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id) values ('Velvet Goldmine', '..', '492662523-7', 14);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id) values ('Velvet Goldmine', '..', '492662523-7', 14);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id) values ('Velvet Goldmine', '..', '492662523-7', 14);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id) values ('Velvet Goldmine', '..', '492662523-7', 14);

insert into genre (name) values ('genre1');
insert into genre (name) values ('genre2');
insert into genre (name) values ('genre3');

insert into schrijver (name) values ('schrijver1');
insert into schrijver (name) values ('schrijver2');
insert into schrijver (name) values ('schrijver3');

insert into uitgever (name) values ('uitgever1');
insert into uitgever (name) values ('uitgever2');
insert into uitgever (name) values ('uitgever3');