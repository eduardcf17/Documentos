use videoclub;
create table if not exists peliculaGratis(dni char(10), regalo varchar(15));
drop trigger if exists Alquilar ;
delimiter //
create trigger Alquilar after insert on videoclub.PRESTEC
	for each row
	BEGIN
    set@dniCopia=(select new.dni from PRESTEC);
	set @contador=@contador+1;
    if contador=5 then set @contador=0;insert into peliculaGratis values(@dniCopia,"Regalo disponible");
    end if;
	END//
delimiter ;