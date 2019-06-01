--                                               COMANDOS PARA A CRIAÇÃO DO BANCO (DDL)
create database EmpresaDeCongelados;

use EmpresaDeCongelados;

create table cliente (
idcliente int primary key not null auto_increment,
nome varchar(50) not null,
endereco varchar(50) not null,
referencia varchar(50) not null,
telefone int not null
);

create table cardapio (
idprato int primary key not null auto_increment,
nomeprato varchar(30) not null,
descricao varchar(100) not null,
preco decimal(10,2) not null,
alteracaodata varchar(15) not null
);

create table comanda (
idcomanda int primary key not null auto_increment,
idprato int not null
);

insert into cliente values
(default, 'Joãozinho Do Norte', 'Rua Santos Drumõn', 'Ao lado do Hospital', '08007771'),
(default, 'kleber Svaldo', 'Rua dos Lobos', 'Perto da Delegacia', '40028922'),
(default, 'Claudia Do Beco', 'Rua da Augusta', 'Ao lado esquerdo do Beco', '68735400'),
(default, 'Rafaela Vrawaski', 'Rua Marinheiro', 'Perto do Laboratório', '57935420'),
(default, 'Estevaldo Johnson', 'Rua Desconhecida', 'Ao lado da Área 51', '76584295');

insert into cardapio values
(default, 'Macarrão ao Molho Xorume','Prato da Arábia com um pouco do Brasil',15000.00,'22/08/2009'),
(default, 'Feijão com Arroz','Prato tipico do Brasil',10000.00,'26/03/2017'),
(default, 'Frango ao Molho de Jiló','Muito conhecido no sul da Malásia e de Cuba',9000.00,'26/03/2018'),
(default, 'Miojo sem Tempero','Prato em fase de testes, com uma boa avaliação será o prato da casa',85000.00,'01/03/2016'),
(default, 'Batata doce salgada','Recomendado pelos melhores chefes do sul da Rússia',2000.00,'15/07/20017');

insert into comanda values
(default,3),
(default,5),
(default,4),
(default,1),
(default,2);



