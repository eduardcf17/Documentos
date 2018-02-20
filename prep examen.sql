select FACTURA.data,FACTURA.import, CLIENT.nom, CLIENT.telefon from FACTURA,CLIENT where FACTURA.dni=CLIENT.dni;
select sum(FACTURA.import) from FACTURA group by FACTURA.data having FACTURA.data='2009-03-06';
select DETALLFACTURA.descripcio,FACTURA.dni from DETALLFACTURA,FACTURA where DETALLFACTURA.codifactura=FACTURA.codifactura and FACTURA.dni='022222222R';
select CLIENT.nom, PELICULA.titol FROM CLIENT join PRESTEC using(dni) join PELICULA using(codipeli);
select CLIENT.nom, count(PELICULA.titol) FROM CLIENT join PRESTEC using(dni) join PELICULA using(codipeli) group by CLIENT.nom;
select  distinct ACTOR.nom from ACTOR JOIN PELICULA using(codiActor);
select titol,descripcio from PELICULA join GENERE USING(CODIGENERE) where descripcio='Terror';
select P1.titol,P2.titol FROM PELICULA P1 JOIN PELICULA P2 ON P1.SEGONAPART=P2.codipeli;
select peli, count(CODICOPIA) FROM COPIA FRO PELICULA JOIN COPIA USING(CODIPELI) group by CODIPELI
SELECT import,data