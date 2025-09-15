SET SERVEROUTPUT ON

DECLARE
    x       NUMBER := 1;
    h       x%TYPE := 1;
    valor   h%TYPE := 0;
BEGIN
    dbms_output.put_line('trabajando con bucles ');
    --LOOP
    << parent >> LOOP
        dbms_output.put_line(' ');
        x := x + 1;
        h := 1;
        << child >> LOOP
            IF
                valor < 10
            THEN
                dbms_output.put('0'||valor
                || ' ');
            ELSE
                dbms_output.put(valor
                || ' ');
            END IF;

            h := h + 1;
            valor := valor + 1;
            EXIT child WHEN h > 5;
        END LOOP;

        EXIT parent WHEN x > 5;
    END LOOP;

    dbms_output.put_line('');
    dbms_output.put_line('-------------------------');
END;