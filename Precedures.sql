/* Sintaxe do comando procedure 
	CREATE PROCEDURE nome_procedure
    (parametros) declarações;
    
    invocando o procedimento
    call nome procedimento(parametros)
*/
CREATE DATABASE virtualdc30;
USE virtualdc30;

CREATE TABLE tbl_clientes(
codigo int not null primary key auto_increment,
nome varchar(40) not null,
sexo char(1) not null,
nota decimal(10,2),
situacao varchar(20)
);

insert into tbl_clientes(nome,sexo,nota,situacao) values('Humberto','M',7.0,null);
insert into tbl_clientes(nome,sexo,nota,situacao) values('Ayrton Sena','M',4.0,null);
insert into tbl_clientes(nome,sexo,nota,situacao) values('Xuxa','F',6.0,null);

delimiter $$
create procedure listar_nome(IN id INT)
begin
	select * from tbl_clientes where codigo = id;
end $$

delimiter ;

call listar_nome(3);

drop procedure listar_nome;

delimiter $$
create procedure sp_lista_clientes (in opcao integer)
	begin
		if opcao = 0 then
			select * from tbl_clientes where sexo = 'F';
		else 
			if opcao = 1 then
				select * from tbl_clientes where sexo = 'M';
			else
				select * from tbl_clientes;
			end if;
		end if;
	end $$
delimiter ;

call sp_lista_clientes(0);

drop procedure sp_lista_clientes

delimiter $$
create procedure alterar_lista (in notavirtual decimal(10,2))
	begin
		if notavirtual >= 6.0 then
			update tbl_clientes set situacao = 'aprovado' where nota >= 6;
		else
			if notavirtual < 6.0 then
				update tbl_clientes set situacao = 'reprovado' where nota < 6;
			end if;
        end if;
	end $$
delimiter ;

call alterar_lista(5);

drop procedure alterar_lista;

select * from tbl_clientes;







