/*sintaxe do comando procedure
CREATE PROCEDURE nome_procedure
(parametros) declarações;

invocando o procedimento
call nome procedimento(parametros)
*/


CREATE DATABASE virtualdc30;
USE virtualdc30;

create table tbl_clientes (
codigo int not null primary key auto_increment,
nome varchar(40) not null,
sexo char(1) not null,
nota decimal(10,2),
situacao varchar(20)
);

insert into tbl_clientes(nome,sexo,nota,situacao) values('Humberto','M',7.0,null);
insert into tbl_clientes(nome,sexo,nota,situacao) values('Ayrton Sena','M',4.0,null);
insert into tbl_clientes(nome,sexo,nota,situacao) values('Xuxa','F',6.0,null);

drop table tbl_clientes;
delimiter $$
create procedure sp_lista_clientes(in opcao integer)
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
CALL sp_lista_clientes(0);
CALL sp_lista_clientes(1);
CALL sp_lista_clientes(2);
DROP procedure sp_lista_clientes; 

delimiter $$
CREATE PROCEDURE listar_nome(IN id INT)
begin
    SELECT *  FROM tbl_clientes where codigo=id;
end $$
delimiter ;
DROP procedure listar_nome; 

CALL listar_nome(1);

delimiter $$
CREATE PROCEDURE alterar_lista(IN notavirtual decimal(10,2))
begin
   if notavirtual >= 6.0 then
      update tbl_clientes set situacao='aprovado' where nota>=6;
    else
    if notavirtual < 6.0 then
      update tbl_clientes set situacao='reprovado' where nota<6;
    end if;
   end if; 
end $$
delimiter ;
select * from tbl_clientes;

CALL alterar_lista(6);
CALL alterar_lista(5);


DROP procedure alterar_lista; 





