CREATE DATABASE JorjeFiltragem;

USE JorjeFiltragem;

create table cadfun(
	codfun  int not null primary key,
    nome    varchar(40) not null,
    depto   char(2) not null,
    funcao  char(20),
    filhos  int,
    salario decimal (10, 2));
    
insert into cadfun values (99, 'Jorje', '2', 'Dono da Empresa', 2, 7000000.00);
insert into cadfun values (24, 'Carlão Uva Passa', '3', 'Cozinheiro', 1, 7500.00);
insert into cadfun values (69, 'Maria do Barro', '1', 'Pedreira', null, 4300.00);
insert into cadfun values (96, 'Paulette', '1', 'Faxineira', 0, 2499.99);
insert into cadfun values (42, 'Luiz', '2', 'Fogueteiro', 1, 750.00);
insert into cadfun values (66, 'Inacio', '3', 'Ajudante do Ladrão', null, 350.00);   
insert into cadfun values (00, 'Lula da Silva', '1', 'Ladrão', 0, 9999999.00);
	
    
-- SELECT SIMPLES
    
    select nome, salario, depto, funcao from cadfun where codfun = 00;
	
    
    select codfun, nome, salario from cadfun where salario >= 2000;
    select codfun, nome, salario from cadfun where salario <= 2000;
    
    select * from cadfun where codfun >= 66;
    

-- SELECT ORDER BY
	
    select * from cadfun order by nome;
    
    select * from cadfun order by salario;
    
    select * from cadfun order by codfun;
    
    -- desc deixa ele em ordem decrescente
    
    select * from cadfun order by nome desc; 
    
    select * from cadfun order by salario desc;
    
    select * from cadfun order by codfun desc;

-- SELECT COM DISTINCT que serve para tirar registros iguais
	
    select filhos from cadfun;
    
    select distinct filhos from cadfun;
	

-- SELECT JUNTO COM OPERADORES LOGICOS
    
    select * from cadfun where salario >= 2000 and depto = '1';
    
    select nome, salario from cadfun where salario >=10000 or depto = 2 or depto = 3;
    
    select nome, salario, funcao, filhos from cadfun where filhos <= 2;
    
    select * from cadfun where nome = 'Carlão Uva Passa';
    

-- SELECT JUNTO COM OPERADORES AUXILIARES

-- SELECT JUNTO COM IS NULL
	select * from cadfun where filhos is null;
    
    select * from cadfun where filhos is null and codfun = 69;
    
-- SELECT JUNTO COM NOT
	select * from cadfun where filhos is not null;
    
-- SELECT JUNTO COM IN
    select * from cadfun where depto in(1, 3);
    
    select * from cadfun where funcao in('Ladrão', 'Cozinheiro', 'Faxineira', 'Garçom');
    
    
    select * from cadfun where funcao not in('Ladrão', 'Cozinheiro', 'Faxineira', 'Garçom');
    
-- SELECT JUNTO COM BETWEEN

	select * from cadfun where codfun between 50 and 99;
    
    select * from cadfun where codfun between 0 and 49;
    
	select * from cadfun where codfun not between 0 and 49;
    
	select * from cadfun where codfun not between 50 and 99;
    
    