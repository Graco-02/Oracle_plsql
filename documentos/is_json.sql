/*
   IS JSON
   IS NOT JSON

*/

CREATE TABLE ejemplo (
  codigo INT,
  fichero CLOB
);

insert into ejemplo values(1,'{"col1":"prueba"}');
insert into ejemplo values(2,'Esto es una prueba');
insert into ejemplo values(3,'<doc> <col1>prueba</col1></doc>');

select * from ejemplo where fichero is json;

select * from ejemplo where fichero is not json;