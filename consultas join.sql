SELECT country.name, city.name FROM city INNER JOIN country ON city.id=country.capital ;

SELECT country.name, city.name FROM city INNER JOIN country ON city.id=country.capital where code='CHE'or code='ATA' ;

SELECT country.name, city.name FROM city LEFT JOIN country ON city.id=country.capital where countrycode='CHE'or countrycode='ATA' ;

SELECT country.name, city.name FROM city RIGHT  JOIN country ON city.id=country.capital where code='CHE'or code='ATA' ;

Select country.name, district from country  inner join  city on code=countrycode where city.name='San Antonio';

select countrylanguage.language from countrylanguage inner join country on country.code=countrylanguage.countrycode where  country.name='Sweden';

select country.name,language from countrylanguage join country on countrycode=code group by countrycode having count(language)=1 and language='French'
select country.name FROM country JOIN city on code=countrycode where city.population>7000000;
select country.name, count(*) FROM country JOIN city on code=countrycode group by countrycode order by 2; 
