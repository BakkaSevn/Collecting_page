-- Active: 1715879572396@@127.0.0.1@3306@coleccion
drop database if exists coleccion

create database coleccion

use coleccion;

CREATE TABLE lineas (
    id_linea INT AUTO_INCREMENT,
    nombre VARCHAR(20),
    fabricante VARCHAR(20),
    edicion VARCHAR(20),
    sublineas VARCHAR(20),
    PRIMARY KEY (id_linea)
);


CREATE TABLE figura (
    numero INT,
    altura FLOAT,
    edad_minima INT,
    imagen VARCHAR(20),
    id_lineas INT,  
    PRIMARY KEY (numero),
    FOREIGN KEY (id_lineas) REFERENCES lineas(id_linea)
);

drop table figura;

select * from figura;

create table usuario(
    id int AUTO_INCREMENT,
    nombre VARCHAR(20),
    email VARCHAR(20),
    password VARCHAR(20),
    PRIMARY key (id)
);

drop table usuario;

insert into lineas(nombre,fabricante,edicion,sublineas) values('Studio Series','Hasbro','Movies','Movies Edition');
insert into lineas(nombre,fabricante,edicion,sublineas) values('Studio Series','Hasbro','Games','Game Edition');
insert into lineas(nombre,fabricante,edicion,sublineas) values('Studio Series','Hasbro','Series','Series Edition')

insert into figura(numero,altura,edad_minima,imagen,id_lineas) values(02,10,3,'figura02.png',1);
insert into figura(numero,altura,edad_minima,imagen,id_lineas) values(05,15,3,'figura05.png',1);
insert into figura(numero,altura,edad_minima,imagen,id_lineas) values(10,13,3,'figura10.png',1);

SELECT numero, altura, edad_minima, imagen FROM figura

SELECT COUNT(*) FROM figura