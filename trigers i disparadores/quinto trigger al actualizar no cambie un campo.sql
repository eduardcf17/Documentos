-- Escribe un disparador que, cuando se produzca una actualización en COMANDA, impida que el campo COM_TIPUS varie.
delimiter //
create trigger actuaizar before update on empresa.COMANDA
		for each row 
        BEGIN
        set NEW.COM_TIPO=OLD.COM_TIPO;
        
        END;//
delimiter ;
