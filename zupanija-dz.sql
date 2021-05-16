drop database if exists zupanija;
create database zupanija;
use zupanija;

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar (50) not null,
zupan int
);

create table opcina(
sifra int not null primary key auto_increment,
zupanija int,
naziv varchar (50) not null
);

create table mjesto(
sifra int not null primary key auto_increment,
opcina int,
naziv varchar (50)
);

create table zupan(
sifra int not null primary key auto_increment,
ime varchar (50),
prezime varchar (50)
);

alter table opcina add foreign key (zupanija) references zupanija (sifra);
alter table zupanija add foreign key (zupan) references zupan (sifra);
alter table mjesto add foreign key (opcina) references opcina (sifra);

insert into  zupanija (naziv) values
('Osjecko-baranjska zupanija'),
('Vukovarsko-srijemska zupanija'),
('Bjelovarsko-bilogorska zupanija');

insert into opcina (zupanija, naziv) values
(1,'Donji Miholjac'),
(1,'Darda'),
(2,'Otok'),
(2,'Ilok'),
(3,'Daruvar'),
(3,'Sirac');

insert into mjesto (opcina, naziv) values
(1,'Golinci'),
(1,'Podgajci Podravski'),
(2,'Mece'),
(2,'Svajcarnica'),
(3,'n/a'),
(3,'n/a'),
(4,'n/a'),
(4,'n/a'),
(5,'Donji Daruvar'),
(5,'Gornji Daruvar'),
(6,'n/a'),
(6,'n/a');

