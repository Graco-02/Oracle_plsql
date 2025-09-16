/*

   MODIFICAR JSON
   
   - Antes de la 19c- Había que modificar todo el campo completo
   - En la 19c aparece JSON_MERGEPATCH para actualizar trozos
   - En la 21c aparece JSON_TRANSFORM que es un poco más potente
   
   */
   
   
   select datos from productos1;
   
   -- Modificar uno existente
   update productos1 set datos='
  {
    "pais": "Argentina",
    "ciudad": "Buenos aires",
    "poblacion": 2000000
  }' 
  where codigo=1;
  
  
  -- Añadir un elemento
     update productos1 set datos='
  {
    "pais": "Argentina",
    "ciudad": "Buenos aires",
    "poblacion": 2100000,
    "estado": true
  }' 
  where codigo=1;
  
  -- JSON_MERGEPATCH
      update productos1 set datos=JSON_MERGEPATCH(
      datos,
      '{
            "estado": false
      }' 
      )
  where codigo=1;
  
  
     update productos1 set datos=JSON_MERGEPATCH(
      datos,
      '{
            "estado": true,
            "c1": 10
      }' 
      )
  where codigo=1;
  
  
  