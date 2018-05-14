drop procedure mismoNombre;
delimiter //
create procedure mismoNombre()
	begin
		  DECLARE done INT DEFAULT FALSE;

		declare nombreE varchar (45);
		declare nombreV varchar (20);
		declare curEmp cursor for select nombre from empresa.CLIENTE;
		declare curVid cursor for select nom from videoclub.CLIENT;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

		open curEmp;
		open curVid;

		comparacion:loop
			fetch curEmp into nombreE;
			comparacion2:loop
				fetch curVid into nombreV;
				IF nombreE=nombreV then
					select "Nombres que coinciden",nombreE;
				END if;
				IF done THEN
      				LEAVE comparacion1;
    			END IF;
                  END LOOP comparacion1;
				END loop comparacion;

		close curEmp;
		close curVid;
	end//
delimiter ;