SET SERVEROUTPUT ON

DECLARE
    nombre     VARCHAR2(100);
    apellido   VARCHAR2(100);
    edad       NUMBER(2);
    boll       BOOLEAN;
    fecha      DATE := SYSDATE;
BEGIN
    nombre := 'FULANITO';
    apellido := 'DE TAL';
    edad := 37;
    dbms_output.put_line('trabajando con variables '
    || fecha);
    dbms_output.put_line('-------------------------');
    dbms_output.put_line('BIENBENIDO SR. '
    || nombre
    || ' , '
    || apellido
    || edad);

    dbms_output.put_line('-------------------------');
END;