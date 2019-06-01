--  COMANDOS PARA A CRIAÇÃO DO BANCO (DDL)


create database Empresa;

use Empresa;

create table cursos(
codigo int primary key not null,
nome varchar(50) not null,
preço decimal(10,2) not null,
duracao varchar(30) not null
);

create table instrutor(
codigo int primary key not null,
nome varchar(50) not null,
endereco varchar(50) not null,
telefone int not null,
modulos varchar(50) not null,
cidade varchar (50) not null,
estado varchar (2) not null,
disciplina varchar (50) not null,
periodo varchar (50) not null
);

create table aluno(
codigo int primary key not null,
nome varchar(50) not null,
endereco varchar(50) not null,
telefone int not null,
cidade varchar (50) not null,
estado varchar (2) not null,
bairro varchar (50) not null,
cursosrealizados varchar (50) not null
);


-- COMANDOS PARA INSERÇÂO DE DADOS (DML)

insert into instrutor values 
(1, 'Jorge das Quebrada', 'Rua jorge dos washinton', '08007771','Curso de Tomar Café', 'São Paulo', 'SP', 'Matemática', '1,2'),
(2, 'João Paulo','Rua Kleber dos Santos','08004682','Curso de Construção de Canecas', 'São Paulo', 'SP', 'Matemática', '1' ),
(3, 'Jannete Claudia','Avenida rapida de São Paulo','08002183', 'Curso de Máquinas de Café', 'São Paulo', 'SP', 'Manutenção de Maquinas', '1,2,3'),
(4, 'Joana Joaninha','Rua Pedrinho rapido','08006835', 'Curso de Plantio do Café', 'São Paulo', 'SP', 'Utilização de enxadas', '3'),
(5, 'Pedrinho Pedroso','Rua Pedrinho Matos','09002543', 'Construção de Canecas', 'São Paulo', 'SP', 'Criar Canecas, Português, Cozinha', '1,3');

insert into aluno values 
(1, 'Maria do Bairro', 'Rua do Bairro', '08002463', 'São Paulo', 'SP', 'Mooca', 'Curso de Tomar Café'),
(2, 'Mariana Mendes','Rua Pimposo','08001735',  'São Paulo', 'SP', 'Mooca', 'Curso de Máquinas de Café'),
(3, 'Mario do Armário','Avenida da Mandioca','08004382', 'São Paulo', 'SP', 'Mooca', 'Curso de Tomar Café, Curso de Plantio de Café'),
(4, 'Jonas do Sul','Rua Pereira','08004723', 'São Paulo', 'SP', 'Mooca', 'Curso de Contrução de Canecas'),
(5, 'Jonas do Norte','Rua Joãozinho','76284350', 'São Paulo', 'SP', 'Mooca', 'Curso de Contrução de Canecas');

insert into cursos values 
(1, 'Curso de Tomar Café', 15000.00, '5 dias'),
(2, 'Curso de Construção de Canecas', 20000.00, '10 noites'),
(3, 'Curso de Máquinas de Café', 25000.00, '4 sábados'),
(4, 'Curso de Plantio do Café', 90000.00, '5 dias');