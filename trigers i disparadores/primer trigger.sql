create trigger Mensaje after insert on empresa.CLIENTE 
	for each row set @lastInsert=(concat("ultima inserción",curtime(),NEW.cliente_cod," ",NEW.nombre));