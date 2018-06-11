use Consultas_basicas;
delimiter //
create trigger pregunta4 before insert on depart for each row
begin
if(new.loc=null)then
	set new.loc="valencia";
end if;
end