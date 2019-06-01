--                                               COMANDOS PARA A CRIAÇÃO DO BANCO (DDL)

create database banco

use banco


create table cadastro (
codfun int not null primary key,
nomefun varchar(50) not null,
depto char(2) not null,
funcao varchar(30),
salario decimal(10,2));


--                                               COMANDOS PARA SELEÇÂO DE DADOS (DQL)

select * from cadastro;

select codfun, nomefun from cadastro;


--                                               COMANDOS PARA CONSULTA DE DADOS (SRC)

SP_HELP cadastro

--                                               COMANDOS PARA MANIPULAÇÂO DE DADOS (DML)
-- Inserção de dados uma de cada vez

insert into cadastro (codfun, nomefun, depto, funcao, salario);

values (001, 'Jorge das Quebrada', 'RH', 'Tomar Café', 15000.00);

insert into cadastro (codfun, nomefun, depto, funcao, salario);
values (002, 'Kleber Batman da Silva', 'RH', 'Tomar Café com o Jorge', 30000.00);

update cadastro set nomefun = 'Carlão Uva Passa' where codfun = '001';

--Inserção de dados em massa

insert into cadastro values 
(001, 'Jorge das Quebrada', 'RH', 'Tomar Café', 15000.00),
(002, 'Kleber Batman da Silva', 'RH', 'Tomar Café com o Jorge', 30000.00);

-- exclusão de dados ou de tabalas

delete from cadastro;                  --DELETA A TABELA INTEIRA

delete from cadastro where cod=4;       -- DELETA OS DADOS DO CODIGO 4 NA TABELA CADASTRO































