--1. Un disparador el cual se encargue de validar que cuando una venta tenga el es-
--tatus de pagada, cumpla con que el total de los diferentes metodos de pago sean
--igual al total de la venta.

CREATE OR REPLACE FUNCTION VENTA_PAGADA()
RETURNS TRIGGER AS $$
DECLARE
	_PAGADO MONEY;
	_MONTO_TOTAL MONEY;
	_YA_FUE_PAGADO BOOLEAN;
	_RESTA MONEY;
BEGIN
	SELECT SUM(PAGO) INTO _PAGADO FROM DESGLOSE_VENTA GROUP BY ID_VENTA HAVING ID_VENTA = NEW.ID_VENTA;
	SELECT TOTAL INTO _MONTO_TOTAL FROM VENTA_FISICA WHERE ID_VENTA = NEW.ID_VENTA;
	IF _PAGADO = _MONTO_TOTAL THEN
		_YA_FUE_PAGADO := TRUE;
		RAISE NOTICE 'La cuenta ya fue pagada %',_YA_FUE_PAGADO;
	ELSE
		SELECT (_MONTO_TOTAL::money::numeric::float8)-(_PAGADO::money::numeric::float8) INTO _RESTA;
		_YA_FUE_PAGADO := FALSE;
		RAISE NOTICE 'La cuenta aun no ha sido liquidada, resta: %',_RESTA;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER VENTA_FUE_PAGADA AFTER
INSERT ON DESGLOSE_VENTA
FOR EACH ROW EXECUTE PROCEDURE VENTA_PAGADA();

--2. Un disparador el cual se encargue de guardar la fecha en que se realiza el pago
--de un venta, esto quiere decir que no importa el valor que se manda en el insert
--de la fecha, siempre pondrá la fecha el disparador

CREATE OR REPLACE FUNCTION AJUSTAR_FECHA()
RETURNS TRIGGER AS $$
DECLARE
	_FECHA_ACTUAL DATE;
BEGIN
	SELECT NOW()::DATE INTO _FECHA_ACTUAL;
	UPDATE VENTA_ONLINE SET FECHA = _FECHA_ACTUAL WHERE NUMERO_SEGUIMIENTO = NEW.NUMERO_SEGUIMIENTO;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER CAMBIAR_FECHA AFTER
INSERT ON VENTA_ONLINE
FOR EACH ROW EXECUTE PROCEDURE AJUSTAR_FECHA();


--3. Un disparador el cual se encargue de validar que un empleado no pueda realizar
--mas de 35 ventas al día
--INSERT INTO VENTA_FISICA VALUES ('8','317257','Peyotillo','414676',NULL,'6','$56.00','$56.67')


CREATE OR REPLACE FUNCTION ALCANZO_LIMITE()
RETURNS TRIGGER AS $$
DECLARE
	_ALCANZO_SU_LIMITE BOOLEAN;
	_NUMERO_VENTAS INT;
BEGIN
	SELECT COUNT(ID_VENTA) INTO _NUMERO_VENTAS FROM VENTA_FISICA GROUP BY ID_EMPLEADO_COBRAR;
	IF _NUMERO_VENTAS = '8' THEN
		RAISE NOTICE 'Ya se alcanzó el limite de ventas%',_NUMERO_VENTAS;
		DELETE FROM VENTA_FISICA WHERE ID_VENTA = NEW.ID_VENTA;
	END IF;

	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER LIMITE_VENTAS AFTER
INSERT ON VENTA_FISICA
FOR EACH ROW EXECUTE PROCEDURE ALCANZO_LIMITE();

--4. Un disparador el cual se encargue de validar que un empleado no pueda tener menos de 18 años
CREATE OR REPLACE FUNCTION REVISAR_EDAD_EMPLEADO()
RETURNS TRIGGER AS $$
DECLARE
	_EDAD INT;
BEGIN
	SELECT DATE_PART('year',AGE(FECHA_NACIMIENTO)) INTO _EDAD FROM EMPLEADO WHERE ID_EMPLEADO = NEW.ID_EMPLEADO;

	IF (_EDAD < '18') THEN
		RAISE EXCEPTION 'ERROR: El empleado debe ser mayor de edad.';
		DELETE FROM EMPLEADO WHERE ID_EMPLEADO = NEW.ID_EMPLEADO;
	ELSE
		RAISE NOTICE 'Solicitud aceptada';
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER REVISO_EDAD_EMPLEADO AFTER
INSERT ON EMPLEADO
FOR EACH ROW EXECUTE PROCEDURE REVISAR_EDAD_EMPLEADO();

--5. Un disparador el cual se encargue de validar que un empleado no pueda tener menos de 18 años
CREATE OR REPLACE FUNCTION REVISAR_EDAD_CLIENTE()
RETURNS TRIGGER AS $$
DECLARE
	_EDAD INT;
BEGIN
	SELECT DATE_PART('year',AGE(FECHA_NACIMIENTO)) INTO _EDAD FROM CLIENTE WHERE ID_CLIENTE = NEW.ID_CLIENTE;
	IF (_EDAD < '18') THEN
		RAISE EXCEPTION 'ERROR: El cliente debe ser mayor de edad.';
	ELSE
		RAISE NOTICE 'Solicitud aceptada';
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER REVISO_EDAD_CLIENTE AFTER
INSERT ON CLIENTE
FOR EACH ROW EXECUTE PROCEDURE REVISAR_EDAD_CLIENTE();

--6. Disparador que tiene el objetivo de almacenar la dirección del domicilio del cliente
--en caso de que en una venta online no se registre una dirección de envio
CREATE OR REPLACE FUNCTION AJUSTAR_DIRECCION()
RETURNS TRIGGER AS $$
DECLARE
	_DIR CHARACTER VARYING;
BEGIN
	IF (NEW.DIRECCION = ' ' OR NEW.DIRECCION ='' OR  CHAR_LENGTH(NEW.DIRECCION) < '10') THEN

		SELECT DIRECCION INTO _DIR FROM CLIENTE WHERE ID_CLIENTE = NEW.ID_CLIENTE;
		RAISE NOTICE 'Se adjuntó dirección.%',_DIR;
		UPDATE DIRECCION_ONLINE SET DIRECCION = _DIR WHERE ID_CLIENTE = NEW.ID_CLIENTE;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER ASIGNAR_DIRECCION AFTER
INSERT ON DIRECCION_ONLINE
FOR EACH ROW EXECUTE PROCEDURE AJUSTAR_DIRECCION();

--7. Disparador encargado de almacenar la fecha de creacion del vivero como la fecha de ingreso
-- de un empleado en caso de que sea vacia
CREATE OR REPLACE FUNCTION AJUSTAR_FECHA_INGRESO()
RETURNS TRIGGER AS $$
DECLARE
	_F_INGRESO DATE;
BEGIN
	IF (NEW.FECHA_INGRESO IS NULL) THEN
		RAISE NOTICE 'Se adjuntó fecha.';
		SELECT FECHA_APERTURA INTO _F_INGRESO FROM VIVERO WHERE NOMBRE_VIVERO = NEW.NOMBRE_VIVERO;
		RAISE NOTICE 'Se adjuntó fecha.%',_F_INGRESO;
		UPDATE EMPLEADO SET FECHA_INGRESO = _F_INGRESO WHERE ID_EMPLEADO = NEW.ID_EMPLEADO;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER ASIGNAR_FECHA_INGRESO AFTER
INSERT ON EMPLEADO
FOR EACH ROW EXECUTE PROCEDURE AJUSTAR_FECHA_INGRESO();