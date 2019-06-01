create database empresax9;
use empresax9;

create table clientes (
codcliente int primary key not null,
nomecliente varchar(50) NOT NULL,
estadocivil varchar(50) not null,
nomeconjuge varchar(50),
salario int(10) not null
);

create table tipo (
codtipo int primary key not null,
desctipo varchar(50) not null
);

create table fone (
codfone int primary key not null,
codcliente int not null,
codtipo int not null,
numfone varchar(50) not null,
foreign key (codcliente) references clientes(codcliente),
foreign key (codtipo) references tipo(codtipo)
);

insert into clientes values 
(0001,'joão','casado','ana',3100.00),
(0002,'maria','solteira',default,7000.00),
(0003,'paulo','solteiro',default,4150.00),
(0004,'marcos','casado','laryssa',2700.00),
(0005,'Janio','casado','stefani',5300.00);

insert into tipo values
(01,'residencial'),
(02,'celular'),
(03,'comercial');

insert into fone values
(001,0001,02,'11 9874-3882'),
(002,0001,01,'55 3498-7333'),
(003,0002,01,'55 3978-4567'),
(004,0002,02,'21 9466-5875'),
(005,0002,03,'21 9877-2634'),
(006,0003,02,'11 9788-8273'),
(007,0004,02,'11 9836-4863'),
(008,0005,01,'55 3597-2846'),
(009,0005,02,'23 9978-3645'),
(010,0005,03,'23 9678-6653');

select * from fone;

select clientes.nomecliente,tipo.desctipo,fone.numfone 
from clientes 
inner join fone  
on clientes.codcliente=fone.codcliente 
inner join tipo  
on fone.codtipo=tipo.codtipo 
order by nomecliente;


