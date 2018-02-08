SELECT country.name, city.name FROM city INNER JOIN country ON city.id=country.capital ;

SELECT country.name, city.name FROM city INNER JOIN country ON city.id=country.capital where code='CHE'or code='ATA' ;

SELECT country.name, city.name FROM city LEFT JOIN country ON city.id=country.capital where countrycode='CHE'or countrycode='ATA' ;

SELECT country.name, city.name FROM city RIGHT  JOIN country ON city.id=country.capital where code='CHE'or code='ATA' ;

Select country.name, district from country  inner join  city on code=countrycode where city.name='San Antonio';
