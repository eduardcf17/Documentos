drop table contador;
create table contador(DATOS VARCHAR (225));
drop trigger contador;
set @ex2=0;

delimiter //
create trigger contador after update on empresa.COMANDA
		for each row 
        BEGIN
        set @ex2=@ex2+1 ;
        insert into contador(datos) values(concat(@ex2," ",curtime()));
        END;//
delimiter ;