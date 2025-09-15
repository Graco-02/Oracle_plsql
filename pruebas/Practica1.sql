SET SERVEROUTPUT ON

DECLARE
/*

1. Práctica adicional Variables y Constantes
• Queremos calcular el impuesto de un producto
o El impuesto será del 21%. Le debemos poner en una constante
o Creamos una variable de tipo number (5,2) para poner el precio del 
producto
o Creamos otra variable para el resultado. Le decimos que es del 
mismo tipo (type) que la anterior
o Hacemos el cálculo y visualizamos el resultado.


*/
    fecha       DATE := SYSDATE;
    impuesto    CONSTANT NUMBER := 0.21;
    resultado   impuesto%TYPE;
BEGIN
    --realizo el calculo del impuesto
    resultado := 15000 * impuesto;
    dbms_output.put_line('trabajando con variables '
    || fecha);
    dbms_output.put_line('el impuesto calculado es: '
    || resultado);
    dbms_output.put_line('-------------------------');
END;