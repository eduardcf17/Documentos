use prueba;
drop procedure if exists insertar;
delimiter //
/**Los parámetros de entrada son: DNI del cliente, Nombre del cliente, Ciudad del
cliente y el identificador de un concesionario**/
create procedure insertar(dni char (9),Nombre varchar(40),Ciudad_Cliente varchar(20),Concesionari tinyint(3))
begin
declare conc tinyint(3);
declare ciudad varchar(20);
/*Que el parámetro de entrada que se le pasa al procedimiento como
identificador de un concesionario corresponde a un concesionario que está
registrado en la tabla Concesionario. En caso de que esto no se cumpla, el
procedimiento devolverá un mensaje del estilo “Identificador de concesionario
incorrecto” y no realizará la inserción*/
set conc=(select Id_Concesionario from prueba.Concesionario where Id_Concesionario=Concesionari);
if conc is null then signal SQLSTATE '45000' set message_text="Identificador de concesionario incorrecto";end if;

/*Que el parámetro correspondiente a la ciudad del cliente coincide con la
ciudad donde está ubicado el concesionario indicado en el parámetro
correspondiente al identificador del concesionario. Es decir, hay que
comprobar que la ciudad del cliente y la concesionario es la misma. En caso
de no cumplirse esta condición, el procedimiento emitirá un mensaje del 
estilo “La ciudad indicada no corresponde con la ciudad del concesionario” y
no realizará la inserción.*/    
    
set ciudad= (select Ciudad_Concesionario from prueba.Concesionario where Ciudad_Concesionario=Ciudad_Cliente); 
if ciudad is null then signal SQLSTATE '45000' set message_text="La ciudad indicada no corresponde con la ciudad del concesionario";end if;
if conc=Concesionari && ciudad=Ciudad_Cliente then
insert into Cliente values(dni,Nombre,Ciudad_Cliente,Concesionario);
end if;
end//
delimiter ;
call insertar("j","a","a",04);