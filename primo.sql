USE world;
drop function primo;
delimiter //
create function primo(numero int)returns int
begin
    declare divisor int;
    declare res int;
    
    -- declare exit handler for 1366
    set divisor=numero-1;
    
        label1:loop
			if(divisor<2)then leave label1; end if;
            set res=numero mod divisor;
            if res=0 then return 0; end if;
            set divisor=divisor-1;
		end loop;
        return 1;
end//
delimiter ;
select primo(11);

