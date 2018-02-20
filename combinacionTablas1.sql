select city.name,country.name from city, country where CountryCode=Code;
select countrylanguage.Language,country.Name from countrylanguage,country where countrycode=code;
select city.name,country.name from city, country where CountryCode=Code  order by city.population desc limit 10;
select city.name,country.name from city, country where CountryCode=Code AND country.name='Ukraine';
select  distinct country.language,  from country, countrylanguage where 
select sum(city.population) from city, country where CountryCode=Code AND country.name='Russian federation'
select country.population-sum(city.population) from city, country where CountryCode=Code AND country.name='Russian federation' group by CountryCode;
