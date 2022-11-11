/* 1º.- crear la BD
 
 2º.- Orden de ceración de la tablas.
 
 3º.- cuidado con las PK y FK */

create database Envios;

use Envios;

use empresacamiones 

create table camioneros(
    DNI int(9) unsigned,
    letraDNI varchar (1),
    nombre varchar (30),
    telefono int unsigned,
    poblacion varchar(30),
    dirección varchar(40),
    primary key(DNI, letraDNI)
);

create table provincias(
    codigo int(40) unsigned primary key,
    nombre varchar(30)
);

create table camiones(
    matricula int(15) unsigned primary key,
    modelo varchar(30),
    potencia int(20) unsigned,
    tipo varchar(15)
);

create table paquetes(
    codigo int(30) unsigned,
    descripcion varchar(100),
    destinatario varchar(30),
    direccionDestinatario varchar(100),
    IDcamionero int(30) unsigned,
    IDcamioneroLetra varchar(1),
    IDprovincia int(40) unsigned,
    foreign key(IDcamionero, IDcamioneroLetra) references camioneros(DNI, LetraDNI)
);

create table camioneros_camiones(
    codRuta int(12) primary key,
    codCamionero int(9) unsigned,
    CodCamioneroLetra varchar(1),
    codCamion int(15) unsigned, 
    fecha date,
    foreign key(CodCamionero, CodCamioneroLetra) references camioneros(DNI, letraDNI),
    foreign key(codCamion) references camiones(matricula)
);
