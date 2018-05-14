use sakila;
 create table auditaractor (audita varchar(200));
drop trigger actuaizar;
delimiter //
create trigger borrarInsert after delete on sakila.actor
		for each row 
        BEGIN
        insert into auditaractor values(concat("El actor" ,old.actor_id," de apellido " ,old.last_name," fue borrado el día ",now()));        
        END;//
delimiter ;