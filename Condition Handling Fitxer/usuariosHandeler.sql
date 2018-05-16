use mysql;

delimiter //
create procedure usuariosHandler()
	begin
		declare condition1 condition for 1329;
		declare usuarios char(32);
		declare usuarioCursor cursor for select user from mysql.user;
		declare exit HANDLER FOR condition1 BEGIN END;
        open usuarioCursor;
		label1:loop
			FETCH usuarioCursor INTO usuarios;
			select usuarios;
		end loop;
	close usuarioCursor;
	end//
delimiter ;
call usuariosHandler();