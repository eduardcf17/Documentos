USE world;
drop function primoSuma;
delimiter //
create function primoSuma(numero int) returns int
begin
	declare suma int;
    declare var int;
    declare contador int;
    set var=0;
    set contador =0;
    set suma=0;
    
    label1:loop
			set var=var+1;
            if(contador=numero)then leave label1; end if;
            if (select primo(var)=1)then set suma=suma+var;set contador=contador+1; end if;
    end loop;
    return suma;
end//
select primoSuma(5);