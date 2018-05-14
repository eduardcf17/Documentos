use sakila;

delimiter //
create trigger borrar after delete on sakila.actor
		for each row 
        BEGIN
        insert into auditaractor values("se ha borrado un actor");        
        END;//
delimiter ;