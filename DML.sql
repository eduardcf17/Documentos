INSERT INTO GelderlandDist(name,District,CountryCode,Inauguration)VALUE("Sakila","Gelderland",'SQL','2001-7-1');
INSERT INTO GelderlandDist(name,CountryCode,Inauguration)VALUES("MySQLland",'MYS','1984-8-4')("Fantasia",'FNT','1950-1-1');
REPLACE INTO GelderlandDist (name,CountryCode,Inauguration)VALUES("MySQLland",'SQL','1984-8-4')	;
UPDATE GelderlandDist set Inauguration='1980-5-17'	 where name='Ede';
UPDATE GelderlandDist set countrycode='FOO' where countrycode='NLD' order by name limit 2
DELETE FROM GelderlandDist where CountryCode='FOO' limit 1;
CREATE TABLE copiaCity like city;
INSERT INTO copiaCity select * from city where district='Ontario' OR district='England';
UPDATE copiaCity set population=(select population from city where name ='Sao Paulo') where district='England'
UPDATE copiaCity set population=(select population from city where name='Ede' order by population desc limit 1 ) where name='Cambridge'


Actualizar la población de la ciudad de Cambridge (England) para que sea igual
a la población de la ciudad de Ede (la de mayor población ya que hay dos)