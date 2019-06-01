CREATE DATABASE barraca;

USE barraca;

CREATE TABLE cadastro (
id int not null primary key,
nome varchar(40) not null,
sobrenome varchar(50) not null,
endereco varchar(50),
cidade char(30));

INSERT INTO CADASTRO VALUES (1, 'Marcos', 'Andre', 'Rua nove, 100', 'São Paulo');
INSERT INTO CADASTRO VALUES (2, 'Andre', 'Santos', 'Rus dez, 40', 'Rio de Janeiro');
INSERT INTO CADASTRO VALUES (3, 'Roberto', 'Santos', 'Rua quinze, 10', 'São Paulo');
INSERT INTO CADASTRO VALUES (4, 'Carlos', 'Amaral', 'Rua nove, 40', 'Minas Gerais');
INSERT INTO CADASTRO VALUES (5, 'Carlos', 'Marcos', 'Rua onze, 50', 'São Paulo');
INSERT INTO CADASTRO VALUES (6, 'Amauri', 'Lopes', 'Av Santos, 2', 'Rio de Janeiro');
INSERT INTO CADASTRO VALUES (7, 'Marcio', 'Garcia', 'Av.Santos, 20', 'São Paulo');

SELECT * FROM cadastro;

/* % busca todos */

SELECT * FROM cadastro WHERE cidade LIKE '%s';

SELECT * FROM cadastro WHERE nome LIKE '%m%';

SELECT * FROM cadastro WHERE endereco LIKE '%e%';

SELECT * FROM cadastro WHERE sobrenome LIKE '%santos%';

SELECT * FROM cadastro WHERE sobrenome LIKE '%s%';

/* busca um caracter específico*/

SELECT * FROM cadastro WHERE nome LIKE '_a%';

SELECT * FROM cadastro WHERE sobrenome LIKE '_a%';

SELECT * FROM cadastro WHERE cidade LIKE '_io%';

SELECT * FROM cadastro WHERE sobrenome LIKE 'a_d%';


