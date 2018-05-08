drop trigger restTotal;
delimiter //
create trigger restTotal after delete on empresa.COMANDA
		for each row 
        BEGIN
        set @suma=@suma-old.total;
        END;//
delimiter ;
delete from empresa.COMANDA where COM_NUM=622;
SELECT @suma;