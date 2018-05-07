
create procedure cuantosUser() 
begin
select count(*)  from user;
end//