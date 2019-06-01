create database compras;

use compras;

create table categoria(
	nome varchar(60) not null primary key
);

create table fornecedor(
	nome varchar(60) not null primary key
);

create table produtos(
	codigo varchar(6) not null primary key,
	descricao varchar(30) not null,
	categoria varchar(60) not null,
    fornecedor varchar(60) not null,
    quantidade int not null,
    preco decimal(10,2) not null,
    foreign key(categoria) references categoria(nome),
    foreign key(fornecedor) references fornecedor(nome)
);

insert into categoria values
('BEBIDAS'),
('FRUTAS/VERDURAS'),
('CARNES/AVES'),
('LATICINIOS'),
('CEREAIS');

insert into fornecedor values
('LIQBEB'),
('FRUTORT'),
('SAMPCAR'),
('DISTBEB'),
('LATICAL'),
('CERVAL'),
('FRANCAR');

insert into produtos values
('A0001', 'CERVEJA', 'BEBIDAS', 'LIQBEB', 10, 22.00),
('A0003', 'ALFACE CRESPA', 'FRUTAS/VERDURAS', 'FRUTORT', 12, 18.00),
('B0001', 'PICANHA MATURADA', 'CARNES/AVES', 'SAMPCAR', 14, 70.00),
('B0010', 'ÁGUA MINERAL', 'BEBIDAS', 'DISTBEB', 10, 15.00),
('C0002', 'SUCO DE ACEROLA', 'BEBIDAS', 'DISTBEB', 10, 17.00),
('C0004', 'QUEIJO MINAS', 'LATICINIOS', 'LATICAL', 11, 38.00),
('A0002', 'ALCATRA', 'CARNES/AVES', 'SAMPCAR', 8, 55.00),
('B0002', 'ASA DE FRANGO', 'CARNES/AVES', 'FRANCAR', 15, 35.00),
('C0001', 'ARROZ INTEGRAL', 'CEREAIS', 'CERVAL', 13, 20.00),
('C0003', 'FLOCOS DE AVEIA', 'CEREAIS', 'CERVAL', 12, 25.00),
('A0004', 'PÊSSEGOS', 'FRUTAS/VERDURAS', 'FRUTORT', 10, 22.00),
('B0003', 'SUCO DE UVA', 'BEBIDAS', 'DISTBEB', 15, 16.00);

-- MAX

-- 1) Mostrar preço do produto com maior preço na loja
		select max(preco) as Caro from produtos;

-- 2) Mostrar a quantidade do produto que está em maior quantidade no estoque
		select max(quantidade) as Maior_Quantidade from produtos;

-- 3) Mostrar o preço do produto com maior valor na categoria cereais
		select max(quantidade) as Maior_Quantidade from produtos where categoria="cereais";

-- MIN

-- 1) Mostrar o preço do produto com menor valor na loja
		select min(preco) as Barato from produtos;

-- 2) Mostrar a quantidade do produto que está em menor quantidade no estoque
		select min(quantidade) Menor_Quantidade from produtos;

-- 3) Mostrar o preço do produto de menor valor na categoria bebidas
		select min(preco) as Barato from produtos where categoria="bebidas";

-- AVG

-- 1) Calcular a média dos preços da loja
		select avg(preco) as media_preco from produtos;

-- 2) Calcular a média dos produtos em estoque
		select avg(quantidade) as media_quantidade from produtos;

-- 3) Calcular a média de produtos do fornecedor CERVAL
		select avg(quantidade) as media_quantidade from produtos where fornecedor="cerval";  
        
-- SUM

-- 1) Some o total de produtos em estoque
		select sum(quantidade) as total_produtos from produtos;

-- 2) Some o total de produtos em estoque do fornecedor DISTBEB
		select sum(quantidade) as total_produtos from produtos where fornecedor="distbeb";

-- 3) Some o preço de todos os produtos da categoria FRUTAS/VERDURAS
		select sum(preco) as total_preco from produtos where categoria = "frutas/verduras";
        
-- COUNT

-- 1) Mostrar o número de produtos que são fornecidos pela LATICAL
		select count(quantidade) as quantidade_produtos from produtos where fornecedor="latical";

-- 2) Mostrar o número de produtos que são da categoria CARNES/AVES
		select count(quantidade) as quantidade_produtos from produtos where categoria="carnes/aves";

-- GROUP BY

-- 1) Organize os preços em ordem crescente
		select descricao, preco from produtos group by preco asc;

-- 2) Organize os protudos em ordem crescente pelos nomes
		select descricao from produtos group by descricao asc;  
        
-- 3) Organize os produtos em ordem alfabetica pelos fornecedores
		select descricao, fornecedor from produtos group by fornecedor asc;

-- 4) Organize os produtos em ordem decrescente pelo código
		select codigo, descricao from produtos group by codigo asc;

-- HAVING

-- 1) Mostrar os nomes e quantidades dos produtos com quantidade igual a 10 ou inferior
		select descricao, quantidade from produtos having quantidade <= 10;

-- 2) Mostrar os nome e preços dos produtos com preço igual ou maior que R$ 25.00
		select descricao, preco from produtos having preco >= 25;







