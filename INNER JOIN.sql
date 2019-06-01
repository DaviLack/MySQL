create database oficina;

use oficina;

create table clientes(
cod_cliente int not null primary key,
nome varchar(40) not null,
endereco varchar (100) not null,
cidade varchar(20),
estado char(2),
email varchar(50)
);



insert into clientes values(1,'Mateus','Rua Dona Sara','São Paulo','SP','mateus.93@hotmail.com');

insert into clientes values(2,'Maria Letícia','Rua Padre Germano Mayer','Rio de Janeiro','RJ','Kisteola@hotmail.com');

insert into clientes values(3,'Felipe','AV.Paulista','São Paulo','SP','lipinho_89@hotmail.com');

insert into clientes values(4,'Tortuguita','Rua Do Rogério','Rio De Janeiro','RJ','tortuga_tortuguita_rogerio_bobo@hotmail.com');

select * from clientes;


create table carro(
cod_carro int not null primary key,
cod_cliente int,
modelo varchar(20) not null,
marca char(20),
placa varchar(7) not null,
cor char(15)
);



insert into carro values(1,1,'Stilo','Fiat','BCJ2358','Amarelo');

insert into carro values(2,2,'Honda Civic','Honda','DPX1477','Prata');

insert into carro values(3,1,'Golf','Honda','MAT2569','Preto');

insert into carro values(4,2,'Fiat Adventure','Fiat','MAH1345','Preto');

insert into carro values(5,3,'Fusca','Wolkswagem','LIP2424','Verde');

insert into carro values(6,4,'Gol','Wolkswagem','LIP2525','Marrom');

insert into carro values(7,1,'Brasilia','Wolkswagem','UPO2525','Preto');

insert into carro values(8,4,'Uno','Fiat','UOI3434','Azul');


select clientes.*, carro.* from clientes inner join carro on clientes.cod_cliente = carro.cod_cliente;

select clientes.nome,clientes.cod_cliente, carro.cod_carro from clientes inner join carro on clientes.cod_cliente = carro.cod_cliente;

select clientes.*, carro.* from clientes inner join carro on clientes.cod_cliente = carro.cod_cliente where clientes.cod_cliente = 1;

select clientes.*, carro.* from clientes inner join carro on clientes.cod_cliente = carro.cod_cliente where clientes.cidade = 'São Paulo';

select clientes.*, carro.* from clientes inner join carro on clientes.cod_cliente = carro.cod_cliente where clientes.cidade = 'São Paulo' and carro.cor = 'preto';

select clientes.*, carro.* from clientes inner join carro on clientes.cod_cliente = carro.cod_cliente where carro.cod_carro = 1;

select a.nome, a.cod_cliente, b.cod_carro from carro as b inner join clientes as a on a.cod_cliente = b.cod_cliente where b.cod_cliente = 2;

