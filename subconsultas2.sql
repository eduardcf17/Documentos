select name from city where population>(select population from city where name='New York') limit 3;
select name,(select count(*)from city where countrycode=code ) from country where region='Nordic Countries' ;
select language from countrylanguage where countrycode = (select countrycode from city where name='Singapore') order by 1 desc;
select continent from country where code in(select countrycode from countrylanguage where percentage>50 and language='English')group by continent;
select name from country where countrycode in (select max(pupulation) from city where code=countrycode);
select name from country where code=(select countrycode from city order by population limit 1)

select name from country where code in(select countrycode from city where population in (select max(population)from city);
select name from country where code in (select countrycode from city where population = (select max(population)from city);

select 
