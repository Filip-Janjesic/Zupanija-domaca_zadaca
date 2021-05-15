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
('Donji Miholjac','Golinci'),
('Donji Miholjac','Podgajci Podravski'),
('Darda','Mece'),
('Darda','Svajcarnica'),
('Otok','n/a'),
('Otok','n/a'),
('Ilok','n/a'),
('Ilok','n/a'),
('Daruvar','Donji Daruvar'),
('Daruvar','Gornji Daruvar'),
('Sirac','n/a'),
('Sirac','n/a');