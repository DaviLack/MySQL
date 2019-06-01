create database comercio;

use comercio;

create table Vendedor (
codvendedor int primary key auto_increment,
nomevendedor varchar(50),
produtovendido varchar(50),
cidade char(40),
estado char(2),
email varchar(50),
valorvendido decimal(10,2),
valorcomissao decimal(10,2));

create table Produtos(
codproduto     int primary key,
nomeproduto    varchar(50),
precounitario  decimal(10,2),
quant          int,
precototal     decimal (10,2));

insert into vendedor values
(default, 'Joje das Vendas', 'carro', 'São Paulo', 'SP', 'jorjedasvendas@gmail.com', 35000.00, default);
insert into vendedor values
(default, 'Kleber', 'microondas', 'São Bernado', 'SP', 'Klebervendedor@hotmail.com', 250.50, default);
insert into vendedor values
(default, 'Maria dos Santos', 'Computador', 'São Paulo', 'SP', 'maria1235@gmail.com', 2500.00, default);
insert into vendedor values
(default, 'Rosangela das Rosas', 'Flores', 'São Paulo', 'SP', 'Rosangelarosas2424@gmail.com', 350.00, default);
insert into vendedor values
(default, 'Klebersvaldo', 'Máquina de lavar roupas', 'São Paulo', 'SP', 'Klebersvaldinho@hotmail.com', 600.00, default);
insert into vendedor values
(default, 'Manuel Marinheiro', 'Barco', 'Rio de Janeiro', 'RJ', 'ManuelMarinheiiro@yahoo.com', 5000.00, default);
insert into vendedor values
(default, 'Roberto', 'Teclado', 'Rio de Janeiro', 'RJ', 'RobertãoDosProdutos@yahoo.com', 120.00, default);
insert into vendedor values
(default, 'Cladio Perigoso', 'AK-47', 'Rio de Janeiro', 'RJ', 'ClaudioDasArmas@gmail.com', 2700.00, default);
insert into vendedor values
(default, 'José dos Frangos', 'Frango Assado', 'São Paulo', 'SP', 'FrangueiroTOP@hotmail.com', 20.00, default);
insert into vendedor values
(default, 'Jorje Rico', 'Barras de Ouro', 'São Paulo', 'SP', 'Burgues@gmail.com', 7000000.00, default);

insert into produtos values
(1, 'carro', 35000.00,  100, default),
(2, 'microondas', 25.00, 90, default),
(3, 'Computador', 2500, 70, default),
(4, 'Flores', 350.00, 10, default),
(5, 'Maquina de lavar roupas', 600.00, 20, default),
(6, 'Barco', 5000.00, 21, default),
(7, 'Teclado', 120.00, 27, default),
(8, 'AK-47', 2700.00, 25, default),
(9, 'Frango assado', 20.00, 40, default),
(10, 'Barras de ouro', 7000.00, 50, default);


update vendedor set valorcomissao = valorvendido / 10;

update produtos set precounitario = precounitario + (precounitario / 100);

update produtos set precototal = quant * precounitario;

delete from vendedor where codvendedor=7;

delete from vendedor where codvendedor=8;