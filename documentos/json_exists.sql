/*

   JSON_EXISTS(campo_json,expresion_json,on_error);
   */

drop table productos1;

CREATE TABLE productos1 (
  codigo INT,
  nombre VARCHAR2(200),
  datos json
);

insert into productos1
values ( 1,'ejemplo1',
'
  {
    "pais": "Argentina",
    "ciudad": "Buenos aires",
    "poblacion": 1000000
  }
');



insert into productos1
values ( 2,'ejemplo1',
'
  {
    "pais": "Argentina",
    "ciudad": "Buenos aires",
    "poblacion": 1000000,
    "direccion":{
             "calle": "xcxxxxx",
             "piso": 5,
             "puerta": "c"
             }
  }
');


insert into productos1
values ( 3,'ejemplo3',
'
  {
    "pais": "Francia",
    "ciudad": "Paris",
    "poblacion": 1500000,
    "direccion":{
             "calle": "xcxxxxx",
             "piso": 5,
             "puerta": "c"
             },
    "telefonos": [
        "111-111111",
        "222-222222"
    ]
  }
');


insert into productos1
values ( 4,'ejemplo4',
'
  {
    "pais": "Italia",
    "ciudad": "Roma",
    "poblacion": 1400000,
    "direccion":{
             "calle": "xcxxxxx",
             "piso": 4,
             "puerta": ""
             },
    "telefonos": [
        "111-111111AA",
        "222-222222BB"
    ]
  }
');


insert into productos1
values ( 5,'ejemplo5',
'
  {
    "pais": "Inglaterra",
    "ciudad": "Londres",
    "poblacion": 10009000
  }
');


select json_value(prod1.datos,'$.pais') from productos1 prod1;
select json_value(prod1.datos,'$.pais' returning varchar(100)) from productos1 prod1;
-- Si no son escalare no funciona
select json_value(prod1.datos,'$.direccion') from productos1 prod1;
select json_value(prod1.datos,'$.telefonos') from productos1 prod1;
select json_value(prod1.datos,'$.telefonos[0]') from productos1 prod1;

select json_query(prod1.datos,'$.pais') from productos1 prod1;
select json_query(prod1.datos,'$.direccion') from productos1 prod1;
select json_query(prod1.datos,'$.direccion.calle') from productos1 prod1;
select json_query(prod1.datos,'$.telefonos') from productos1 prod1;
select json_query(prod1.datos,'$.telefonos[0]') from productos1 prod1;


select prod1.datos.pais from productos1 prod1;