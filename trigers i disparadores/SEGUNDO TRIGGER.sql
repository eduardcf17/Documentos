use empresa;
drop table contador;
create table contador(numero int auto_increment primary key,tiempo timestamp);
drop trigger contador;

delimiter //
create trigger contador after update on empresa.COMANDA
		for each row 
        BEGIN
        insert into contador values(0,default);
        END;//
delimiter ;