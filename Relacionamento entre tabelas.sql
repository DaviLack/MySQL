create database empresa;

use empresa;

create table depto(
	coddepto varchar(5) not null primary key,
    nomedepto varchar(5) not null
);

insert into depto values
('A01', 'ADM'),
('B04', 'TI'),
('F05', 'RH');

select * from depto;

create table funcionario(
	codfun int not null primary key,
    nomefun varchar(50) not null,
    coddepto varchar(5) not null,
    salario decimal(10,2) not null,
    foreign key (coddepto) references depto(coddepto)
);

insert into funcionario values
(1, 'Roberto', 'A01', 2000.00),
(2, 'Vagner', 'A01', 2000.00),
(3, 'Emanuel', 'F05', 3000.00),
(4, 'Marquinhos', 'B04', 4000.00),
(5, 'Jorje', 'B04', 4000.00),
(6, 'Ashley', 'B04', 3000.00);

insert into funcionario values (7, 'Marileine', 'X47', 2500.00); -- ErRo PoRqUe NãO eXiStE cOdDePtO X47

