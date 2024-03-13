create database cadastro 
default character set utf8mb3
default collate utf8mb3_general_ci;

create table clientes (
id int NOT NULL auto_increment,
nome varchar(30) not null,
email varchar(30) not null,
senha varchar(30) not null,
nascimento date,
PRIMARY KEY (id)
);

drop database cadastro;
drop table clientes;

describe clientes;

alter table clientes
add column sexo enum('M','F');

alter table clientes
change column sexo genero varchar(20);

alter table clientes
drop sexo;

alter table clientes
drop column nascimento;

alter table clientes
add column nascimento date first;

INSERT INTO clientes values
(DEFAULT, 'Maithe', 'maithe.bertholucci@gmail.com', 'mtbr3121', '2005-02-11');

SELECT * FROM clientes;

create table if not exists gerencia (
id int NOT NULL auto_increment,
nome varchar(30),
email varchar(30),
senha varchar(30),
token int unsigned,
nacionalidade varchar(30) default 'BR',
PRIMARY KEY (id)
);

describe gerencia;

drop table if exists gerencia;

show tables;