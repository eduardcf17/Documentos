use examen;
create user ex2@'%' identified by '1234';
grant execute on examen.* to ex2@'%';
show grants for ex2@'%';