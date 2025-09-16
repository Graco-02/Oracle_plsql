/*

   JSON_TABLE
   (campo_json,lista_de_columnas)
   
   Permite convertir datos JSON a relacionales
   */
   
   
   
      
   select pais,ciudad
       from productos1 prod1,json_table(prod1.datos,'$' COLUMNS(pais PATH '$.pais', ciudad path '$.ciudad'));
   
   select pais,direccion
       from productos1 prod1,json_table(prod1.datos,'$' COLUMNS(pais PATH '$.pais', direccion path '$.direccion.calle'));