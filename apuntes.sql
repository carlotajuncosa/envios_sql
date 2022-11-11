create database ligaDeportiva;
use ligadeportiva create table jugador (
    idJugador int unsigned primary key,
    Nombre varchar(20) not null,
    Apellidos varchar(40),
    FechaNac date,
    Posición varchar(30),
    Salario float(8, 2) unsigned,
    Nacionalidad varchar(30) default "España"
);
create table equipo(
    idEquipo int unsigned primary key,
    nombre varchar(30) not null,
    ciudad varchar(50),
    equipación varchar(3),
    puntos int unsigned default 0
);
show tables;
describe equipo;
create table estadio(
    idEstadio int unsigned,
    Nombre varchar(30),
    Ubicación varchar(30),
    AñoConstrucción year,
    CodEquipo int unsigned,
    primary key(idEstadio),
    foreign key(codequipo) references equipo(idEquipo)
);
create table equipojugador (
    idficha int unsigned auto_increment,
    codjugador int unsigned,
    codequipo int unsigned,
    fechaAlta date,
    fechaBaja date,
    Primary key(idficha),
    foreign key(codjugador) references jugador(idjugador),
    foreign key(codequipo) references equipo(idequipo)
);
alter table estadio
add aforo int unsigned
after Nombre;

use empresacamiones 
