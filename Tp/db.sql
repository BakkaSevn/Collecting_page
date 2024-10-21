-- SQLBook: Code
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


INSERT INTO figura (numero, altura, edad_minima, imagen, id_lineas) VALUES
(1, 10, 3, 'figura01.png', 1),
(2, 15, 3, 'figura02.png', 1),
(3, 13, 3, 'figura03.png', 1),
(4, 13, 3, 'figura04.png', 1),
(5, 13, 3, 'figura05.png', 1),
(6, 13, 3, 'figura06.png', 1),
(7, 13, 3, 'figura07.png', 1),
(8, 13, 3, 'figura08.png', 1),
(9, 13, 3, 'figura09.png', 1),
(10, 13, 3, 'figura10.png', 1),
(11, 13, 3, 'figura11.png', 1),
(12, 13, 3, 'figura12.png', 1),
(13, 13, 3, 'figura13.png', 1),
(14, 13, 3, 'figura14.png', 1),
(15, 13, 3, 'figura15.png', 1),
(16, 13, 3, 'figura16.png', 1),
(17, 13, 3, 'figura17.png', 1),
(18, 13, 3, 'figura18.png', 1),
(19, 13, 3, 'figura19.png', 1),
(20, 13, 3, 'figura20.png', 1);


truncate table figura;

SELECT numero, altura, edad_minima, imagen FROM figura

SELECT COUNT(*) FROM figura

--PROCEDURES

CREATE PROCEDURE crear_usuario(
    IN p_nombre VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_password VARCHAR(255)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'Error al crear usuario' AS mensaje_error;
    END;

    INSERT INTO usuario (nombre, email, password)
    VALUES (p_nombre, p_email, p_password);
    
    SELECT 'Usuario creado exitosamente' AS mensaje_exito;
END //

-- SQLBook: Code
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


INSERT INTO figura(numero, altura, edad_minima, imagen, id_lineas) VALUES
(01, 10, 3, 'figura01.png', 1),
(02, 15, 3, 'figura02.png', 1),
(03, 13, 3, 'figura03.png', 1),
(04, 13, 3, 'figura04.png', 1),
(05, 13, 3, 'figura05.png', 1),
(06, 13, 3, 'figura06.png', 1),
(07, 13, 3, 'figura07.png', 1),
(08, 13, 3, 'figura08.png', 1),
(09, 13, 3, 'figura09.png', 1),
(10, 13, 3, 'figura10.png', 1),
(11, 13, 3, 'figura11.png', 1),
(12, 13, 3, 'figura12.png', 1),
(13, 13, 3, 'figura13.png', 1),
(14, 13, 3, 'figura14.png', 1),
(15, 13, 3, 'figura15.png', 1),
(16, 13, 3, 'figura16.png', 1),
(17, 13, 3, 'figura17.png', 1),
(18, 13, 3, 'figura18.png', 1),
(19, 13, 3, 'figura19.png', 1),
(20, 13, 3, 'figura20.png', 1);

truncate table figura;

SELECT numero, altura, edad_minima, imagen FROM figura

SELECT COUNT(*) FROM figura

--PROCEDURES

CREATE PROCEDURE crear_usuario(
    IN p_nombre VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_password VARCHAR(255)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'Error al crear usuario' AS mensaje_error;
    END;

    INSERT INTO usuario (nombre, email, password)
    VALUES (p_nombre, p_email, p_password);
    
    SELECT 'Usuario creado exitosamente' AS mensaje_exito;
END //
