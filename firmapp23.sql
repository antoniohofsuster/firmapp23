drop database if exists firmapp23;

create database firmapp23;

use firmapp23;
create table projekt(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
cijena varchar(50) not null
);

create table programer(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
datum_rodjenja varchar(50) not null,
placa varchar(50) not null
);

create table sudjeluje(
projekt int not null,
programer int not null,
datum_pocetka varchar(50) not null,
datum_kraja varchar(50) not null
);


alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);


