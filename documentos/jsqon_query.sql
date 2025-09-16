/*

   JSON_QUERY(campo_json,expresion_json,on_error);
   
   Permite devolver un valor, array o un sub-documento anidado
   */
select json_query(prod1.datos,'$.pais') from productos1 prod1;
select json_query(prod1.datos,'$.direccion') from productos1 prod1;
select json_query(prod1.datos,'$.direccion.calle') from productos1 prod1;
select json_query(prod1.datos,'$.telefonos') from productos1 prod1;
select json_query(prod1.datos,'$.telefonos[0]') from productos1 prod1;