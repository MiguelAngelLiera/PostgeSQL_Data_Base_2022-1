--A continuación se muestra la tabla que contiene el diccionario de datos
-- de la base de datos del caso de uso
SELECT * FROM
(SELECT TABLE_NAME NOMBRE_TABLA,COLUMN_NAME NOMBRE_COLUMNA,CONSTRAINT_NAME NOMBRE_CONSTRAINT FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE ORDER BY 1) A NATURAL JOIN
(SELECT
TABLE_NAME NOMBRE_TABLA,COLUMN_NAME NOMBRE_COLUMNA ,IS_NULLABLE ES_NULO,DATA_TYPE TIPO_DATO,
 CHARACTER_MAXIMUM_LENGTH LONG_MAX_CARACTER,COLUMN_DEFAULT VALOR_POR_DEFECTO
FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'public' ORDER BY 1) B ORDER BY NOMBRE_TABLA;
