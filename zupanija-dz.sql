drop database if exists zupanija;
create database zupanija;
use zupanija;

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar (50) not null,
zupan varchar (50) not null
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

insert into  zupanija (naziv,zupan) values
('Osjecko-baranjska zupanija','Ivan Anusic'),
('Vukovarsko-srijemska zupanija','Bozo Galic'),
('Bjelovarsko-bilogorska zupanija','Damir Bajs');

insert into opcina (zupanija, naziv) values
('Osjecko-baranjska zupanija','Donji Miholjac'),
('Osjecko-baranjska zupanija','Darda'),
('Vukovarsko-srijemska zupanija','Otok'),
('Vukovarsko-srijemska zupanija','Ilok'),
('Bjelovarsko-bilogorska zupanija','Daruvar'),
('Bjelovarsko-bilogorska zupanija','Sirac');
insert into mjesto (opcina, naziv) values
('Donji Miholjac','Golinci'),
('Donji Miholjac','Podgajci Podravski'),
('Darda',''),
('Darda',''),
('Otok',''),
('Otok',''),
('Ilok',''),
('Ilok',''),
('Daruvar',''),
('Daruvar',''),
('Sirac',''),
('Sirac','');