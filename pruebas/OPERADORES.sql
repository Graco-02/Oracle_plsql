SET SERVEROUTPUT ON

DECLARE
    x       NUMBER := 3;
    resto   x%TYPE;
BEGIN
    dbms_output.put_line('trabajando con operadores logicos ');
    resto := MOD(x,2);
    IF
        resto > 0
    THEN
        dbms_output.put_line('VALOR IMPAR resto = '
        || resto);
    ELSE
        dbms_output.put_line('VALOR IMPAR resto = '
        || resto);
    END IF;

    dbms_output.put_line('-------------------------');
    DECLARE
        x   CHAR(1) := 'H';
    BEGIN
        dbms_output.put_line('trabajando con operadores logicos ');
        CASE
            x
            WHEN 'A' THEN
                dbms_output.put_line(' Electronica');
            WHEN 'B' THEN
                dbms_output.put_line(' Informática');
            WHEN 'C' THEN
                dbms_output.put_line(' Ropa');
            WHEN 'D' THEN
                dbms_output.put_line(' Música');
            WHEN 'E' THEN
                dbms_output.put_line(' Libros');
            ELSE
                dbms_output.put_line(' El código es incorrecto');
        END CASE;

        dbms_output.put_line('-------------------------');
    END;

END;