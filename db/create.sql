--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  genre_id INTEGER,
  schrijver_id INTEGER,
  bladzijdes INTEGER,
  uitgever_id INTEGER,
  verfilmd_id INTEGER
);

DROP TABLE IF EXISTS genre;
CREATE TABLE genre (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(30)
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

insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('Advocaat van de hanen',  'Een achttienjarige jongen overlijdt onder verdachte omstandigheden in een politiecel. Ernst Quispel, voormalig rivaal in de liefde van Albert Egberts, krijgt als advocaat van de nabestaanden het dringende verzoek enige helderheid te verschaffen in de dood van deze krakersleider. Vanwaar zijn weerzin tegen die rol?', '816905633-0', 19, 1 , 1 , 573, 1 , 1);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('Mein Kampf', 'Mein Kampf “Eigenlijk is Mein Kampf een heel erg lang politiek pamflet. Het staat ook wel bekend als Hitlers autobiografie, maar alles wat Hitler over zijn eigen leven vertelt, over zijn jeugd, zijn ervaringen als soldaat in de Eerste Wereldoorlog, gebruikt hij als aanleiding om politiek te bedrijven.', '077030122-3', 22, 3, 2, 818, 2, 2 );
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('Het Achterhuis', 'Anne Frank is een dertienjarig joods meisje, ze moet in de Tweede wereldoorlog, samen met haar ouders en zus onderduiken in hun woonplaats Amsterdam. Samen met de familie van Daan trekken zij in het Achterhuis, een woonhuis aan de achterkant van het kantoor van haar vader en zijn medewerkers.', '492092523-7', 6, 3, 7, 297 , 3, 1 );
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('Het gouden ei', 'Het hele verhaal gaat over de verdwijning van Saskia, daarnaast wordt veel aandacht geschonken aan de gedachten en gevoelens van Rex. De gebeurtenissen zijn heel logisch met elkaar verbonden. De sfeer in dit boek is heel spannend, omdat je tot de laatste pagina toe niet weet wat er met Saskia gebeurd is.', '445924201-X', 3.5, 3, 3, 98, 4/5 , 1);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('The Da Vinci Code', 'Het boek gaat over een code die moet worden ontcijferd. Da Vinci heeft hier veel mee te maken. Het lijk waar het mee begint ligt ook in de positie van ‚De mens van Vitruvius van Da Vinci. De tijd waar het zich in afspeelt is onze tijd, ze hebben het over het museum Louvre in Parijs, met de nieuwe glazen driehoek.', '693155505-7', 24.5, 4, 4, 489 , 4 , 1);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('Alaska', 'Hij is bang dat hij als freak bekend zal staan op zijn nieuwe school omdat hij epilepsie heeft. Vanwege zijn epileptische aanvallen heeft Sven sinds kort een hulphond. En laat dat nou net Alaska zijn.', '686928463-6', 14, 6, 5, 184, 5 ,2 );
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('Asbestemming', 'Het boek is een soort van biografie die alleen het leven van de schrijver beslaat in hoe verre het verhoud tot zijn vader, wiens leven hij ook uitvoerig beschrijft. Het is geheel vanuit de schrijver geschreven en is mix van fictie en non-fictie.', '492662523-7', 17, 2 , 1 , 344 , 1 , 2);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('Jip en Janneke', 'Jip en Janneke zijn de aller- allerbeste vriendjes en altijd samen. In en om huis beleven ze veel avonturen.', '672662523-7', 7, 6, 6, 353, 5, 2);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('Joe Speedboot', 'Joe Speedboot is het verhaal over een jongen genaamd Frans Hermans die op jonge leeftijd door een grasmaaier ongeluk in een coma beland. ... In de tijd dat hij in coma lag, is er een mysterieuze jongen met een absurde naam Lomark binnen getrokken, Joe Speedboot.', '498862523-7', 14, 6, 11, 316, 1 , 2);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('De aanslag', 'De Aanslag verteld het verhaal van de 12-jarige Anton Steenwijk. Hij woonde tijdens de Tweede Wereldoorlog in Haarlem. ... Na de bevrijding wordt duidelijk dat de ouders van Anton en zijn broer Peter op de avond van de aanslag op Ploeg zijn neergeschoten. Anton blijft bij zijn oom en tante wonen.', '492493523-7', 27, 8, 8, 347, 1, 2);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('The Communist Manifesto', 'Hamers en sikkels', '4927543523-7', 69, 9, 9, 432, 6, 2);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verfilmd_id) values ('Harry Potter en de Steen der Wijzen', 'deel 1 van Harrie Potter', '497693523-7', 10, 6, 10, 232, 7, 1);

insert into genre (name) values ('Drama');
insert into genre (name) values ('Literaire fictie');
insert into genre (name) values ('Autobiografie');
insert into genre (name) values ('Thriller');
insert into genre (name) values ('Horror');
insert into genre (name) values ('Fictie');
insert into genre (name) values ('Kinderboek');
insert into genre (name) values ('Oorlog');
insert into genre (name) values ('Filosofisch');

insert into schrijver (name) values ('A.F.Th. van der Heijden');
insert into schrijver (name) values ('Adolf Hitler');
insert into schrijver (name) values ('Tim Krabbé');
insert into schrijver (name) values ('Dan Brown');
insert into schrijver (name) values ('Anna Woltz');
insert into schrijver (name) values ('Annie M.G. Schmidt');
insert into schrijver (name) values ('Anne Frank');
insert into schrijver (name) values ('Harry Mulisch');
insert into schrijver (name) values ('Karl Marx');
insert into schrijver (name) values ('J. K. Rowling');
insert into schrijver (name) values ('Tommy Wieringa');

insert into uitgever (name) values ('De Bezige Bij');
insert into uitgever (name) values ('	Verlag Franz Eher Nachfolger GmbH');
insert into uitgever (name) values ('Prometheus');
insert into uitgever (name) values ('Luitingh');
insert into uitgever (name) values ('Querido');
insert into uitgever (name) values ('Karl Marx');
insert into uitgever (name) values ('de Harmonie');

insert into verfilmd (name) values ('ja');
insert into verfilmd (name) values ('nee'); /*kijken of null kan */

