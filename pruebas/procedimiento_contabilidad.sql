SET SERVEROUTPUT ON

DECLARE
    estado_a   NUMBER;
    estado_b   NUMBER;
    series     NUMBER;
    x          NUMBER;
    desc_a     VARCHAR(30);
    desc_b     VARCHAR(30);
    series_b   series%TYPE;
BEGIN
    series := 0;
    dbms_output.put_line('PRUEBAS');
    SELECT
        COUNT(*)
    INTO
        series
    FROM
        cersatpre.pcdt175
    WHERE
        codent = '0005';

    dbms_output.put_line('CANTIDAD DE BLOQUES = '
    || series);
    x := 0;
    << parent >> LOOP
        EXIT parent WHEN x > ( series - 1 );
        SELECT
            desestcta,
            numdiasact
        INTO
            desc_a,estado_a
        FROM
            cersatpre.pcdt175
        WHERE
            codent = '0005'
            AND   codestcta = x;

        IF
            x < ( series - 1 )
        THEN
            SELECT
                numdiasact
            INTO
                estado_b
            FROM
                cersatpre.pcdt175
            WHERE
                codent = '0005'
                AND   codestcta = ( x + 1 );

        END IF;

        << cantidad_m175 >> SELECT
            COUNT(*)
        INTO
            series_b
                           FROM
            cersatpre.mpdt175
                           WHERE
            codent = '0005'
            AND   numdiasact >= estado_a
            AND   numdiasact < estado_b;

        /*solo trato los bloques que contienen grupos a tratar (series_b > 0)*/
        IF
            series_b > 0
        THEN
            dbms_output.put_line('CODESCTA.: '
            || x
            || ' DESCRIPCION.: '
            || desc_a
            || ' DIAS.: '
            || estado_a
            || ' TOPE.:'
            || estado_b
            || ' ESTADOS M175.: '
            || series_b);
        END IF;

        x := x + 1;
    END LOOP;

END;