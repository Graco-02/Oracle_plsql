select datos from productos1;

select prod1.datos.pais from productos1 prod1;


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

select prod1.datos.direccion from productos1 prod1;

select prod1.datos.direccion.puerta from productos1 prod1;


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

select datos from productos1;

select prod1.datos.telefonos from productos1 prod1;
select prod1.datos.telefonos[0] from productos1 prod1;