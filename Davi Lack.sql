create database empresa;

use empresa;

create table funcionarios(
id int primary key not null auto_increment,
nome varchar(30) not null,
sobrenome varchar(30) not null,
email varchar(40) not null,
idiomas varchar(50),
funcao varchar(30) not null,
salario decimal(10,2) not null,
filhos int,
estado char(2) not null,
horastrabalho varchar(5) not null
);

insert into funcionarios values
(default, 'Carlos', 'Santos', 'CarlinhosS@gmail.com', 'Ingles', 'Programador', 2500, null, 'SP', 342),
(default, 'Roberta', 'Souza', 'RobertonaSouza@yahoo.com', 'Espanhol', 'Cozinheira', 1500, 1, 'RJ', 470),
(default, 'Renato', 'Borges', 'Renatinho@yahoo.com', null,' Eletricista', 1750, 2, 'SP', 543),
(default, 'Silvio', 'Santos', 'SilvioSantos@silviosantos.com.br', 'Ingles, Espanhol, Frances, Japones', 'Dono', 99999999.99, 5, 'SP', 9999),
(default, 'Alex', 'Vinagre', 'alexxxvinagre@gmail.com', 'Ingles', 'Faxineiro', 1250, 2, 'SP', 200),
(default, 'Alexandre', 'Alexandriz', 'AlexxAlexx@yahoo.com', 'Alemao', 'Segurança', 2500, 3, 'CE', 700),
(default, 'Marcos', 'Relampago', 'relampagomarquinhos@etec.sp.gov.br', 'Japones',' Entregador', 1250, null, 'RJ', 450),
(default, 'Janete', 'Tim', 'janetetimmm123@outlook.com', null, 'Cozinheira', 1500, 3, 'BA', 300),
(default, 'Bento', 'Chico', 'ChicoDoBento@gmail.com', 'Russo', 'Faxineiro', 1250, 1, 'RS', 200),
(default, 'Davi', 'Lack', 'davi.brito01@etec.sp.gov.br', 'Ingles', 'Analista', 9500, null, 'SP', 1000);

-- UPDATE

-- 1) Reajuste no salario do id 10
	update funcionarios set salario = salario + 500 where id = 10;

-- 2) Reajuste nas horas de trabalhos dos funcionários
	update funcionarios set horastrabalho = horastrabalho + 54;

-- 3) Reajuste no email do id 3
	update funcionarios set email = 'RenatinBorges@gmail.com' where id = 3;



-- DELETE

-- 1) Demissão do funcionario com id = 6

	delete from funcionarios where id = 6;
    
-- 2) Demissão do funcionario Renato Borges com id = 3

	delete from funcionarios where nome = 'Renato' and sobrenome = 'Borges' and id = 3; 
  
  
  
-- SELECT
    
-- 1) Consultar todos os campos dos funcionários que começam com a letra R
    
    select * from funcionarios where nome like 'R%';
    
-- 2) Consultar os campos id, salario e horastrabalho dos funcionários com horas de trabalho entre 500 e 1000

    select id, salario, horastrabalho from funcionarios where horastrabalho between 500 and 2000;
    
-- 3) Consultar todos os campos dos funcionários que falam ingles ou espanhol
	
    select * from funcionarios where idiomas in ('ingles', 'espanhol');
    
-- 4) Consultar todos os campos dos funcionários que não falam nenhum outro idioma
	
    select * from funcionarios where idiomas is null;
    
-- 5) Consultar o id, nome, sobrenome e a função dos funcionários que são cozinheiros e faxineiros

	select id, nome, sobrenome, funcao from funcionarios where funcao like 'cozinheir%' or funcao like 'faxineir%';
    
-- 6) Consultar o id, nome, sobrenome e idiomas dos funcionários que falam ingles e nasceram em São Paulo

	select id, nome, sobrenome, idiomas from funcionarios where idiomas like '%ingles%' and estado = 'SP';

-- 7) Consultar o id e o nome dos funcionarios que não possuem horas de trabalho superior a 300

	select id, nome from funcionarios where horastrabalho < 300;
    
-- 8) Consultar o nome dos funcionarios que não possuem 3 filhos

	select nome from funcionarios where filhos not in(3);
