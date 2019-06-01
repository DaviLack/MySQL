
create database loja;
use loja;

create table produtos(
codigo int not null primary key,
descricao varchar(50) not null,
precovenda decimal(10,2),
precocusto decimal(10,2),
categoria int(11),
genero varchar(20)
);

insert into produtos values
(1,'caderno',5.45,1.00,1,'papelaria'),
(2,'caneta',1.20,0.50,1,'papelaria'),
(3,'cd',1.00,0.10,2,'informatica'),
(4,'mouse',14.00,5.00,2,'informatica');

/* A função MAX analisa um conjunto de valores e retorna o maior entre eles */

select max(precovenda) from produtos;

/* MIN analisa um grupo de valores e retorna o menor entre eles */

select min(precovenda) from produtos;

/* A função SUM realiza a soma dos valores em uma única coluna e retorna esse resultado */

select sum(precovenda) from produtos where categoria=1;
select sum(precovenda) from produtos where genero='informatica';
select genero,sum(precovenda) from produtos where genero='informatica';

/* Podemos utilizar a palavra-chave as para criar um apelido para a coluna */

select sum(precovenda) as total_venda from produtos where categoria = 1;

/*  A função AVG faz a média aritimética da coluna*/

select avg(precovenda) as media_venda from produtos where categoria = 1;

/* A função count retorna o total de linhas selecionadas na coluna*/

select count(precovenda) as contagem_categoria from produtos where categoria = 1;

/* Ao utilizar a cláusula GROUP BY dividimos os registros que serão agregados em grupos de valores */

