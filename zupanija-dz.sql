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

create

alter table opcina add foreign key (zupanija) references zupanija (sifra);

insert into zupanija (naziv,zupan) values
('Osjecko-baranjska zupanija','Ivan Anusic'),
('Vukovarsko-srijemska zupanija','Bozo Galic'),
('Bjelovarsko-bilogorska zupanija','Damir Bajs');

insert into opcina (zupanija, naziv) values
(1,'Bilje'),(1,'Darda'),(2,'Otok'),(2,'Ilok'),(3,'Zdenci'),(3,'Crnac');


