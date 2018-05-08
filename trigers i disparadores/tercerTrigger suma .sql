use empresa;
drop trigger sumaTotal;
delimiter //
create trigger sumaTotal after insert on empresa.COMANDA
		for each row 
        BEGIN
        set @suma=(select sum(total)from COMANDA);
        END;//
delimiter ;
insert into COMANDA values(622,20180209,"A",106,19860530,1000);
select @suma;