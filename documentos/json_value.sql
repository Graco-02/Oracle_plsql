/*

   JSON_VALUE(campo_json,expresion_json);
   
   Deveulve un valor único, de tipo escalar
   */


select json_value(prod1.datos,'$.pais') from productos1 prod1;
select json_value(prod1.datos,'$.pais' returning varchar(100)) from productos1 prod1;
-- Si no son escalare no funciona
select json_value(prod1.datos,'$.direccion') from productos1 prod1;
select json_value(prod1.datos,'$.telefonos') from productos1 prod1;
select json_value(prod1.datos,'$.telefonos[0]') from productos1 prod1;



