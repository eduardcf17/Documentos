use mysql;
delimiter //
create procedure usuariosHandler()
	begin
		declare p1 int;
		declare usuariosFetch char(32);
		declare maquina char(60);
		declare usuarioCursor cursor for select user, host from mysql.user;
		declare NoSeEncuentra HANDLER FOR  NOT FOUND
			BEGIN
				
			END
        open usuarioCursor;
		set p1=0;

		label1:loop
		FETCH usuarioCursor INTO usuariosFetch, maquina ;
		select usuariosFetch, maquina;
		end loop;
	close usuarioCursor;
	
    
	end//
delimiter ;