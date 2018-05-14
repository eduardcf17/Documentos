
delimiter //
create procedure usuarios()
	begin
		declare p1 int;
		declare usuariosFetch char(32);
		declare maquina char(60);
		declare usuarioCursor cursor for select user, host from mysql.user;
		open usuarioCursor;
		set p1=0;

		label1:loop
			SET p1 = p1 + 1;
			if p1>	12 then
				leave label1;
			end if;

			FETCH usuarioCursor INTO usuariosFetch,maquina ;

			select usuariosFetch, maquina;
		
		
		end loop;
	close usuarioCursor;

	end//
delimiter ;