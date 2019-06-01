create database escola;

use escola;

create table professor(
nomeprofessor varchar(50) not null,
codprofessor int not null primary key,
especialidade varchar(50) not null
);

create table turma(
idturma varchar(3) not null primary key,
codprofessor int not null,
periodo varchar(50) not null,
classe varchar(20) not null,
foreign key (codprofessor) references professor(codprofessor)
);

create table aluno(
 prontuario int not null primary key,
 nomealuno varchar(50) not null,
 idturma varchar(3) not null,
 classe varchar(20) not null,
 periodo varchar(50) not null,
 foreign key (idturma) references turma(idturma)
);

create table conselho(
codprofessor int not null,
especialidade varchar(50) not null,
idturma varchar(3) not null,
classe varchar(20) not null,
foreign key (idturma) references turma(idturma),
foreign key (codprofessor) references professor(codprofessor)
);


insert into professor values 
('José',001,'Matemática'),
('Eliana',002,'Língua Portuguesa'),
('Fernando',003,'Geografia'),
('Celso',004,'História');

insert into turma values
(301,001,'Manhã','Primeiro Ano M.'),
(302,004,'Tarde','Quinto Ano Fund.'),
(303,002,'Manhã','Segundo Ano M.'),
(304,003,'Tarde','Nono Ano Fund.');

insert into aluno values
(517723,'Rogério Piro Cadefogo',304,'Nono Ano Fund.','Tarde'),
(400289,'Paula Tejando',302,'Quinto Ano Fund.','Tarde'),
(264528,'Mario Quetecome',301,'Primeiro Ano Fund.','Manhã'),
(371265,'Rodolf Inho',303,'Segundo Ano M.','Manhã');

insert into conselho values
(002,'Língua Portuguesa',303,'Segundo Ano M.'),
(001,'Matemática',301,'Primeiro Ano M.'),
(003,'Geografia',304,'Nono Ano Fund.'),
(004,'História',302,'Quinto Ano Fund.');






















