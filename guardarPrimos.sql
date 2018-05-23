USE world;
drop table primos;
create table primos(id int unsigned auto_increment not null primary key,numPrimo int);
 drop procedure guardarPrimos;
delimiter //
create procedure guardarPrimos(numero int)
begin
    declare var int;
    declare contador int;
    set var=0;
    set contador =0;
    
    label1:loop
			set var=var+1;
            if(contador=numero)then leave label1; end if;
            if (select primo(var)=1)then insert into primos values(default,var) ;set contador=contador+1; end if;
            set @np=contador;
    end loop;
end//
delimiter ;
call guardarPrimos(5);
select * from primos;