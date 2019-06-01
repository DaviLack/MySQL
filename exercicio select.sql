create database virtualpc;

use virtualpc;

create table cadfun(
codfun  int primary key not null auto_increment,
nome   varchar(50) not null,
sobrenome varchar(50) not null,
depto   varchar(30) not null,
deptonum varchar(10) not null,
funcao  varchar(30) not null,
salario  decimal (10,2) not null,
filhos   smallint
);

insert into cadfun values
(default, 'Jorge', 'da Silva', 'Caminhões', 1, 'Caminhoneiro', 7500.00, 5),
(default, 'Silvano','Santos', 'Limpeza', 2,  'Faxineiro', 1500.00, 2),
(default, 'Maria', 'Betina', 'Elétrica', 3, 'Eletricista', 10000.00, 1),
(default, 'Kleber','Silva', 'Informática', 4, 'Programador', 7500.00, 4),
(default, 'Silveiro', 'Roberto', 'Cozinha', 5,'Cozinheiro', 2000.00, 0),
(default, 'Silvamero','Santos', 'Gerência', 6, 'Gerente', 15000.00, 3),
(default, 'João', 'Silva', 'Cozinha', 5, 'Cozinheiro', 2000.00, 0),
(default, 'Silvinho', 'Bartolomeu', 'Limpeza', 2, 'Faxineiro', 1500.00, 1),
(default, 'Antonio', 'Santos', 'Informática', 4, 'Analista', 1200.00, 2),
(default, 'Arthur', 'da Silva', 'Elétrica', 3,'Eletricista', 10000.00, 2);

select * from cadfun;

-- 1- +, -, /, *, %

-- 2- as barras "()"

-- 3- =, <, >, <=, >=, <>

-- 4- and, or, not

-- 5- LIKE, BETWEEN, IN

-- 6- Com o SELECT

-- 7
	select codfun, nome ,salario + 250 as salario from cadfun;
    
-- 8	
	select codfun, nome ,salario - (salario * 0.075) as salario from cadfun;

-- 9
	select * from cadfun where funcao = 'analista';
    
-- 10
	select * from cadfun where salario >= '1700.00';
    
-- 11
	select * from cadfun where salario > '1700.00';
    
-- 12
	select * from cadfun where salario < '1700.00';
    
-- 13 
	select * from cadfun where salario = '1700.00';

-- 14 
	select * from cadfun where funcao = 'programador' or funcao = 'analista';
    
-- 15
	select * from cadfun where funcao = 'programador' and salario >	1200 or funcao = 'analista' and salario > 1200;

-- 16
	select * from cadfun where funcao not in ('programador','analista');
    
-- 17
	select * from cadfun where filhos between 2 and 4;
    
-- 18 
	select * from cadfun where filhos between 2 and 4 and salario < 2000;
        
-- 19
	select * from cadfun where filhos not in (2, 3);

-- 20
	select * from cadfun where filhos not in (2, 3, 0);

-- 21	
	select * from cadfun where filhos in (2, 3);
    
-- 22
	select * from cadfun where sobrenome like '%SILVA%';
    
-- 23
	select * from cadfun where nome like 'SILV%';

-- 24
	select nome from cadfun where sobrenome like '%Santos%';
    
-- 25
	select depto from cadfun where funcao in('gerente', 'analista');
    
-- 26
	select codfun, nome, depto from cadfun where codfun in (2, 5, 9, 27);
    
-- 27
	select nome, depto from cadfun where deptonum not in (5);
    
-- 28
	select * from cadfun where nome like '%SILVA%';
    
-- 29
	select * from cadfun where salario not in (2000);

-- 30
	select SUM(salario) as salario from cadfun;
	






























    
    

