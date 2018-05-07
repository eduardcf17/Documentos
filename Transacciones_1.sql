show create table city;

START TRANSACTION;
delete from city where id=4079;
rollback