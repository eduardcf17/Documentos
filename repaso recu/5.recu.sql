set lc_time_names="Es_es";
select COGNOM,date_format(DATA_NAIX, '%d de %M de %Y') from MALALT where INSCRIPCIO in(select inscripcio from INGRESSOS WHERE HOSPITAL_COD=(SELECT HOSPITAL_COD FROM HOSPITAL WHERE NOM="la paz" ));