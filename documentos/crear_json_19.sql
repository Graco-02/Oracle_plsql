CREATE TABLE productos (
  codigo INT,
  nombre VARCHAR2(200),
  datos VARCHAR2(4000)
CONSTRAINT x1 CHECK (datos IS JSON));

desc productos;

insert into productos
values ( 1,'ejemplo1',
'
  {
    "pais": "Argentina",
    "ciudad": "Buenos aires",
    "poblacion": 1000000
  }
');

select datos from productos;