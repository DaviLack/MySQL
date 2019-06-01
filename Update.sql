CREATE DATABASE JorjeUpdate;

USE JorjeUpdate;

create table cadfun(
	codfun  int not null primary key,
    nome    varchar(40) not null,
    depto   char(2) not null,
    funcao  char(20),
    filhos  int,
    salario decimal (10, 2));
    
insert into cadfun values (99, 'Jorje', '2', 'Dono da Empresa', 2, 7000000.00);
insert into cadfun values (24, 'Carlão Uva Passa', '3', 'Cozinheiro', 1, 7500.00);
insert into cadfun values (69, 'Maria do Barro', '1', 'Pedreira', 4, 4300.00);
insert into cadfun values (96, 'Paulette', '1', 'Faxineira', 0, 2499.99);
insert into cadfun values (42, 'Luiz', '2', 'Fogueteiro', 1, 750.00);
insert into cadfun values (66, 'Inacio', '3', 'Ajudante do Ladrão', 3, 350.00);   
insert into cadfun values (00, 'Lula da Silva', '1', 'Ladrão', 0, 9999999.00);


update cadfun set nome = 'Carlão Uva Passa' where codfun = '24';
update cadfun set filhos = '37';
update cadfun set salario = 1250 where nome = 'Luiz';
update cadfun set nome = 'Paulette Ferreira' where nome = 'Paulette';
update cadfun set depto = 2 where depto >= 3;
update cadfun set depto = 1 where depto = 3 or depto = 2;
update cadfun set funcao = 'Pedreira Qualidade', salario = 5000.00 where codfun = 69;

-- diminuição de 1 % em todos os salarios

update cadfun set salario = salario - (salario*0.07);
update cadfun set salario = salario + 500 where codfun = 42;


select * from cadfun;
