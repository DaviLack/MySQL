CREATE DATABASE innerjoin;

USE innerjoin;



create table depto(
	cod_depto int not null primary key,
	nome_depto varchar(30)
);

create table cadfun(
	codfun  int not null primary key,
    nome    varchar(40) not null,
    depto   int not null,
    funcao  char(20),
    filhos  int,
    salario decimal (10, 2),
	foreign key (depto) references depto(cod_depto)
);
	
	

insert into depto values
(1, 'Peões'),
(2, 'Estagiários'),
(3, 'Profissionais'),
(4, 'Chefes');

insert into cadfun values (99, 'Jorje', '4', 'Dono da Empresa', 2, 7000000.00);
insert into cadfun values (24, 'Carlão Uva Passa', '3', 'Cozinheiro', 1, 7500.00);
insert into cadfun values (69, 'Maria do Barro', '1', 'Pedreira', null, 4300.00);
insert into cadfun values (96, 'Paulette', '1', 'Faxineira', 0, 2499.99);
insert into cadfun values (42, 'Luiz', '1', 'Fogueteiro', 1, 750.00);
insert into cadfun values (66, 'Inacio', '2', 'Ajudante do Ladrão', null, 350.00);   
insert into cadfun values (00, 'Lula da Silva', '2', 'Ladrão', 0, 9999999.00);

select * from depto inner join cadfun on cod_depto = depto order by nome_depto;

select cadfun.nome, depto.cod_depto, depto.nome_depto from cadfun inner join depto on depto = cod_depto where depto.cod_depto between 1 and 3 and cadfun.salario >= 2000;