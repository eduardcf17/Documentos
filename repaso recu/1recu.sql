use sanitat;
/**select count(*),sala_cod from INGRESSOS group by SALA_COD;**/
select  count(*),sexe,sala_cod from INGRESSOS join MALALT using (INSCRIPCIO)  group by SALA_COD,sexe;