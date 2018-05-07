create user María@'%' identified by 'maria';
grant select on consultas_basicas.* to María@'%';
grant alter on consultas_basicas.* to María@'%';
//necesita el create view, el super y droop
create user pep@'192.168.0.%' identified by 'pep';
grant select on consultas_basicas.emple to pep@'192.168.0.%' WITH GRANT OPTION MAX_QUERIES_PER_HOUR 10;
grant select on consultas_basicas.depart to pep@'192.168.0.%' WITH GRANT OPTION MAX_QUERIES_PER_HOUR 10;
create user administrador@'localhost' identified by 'admin';
GRANT ALL ON consultas_basicas.* TO administrador@'localhost'; NO DA PEMISOS PARA CREAR USUARIOS!!
GRANT create user on *.* to administrador@'localhost'; DA PERMISOS PARA CREAR USUARIOS

create user Invitado@'%' identified by 'invitado';
grant select (dni) on consultas_basicas.personas to Invitado@'%';
revoke alter on consultas_basicas.* from María@'%'; 