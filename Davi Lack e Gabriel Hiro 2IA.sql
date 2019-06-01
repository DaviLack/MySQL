create database comercio;
use comercio;

create table vendedor(
codvendedor int primary key,
nomevendedor varchar(50),
produtovendido varchar(50),
cidade char(40),
estado char(2) ,
email varchar(50),
valorvendido decimal(10,2),
valorcomissao decimal(10,2));

create table produtos(
codproduto int primary key,
nomeproduto varchar(50),
precounitario decimal(10,2),
quant int,
precototal decimal (10,2));

insert into vendedor values
(1, 'Carlos', 'carteira', 'São Paulo', 'SP', 'carlos.carlos@gmail.com',5000, null),
(2, 'Robertão', 'Geladeira', 'São Paulo', 'SP', 'robertão.com@gmail.com',15000, null),
(3, 'Maria do Bairro', 'Produtos Ivone', 'São Paulo', 'SP', 'MariaDosIvone@yahoo.com',30000, null),
(4, 'Humberto', 'teclado', 'São Paulo', 'SP', 'humberto.a.a@gmail.com',2000, null),
(5, 'João', 'Gel', 'Rio de Janeiro', 'RJ', 'joaozin@yahoo.com',1500, null);

insert into produtos values
(1, 'carteira', 50, 105, null),
(2, 'Geladeira', 1500, 25, null),
(3, 'Produtos Ivone', 150, 200, null),
(4, 'teclado', 100, 75, null),
(5, 'Gel', 20, 100, null);

-- 1
delimiter $$
create procedure calcularcomissao()
begin
	update vendedor set valorcomissao = valorvendido * 0.1;
end $$
delimiter ;

call calcularcomissao();



-- 2
delimiter $$
create procedure aumentarprecoproduto()
begin
	update produtos set precounitario = precounitario + (precounitario * 0.1);
end $$
delimiter ;

call aumentarprecoproduto();



-- 3
delimiter $$
create procedure precototal(in produto int)
begin
	update produtos set precototal=quant*precounitario;
	select *  from produtos where codproduto = produto;
end $$
delimiter ;

call precototal(3);
drop procedure precototal;


-- 4
delimiter $$
create procedure demitir(in id int)
begin
	delete from vendedor where codvendedor=id;
    select * from vendedor;
end $$
delimiter ;

call demitir(4);
drop procedure demitir;