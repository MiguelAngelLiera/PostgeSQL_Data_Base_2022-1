--Manipulación tabla VIVERO y Telefonos VIVERO
SELECT INSERTAR_VIVERO('Peyotillo','Astrophytum','Cactus','2000-12-31','Blvd. Adolfo Ruiz Cortines Parque Ecológico de Xochimilco, Canal Nacional, Xochimilco, CDMX','55673452');
SELECT INSERTAR_VIVERO('Piel de cocodrilo','Haworthia','Plantas africanas','2000-09-15','Blvd. Adolfo Ruiz Cortines Parque Ecológico de Xochimilco, Canal Nacional, Xochimilco, CDMX','45673217');
SELECT INSERTAR_VIVERO('Gasteria enana','Gasteria','Plantas africanas','2001-03-04','Blvd. Adolfo Ruiz Cortines Parque Ecológico de Xochimilco, Canal Nacional, Xochimilco, CDMX','56782543');
SELECT INSERTAR_VIVERO('Cactacea','Astrophytum','Cactus','2001-11-11','Av. Plateros 1546-6 CDMX','55640252');
SELECT INSERTAR_VIVERO('Coliflor','Haworthia','Plantas africanas','1993-09-09','Calle 13 #456 Col Reforma CDMX','45773217');
SELECT INSERTAR_VIVERO('Gasteria mezosoica','Gasteria','Plantas africanas','1991-03-05','Blvd. Adolfo Ruiz Cortines Parque Ecológico de Xochimilco, Canal Nacional, Xochimilco, CDMX','56702543');

SELECT INSERTAR_VIVERO('Pata de elefante','Haworthia','Plantas africanas','1990-10-24','Blvd. Adolfo Ruiz Cortines Parque Ecológico de Xochimilco, Canal Nacional, Xochimilco, CDMX','55073452');
SELECT INSERTAR_VIVERO('Girasol','Haworthia','Plantas africanas','2004-10-20','Blvd. Adolfo Ruiz Cortines Parque Ecológico de Xochimilco, Canal Nacional, Xochimilco, CDMX','49023217');
SELECT INSERTAR_VIVERO('Narciso','Gasteria','Plantas africanas','2005-03-18','Blvd. Adolfo Ruiz Cortines Parque Ecológico de Xochimilco, Canal Nacional, Xochimilco, CDMX','56785543');
SELECT INSERTAR_VIVERO('Tulipan','Astrophytum','Cactus','2001-11-11','Av. Rio de Janeiro Fracc. 9 154 CDMX','52670252');
SELECT INSERTAR_VIVERO('Flor de mayo','Haworthia','Plantas africanas','1992-04-19','Calle 13 #456 Col Reforma CDMX','63923217');
SELECT INSERTAR_VIVERO('Gasteria rocosa','Gasteria','Plantas africanas','1991-05-15','Blvd. Adolfo Ruiz Cortines Parque Ecológico de Xochimilco, Canal Nacional, Xochimilco, CDMX','56782542');

SELECT INSERTAR_VIVERO('Suculenta','Astrophytum','Cactus','2011-01-07','Av. Plutarco Col. Chabacano no. 9 Manzana 154 CDMX','52783252');
SELECT INSERTAR_VIVERO('Acapulco','Gasteria','Plantas africanas','2007-06-27','Calle 13 #456 Col Reforma CDMX','63981017');
SELECT INSERTAR_VIVERO('Azalea','Gasteria','Plantas africanas','1999-02-19','Blvd. Adolfo Ruiz Cortines Parque Ecológico de Xochimilco, Canal Nacional, Xochimilco, CDMX','56760542');

--Manipulación del catalogo AREA_VIVERO
INSERT INTO AREA_VIVERO VALUES('Haworthia','Plantas africanas');
INSERT INTO AREA_VIVERO VALUES('Gasteria', 'Plantas africanas');

INSERT INTO AREA_VIVERO VALUES('Astrophytum','Cactus');
INSERT INTO AREA_VIVERO VALUES('Ariocarpus', 'Cactus');

--Manipulación tabla EMPLEADO
SELECT INSERTAR_EMPLEADO('317257','Peyotillo','Miguel','Liera','Montaño','$10000.00','Av. Plutarco 1324-3 Col. Ref. Izt Sur, Iztacalco, CDMX','2001-12-21','Gerente','56892071','miguela@gmail.com',NULL);
SELECT INSERTAR_EMPLEADO('314456','Piel de cocodrilo','Gerardo','Martinez','Garcia','$25000.00','Benito Juárez, Tula, Iztapalapa, CDMX','1999-02-15','Cuidador','69037812','gerard@gmail.com',NULL);
SELECT INSERTAR_EMPLEADO('325673','Gasteria enana','Regina','Gonzales','Gúzman','$35650.00','Progreso, 1342-7 Zona Urbana Ejidal Santa María Tomatlan, Iztapalapa, CDMX','2003-05-29','Gerente','89120543','rehi@gmail.com',NULL);
SELECT INSERTAR_EMPLEADO('789276','Cactacea','David','Cuevas','Martinez','$3500.00','Av. San Andres Tomatlan 1532-8 Col Tlalpan, CDMX','2001-10-20','Gerente','78456212','davidc@gmail.com',NULL);
SELECT INSERTAR_EMPLEADO('092783','Coliflor','Anacleto','Martinez','Rocha','$7000.00','Valle de Chalco Nte 18 EDO MEX','1978-08-14','Cuidador','69021812','an_kl@gmail.com',NULL);
SELECT INSERTAR_EMPLEADO('317895','Gasteria mezosoica','Mirozlava','Liera','Gonzales','$40000.00','Calle San Martin 204-5 Iztapalapa CDMX','2003-09-03','Gerente','55892371','miroz@outlook.com',NULL);

SELECT INSERTAR_EMPLEADO('317568','Peyotillo','Antonio','Medellín','Piña','$5000.00','Av. Calle Arandano Esq Av. Abeja Mnza 416 Tlauac, CDMX','1999-02-28','Cajero','555679213','pinia08a@gmail.com',NULL);
SELECT INSERTAR_EMPLEADO('314789','Peyotillo','Penelope','Urtado','de la Flor','$10000.00','Napoles 1345 Calle 16, CDMX','2001-09-14','Cuidador','55679025','p_d_f01@hotmail.com',NULL);
SELECT INSERTAR_EMPLEADO('314762','Peyotillo','Renato','Canario','de la Cruz','$15000.00','Agricola Oriental Av de las Flores 189, CDMX','1999-04-29','Cuidador','45678231','can921_1@gmail.com',NULL);
SELECT INSERTAR_EMPLEADO('317672','Piel de cocodrilo','Oswaldo','Ponce','Ruiz','$3500.00','Av. de los Girasoles 198-7 Col Piloto, CDMX','1995-11-01','Gerente','55906329','o.pnce_1@outlook.com',NULL);
SELECT INSERTAR_EMPLEADO('312673','Piel de cocodrilo','Pamela','Negrete','Esquivel','$7000.00','Valle de Chalco Nte 20 EDO MEX','1978-08-14','Cajero','55672351','paml_9823@gmail.com',NULL);
SELECT INSERTAR_EMPLEADO('317005','Piel de cocodrilo','Casandra','Perez','Gonzales','$18000.00','Troncoso 456 Col Magdalena Contreras, CDMX','2000-05-23','Encargado','55892412','cas17.1@outlook.com',NULL);

SELECT INSERTAR_EMPLEADO('317823','Gasteria enana','Enrique','Castillo','Mendoza','$7050.00','Calle Nte 25 Valle de Chalco Solidaridad EDOMEX','2003-05-03','Cajero','55167832','casmen1@gmail.com',NULL);
SELECT INSERTAR_EMPLEADO('317729','Gasteria enana','Mariana','Tellez','López','$2500.00','Calle Nte 15 #5 Valle de Chalco Solidaridad EDOMEX','2003-10-27','Cuidador','55167451','mar_t91@gmail.com',NULL);
SELECT INSERTAR_EMPLEADO('314561','Gasteria enana','Camila','Escobar','Palomares','$14000.00','Calle Independencia 145-8 Gustavo A. Madero','2001-11-01','Encargado','89267451','came_791@gmail.com',NULL);

--Manupulación tabla CLIENTE
SELECT INSERTAR_CLIENTE('417256','Juan','Ortega','Dominguez','C. 15 de Junio de 1861 MZ184 LT2160, Leyes de Reforma 3ra Secc, Iztapalapa, CDMX','1989-03-24','34902314','juango@hotmail.com');
SELECT INSERTAR_CLIENTE('414676','Mirozlava','Gutierrez','Zuñiga','C. Ote. 33 119, Moctezuma 2da Secc, Venustiano Carranza, CDMX','1990-06-29','67435612','mir013@gmail.com');
SELECT INSERTAR_CLIENTE('425123','Mateo','Sanchez','Segura','Laguna de Términos 475, Anáhuac I Secc., Anáhuac I Secc, Miguel Hidalgo, CDMX','2002-07-13','55678921','ma_se56@gmail.com');

SELECT INSERTAR_CLIENTE('417478','Ángel','Peña','Olmedo','Calzada del Hueso #1425-4, CDMX','1990-03-21','34955314','ang_901@hotmail.com');
SELECT INSERTAR_CLIENTE('417825','Samantha','Gomez','Sanchez','Calle Frutales #45 Col. Heroes Iztacalco, CDMX','1993-03-27','67785612','sags101@gmail.com');
SELECT INSERTAR_CLIENTE('417890','Monserrat','Herrera','Romero','Ote. 67 a 2807, Asturias, Cuauhtémoc, 06890 Ciudad de México, CDMX','2001-05-12','51938921','mon_ro1@gmail.com');

SELECT INSERTAR_CLIENTE('417123','Ángela','Romero','Olvera','Av. Andrés Molina Enríquez 780, Amp Sinatel, Iztapalapa, 09440 Ixapanapa, CDMX','2001-03-21','55955324','a_roo1@hotmail.com');
SELECT INSERTAR_CLIENTE('417321','Armando','Roblez','Pensado','Cecilio Robelo S/N, El Parque, Venustiano Carranza, 15970 Ciudad de México, CDMX','2001-03-27','55782612','ar_p01@gmail.com');
SELECT INSERTAR_CLIENTE('417901','Abel','Camacho','Ramirez','C. Concepción Beistegui 736, col. del valle Del, Benito Juárez, 03103 Ciudad de México, CDMX','2003-05-12','55938221','acr_43@gmail.com');

SELECT INSERTAR_CLIENTE('417001','Fernando','Mojica','Gutierrez','C. Ote. 176 147, Moctezuma 2da Secc, Venustiano Carranza, 15530 Ciudad de México, CDMX','2003-05-10','55955897','fer_mg@hotmail.com');
SELECT INSERTAR_CLIENTE('417002','Ignacio','Hernandez','Camacho','H.Congreso de la Unión 514, El Ranchito, Santa Anita, Iztacalco, 08300 Ciudad de México, CDMX','2003-05-11','55782658','ighca.1@gmail.com');
SELECT INSERTAR_CLIENTE('417003','Cesar','Morales','Chavez','C. 1 159, Santa Cruz Acayucan, Azcapotzalco, 02770 Ciudad de México, CDMX','2003-05-12','55938092','cesar01@gmail.com');

SELECT INSERTAR_CLIENTE('417004','Javier','Rivera','Aviles','Chiclayo 692, Lindavista, Gustavo A. Madero, 07300 Ciudad de México, CDMX','2001-04-09','57015897','javi_012@hotmail.com');
SELECT INSERTAR_CLIENTE('417005','Daniel','Álvarez','Suarez','Muguete mz-10 lote-14, Olivar del conde, 01400 Álvaro Obregón, CDMX','2001-09-12','55092658','dasu90@gmail.com');
SELECT INSERTAR_CLIENTE('417006','Jazmín','Villasana','Cruz','Huizache, Garcimarrero Nte, Álvaro Obregón, 01510 Ciudad de México, CDMX','2001-06-03','55905092','_jaz_0@gmail.com');

--Manipulación tabla PLANTA
SELECT INSERTAR_PLANTA('Gasteria enana','325673','Gasteria','gravilla roja','Resolana','cada que esté seco','21-12-2018','$20.00');
SELECT INSERTAR_PLANTA('Peyotillo','314762','Pelecyphora','gravilla roja','Resolana','cada mes','11-10-2017','$20.00');
SELECT INSERTAR_PLANTA('Cactacea','789276','Gasteria','gravilla roja','Resolana','cada que esté seco','09-09-2020','$64.00');
SELECT INSERTAR_PLANTA('Piel de cocodrilo','314456','Haworthia','gravilla roja','Resolana','cada mes','08-12-2020','$20.00');
SELECT INSERTAR_PLANTA('Pata de elefante','314456','Gasteria','lana de roca','Resolana','cada que esté seco','22-12-2019','$50.00');
SELECT INSERTAR_PLANTA('Piel de serpiente','314456','Haworthia','arcilla','Resolana','cada mes','21-09-2019','$15.00');

SELECT INSERTAR_PLANTA('Gasteria baylissiana','317729','Gasteria','gravilla roja','Resolana','cada que esté seco','21-08-2021','$20.00');
SELECT INSERTAR_PLANTA('Gasteria bicolor','317729','Gasteria','arcilla','Sol','cada que esté seco','26-07-2021','$95.00');
SELECT INSERTAR_PLANTA('Gasteria carinata','317729','Gasteria','gravilla','Resolana','cada que esté seco','21-03-2019','$80.00');
SELECT INSERTAR_PLANTA('Gasteria ellaphieae','317729','Gasteria','arenisca roja','Sol','cada que esté seco','27-11-2019','$70.00');
SELECT INSERTAR_PLANTA('Aurea','314762','Pelecyphora','arenisca roja','Sol','cada mes','11-10-2017','$50.00');
SELECT INSERTAR_PLANTA('Cristatum','314762','Pelecyphora','gravilla roja','Resolana','cada mes','11-10-2017','$210.00');
SELECT INSERTAR_PLANTA('Nudum','314762','Pelecyphora','arenisca roja','Sol','cada mes','11-10-2017','$190.00');
SELECT INSERTAR_PLANTA('Roseiflorum','314762','Pelecyphora','arcilla','Resolana','cada mes','11-10-2020','$150.00');
SELECT INSERTAR_PLANTA('Alpus','314762','Pelecyphora','gravilla roja','Sol','cada mes','11-10-2020','$200.00');

--Manipulación tabla CUIDADO
INSERT INTO CUIDADO VALUES('No ponerle abono','Piel de cocodrilo');
INSERT INTO CUIDADO VALUES('No regar diario','Peyotillo');
INSERT INTO CUIDADO VALUES('No directo al sol','Gasteria enana');

--Manipulación tabla PERTENECE
INSERT INTO PERTENECE VALUES('Peyotillo','Peyotillo','110');
INSERT INTO PERTENECE VALUES('Gasteria enana','Gasteria enana','230');
INSERT INTO PERTENECE VALUES('Piel de cocodrilo','Piel de cocodrilo','560');
INSERT INTO PERTENECE VALUES('Cactacea','Cactacea','210');
INSERT INTO PERTENECE VALUES('Pata de elefante','Pata de elefante','350');
INSERT INTO PERTENECE VALUES('Piel de serpiente','Piel de cocodrilo','460');

INSERT INTO PERTENECE VALUES('Gasteria baylissiana','Gasteria enana','70');
INSERT INTO PERTENECE VALUES('Gasteria bicolor','Gasteria enana','83');
INSERT INTO PERTENECE VALUES('Gasteria carinata','Gasteria enana','23');
INSERT INTO PERTENECE VALUES('Gasteria ellaphieae','Gasteria enana','140');

INSERT INTO PERTENECE VALUES('Aurea','Peyotillo','230');
INSERT INTO PERTENECE VALUES('Cristatum','Peyotillo','86');
INSERT INTO PERTENECE VALUES('Nudum','Peyotillo','92');
INSERT INTO PERTENECE VALUES('Roseiflorum','Peyotillo','150');
INSERT INTO PERTENECE VALUES('Alpus','Peyotillo','105');

--Manipulación tabla VENTA_FISICA
SELECT INSERTAR_VENTA_FISICA('1','317568','Peyotillo','417256','314762','2','efectivo','Aurea','$25.00');
SELECT INSERTAR_VENTA_FISICA('2','317568','Peyotillo','414676',NULL,'5','credito','Nudum','$250.00');
SELECT INSERTAR_VENTA_FISICA('3','317568','Peyotillo','425123',NULL,'1','debito','Alpus','$100.00');
SELECT INSERTAR_VENTA_FISICA('4','317568','Peyotillo','417478','314762','4','efectivo','Aurea','$125.00');
SELECT INSERTAR_VENTA_FISICA('5','317568','Peyotillo','417825','314762','2','credito','Nudum','$1000.00');
SELECT INSERTAR_VENTA_FISICA('6','317568','Peyotillo','417890',NULL,'6','debito','Alpus','$235.00');

SELECT INSERTAR_VENTA_FISICA('7','317823','Gasteria enana','417256','317729','2','efectivo','Gasteria baylissiana','$25.00');
SELECT INSERTAR_VENTA_FISICA('8','317823','Gasteria enana','414676',NULL,'5','efectivo','Gasteria bicolor','$250.00');
SELECT INSERTAR_VENTA_FISICA('9','317823','Gasteria enana','425123','317729','1','debito','Gasteria carinata','$100.00');
SELECT INSERTAR_VENTA_FISICA('10','317823','Gasteria enana','417478','317729','4','efectivo','Gasteria ellaphieae','$125.00');
SELECT INSERTAR_VENTA_FISICA('11','317823','Gasteria enana','417825','317729','2','efectivo','Gasteria ellaphieae','$1000.00');
SELECT INSERTAR_VENTA_FISICA('12','317823','Gasteria enana','417890',NULL,'6','efectivo','Gasteria enana','$235.00');

SELECT INSERTAR_VENTA_FISICA('13','312673','Piel de cocodrilo','417478','317005','4','efectivo','Piel de serpiente','$128.00');
SELECT INSERTAR_VENTA_FISICA('14','312673','Piel de cocodrilo','417825','317005','2','efectivo','Piel de serpiente','$100.00');
SELECT INSERTAR_VENTA_FISICA('15','312673','Piel de cocodrilo','417890',NULL,'6','efectivo','Piel de cocodrilo','$255.00');

--Manipulacuón tabla VENTA_ONLINE

SELECT INSERTAR_VENTA_ONLINE('1','2021-07-20','417256','3','debito','Peyotillo','C. 15 de Junio de 1861 MZ184 LT2160, Leyes de Reforma 3ra Secc, Iztapalapa, CDMX','317005');
SELECT INSERTAR_VENTA_ONLINE('2','2021-07-20','414676','7','credito','Aurea','Av. del Iman 1345 Del Coyoacan CDMX','317005');
SELECT INSERTAR_VENTA_ONLINE('3','2021-07-20','414676','7','credito','Aurea','Av. Plutarco Elias Calles 1423','317005');

SELECT INSERTAR_VENTA_ONLINE('4','2022-01-01','425123','4','debito','Alpus',' ','314561');
SELECT INSERTAR_VENTA_ONLINE('5','2022-01-01','417478','2','debito','Gasteria enana',' ','314561');
SELECT INSERTAR_VENTA_ONLINE('6','2022-01-01','417825','8','debito','Peyotillo',' ','314561'); 
SELECT INSERTAR_VENTA_ONLINE('7','2022-01-01','417890','1','debito','Piel de serpiente',' ','314561');

SELECT INSERTAR_VENTA_ONLINE('8','2021-05-01','417001','5','debito','Roseiflorum','Lomas de Becerra, Álvaro Obregón, 01280 Ciudad de México, CDMX','317005');
SELECT INSERTAR_VENTA_ONLINE('9','2021-06-01','417002','7','credito','Cristatum','C. Toronjil 9, Ignacio Allende, Azcapotzalco, 02810 Ciudad de México, CDMX','317005');
SELECT INSERTAR_VENTA_ONLINE('10','2021-07-01','417003','5','credito','Peyotillo','Av. Sta. Ana S/N, Presidentes Ejidales 1ra Secc, Coyoacán, 04470 Ciudad de México, CDMX','317005');
SELECT INSERTAR_VENTA_ONLINE('11','2021-08-01','417001','2','credito','Piel de serpiente','C. Cadena 258, Modelo, 57530 Nezahualcóyotl, Méx.','317005');

SELECT INSERTAR_VENTA_ONLINE('12','2020-11-02','417004','1','credito','Cactacea',' ','314561');
SELECT INSERTAR_VENTA_ONLINE('13','2020-12-03','417005','8','credito','Gasteria carinata',' ','314561');
SELECT INSERTAR_VENTA_ONLINE('14','2020-03-05','417006','7','debito','Cactacea',' ','314561');
SELECT INSERTAR_VENTA_ONLINE('15','2020-07-07','417004','4','debito','Piel de serpiente','Oyamel 172, Garcimarrero, Álvaro Obregón, 01510 Ciudad de México, CDMX','314561');
/*
SELECT * FROM DIRECCION_ONLINE
INSERT INTO DIRECCION_ONLINE VALUES('417123','')
DELETE FROM VENTA_ONLINE;
DELETE FROM DIRECCION_ONLINE;
DELETE FROM FORMA_PAGO_ONLINE;
DELETE FROM INSCRIBIR;*/

--Manipulación tabla PRODUCTOR
SELECT INSERTAR_PRODUCTOR('Peyotillo 1','Peyotillo','2021-07-22','2021-10-15','2021-10-22','2020-12-31');
SELECT INSERTAR_PRODUCTOR('Peyotillo 2','Peyotillo','2021-07-22','2021-10-15','2021-10-22','2020-12-31');
SELECT INSERTAR_PRODUCTOR('Peyotillo 3','Peyotillo','2021-07-22','2021-10-15','2021-10-22','2020-12-31');
SELECT INSERTAR_PRODUCTOR('Cactacea 1','Cactacea','2022-01-12','2022-01-15','2022-01-16','2020-10-17');
SELECT INSERTAR_PRODUCTOR('Cactacea 2','Cactacea','2021-01-12','2022-01-15','2022-01-17','2020-09-17');
SELECT INSERTAR_PRODUCTOR('Cactacea 3','Cactacea','2021-01-12','2022-01-15','2022-01-18','2020-07-17');

SELECT INSERTAR_PRODUCTOR('Aurea 1','Aurea','2021-12-20','2022-01-14','2021-12-17','2020-11-12');
SELECT INSERTAR_PRODUCTOR('Aurea 2','Aurea','2021-12-20','2022-01-10','2021-12-16','2020-11-12');
SELECT INSERTAR_PRODUCTOR('Aurea 3','Aurea','2021-12-20','2022-01-01','2021-12-15','2020-11-12');
SELECT INSERTAR_PRODUCTOR('Nudum 1','Nudum','2022-01-11','2022-01-14','2022-01-16','2020-10-16');
SELECT INSERTAR_PRODUCTOR('Nudum 2','Nudum','2022-01-10','2022-01-13','2022-01-17','2020-09-01');
SELECT INSERTAR_PRODUCTOR('Nudum 3','Nudum','2022-01-09','2022-01-12','2022-01-18','2020-07-08');

SELECT INSERTAR_PRODUCTOR('bicolor 1','Gasteria bicolor','2022-01-11','2022-01-14','2022-01-16','2020-10-16');
SELECT INSERTAR_PRODUCTOR('bicolor 2','Gasteria bicolor','2022-01-10','2022-01-13','2022-01-17','2020-09-01');
SELECT INSERTAR_PRODUCTOR('bicolor 3','Gasteria bicolor','2022-01-09','2022-01-12','2022-01-18','2020-07-08');

--Manipulació yabla PAREJA_PRODUCTOR
SELECT INSERTAR_PAREJA_PRODUCTOR('bicolor 1','bicolor 2','Gasteria bicolor');
SELECT INSERTAR_PAREJA_PRODUCTOR('bicolor 2','bicolor 3','Gasteria bicolor');
SELECT INSERTAR_PAREJA_PRODUCTOR('bicolor 3','bicolor 1','Gasteria bicolor');
SELECT INSERTAR_PAREJA_PRODUCTOR('Nudum 1','Nudum 2','Nudum');
SELECT INSERTAR_PAREJA_PRODUCTOR('Nudum 2','Nudum 3','Nudum');
SELECT INSERTAR_PAREJA_PRODUCTOR('Nudum 3','Nudum 1','Nudum');

SELECT INSERTAR_PAREJA_PRODUCTOR('Peyotillo 1','Peyotillo 2','Peyotillo');
SELECT INSERTAR_PAREJA_PRODUCTOR('Peyotillo 2','Peyotillo 3','Peyotillo');
SELECT INSERTAR_PAREJA_PRODUCTOR('Peyotillo 3','Peyotillo 1','Peyotillo');
SELECT INSERTAR_PAREJA_PRODUCTOR('Cactacea 1','Cactacea 2','Cactacea');
SELECT INSERTAR_PAREJA_PRODUCTOR('Cactacea 2','Cactacea 3','Cactacea');
SELECT INSERTAR_PAREJA_PRODUCTOR('Cactacea 3','Cactacea 1','Cactacea');

SELECT INSERTAR_PAREJA_PRODUCTOR('Aurea 1','Aurea 2','Aurea');
SELECT INSERTAR_PAREJA_PRODUCTOR('Aurea 2','Aurea 3','Aurea');
SELECT INSERTAR_PAREJA_PRODUCTOR('Aurea 3','Aurea 1','Aurea');

--Manipulación tabla SEMILLA
SELECT INSERTAR_SEMILLA('1','10','2021-07-23','Peyotillo 1');
SELECT INSERTAR_SEMILLA('2','200','2021-05-14','Peyotillo 2');
SELECT INSERTAR_SEMILLA('3','350','2021-11-12','Peyotillo 1');
SELECT INSERTAR_SEMILLA('4','190','2021-08-22','Aurea 1');
SELECT INSERTAR_SEMILLA('5','456','2021-05-24','Aurea 2');
SELECT INSERTAR_SEMILLA('6','635','2021-10-22','Aurea 3');
SELECT INSERTAR_SEMILLA('7','109','2021-03-14','Cactacea 1');
SELECT INSERTAR_SEMILLA('8','233','2021-06-28','Cactacea 2');
SELECT INSERTAR_SEMILLA('9','951','2021-12-31','Cactacea 1');
SELECT INSERTAR_SEMILLA('10','591','2021-07-22','Nudum 1');
SELECT INSERTAR_SEMILLA('11','456','2021-01-04','Nudum 2');
SELECT INSERTAR_SEMILLA('12','789','2021-11-02','Nudum 3');
SELECT INSERTAR_SEMILLA('13','28','2021-04-21','Nudum 1');
SELECT INSERTAR_SEMILLA('14','476','2021-05-24','bicolor 2');
SELECT INSERTAR_SEMILLA('15','660','2021-10-22','bicolor 3');

--Manipulación tabla SEMILLA_GERM
SELECT INSERTAR_SEMILLA_GERM('1','2021-07-23','2021-08-21','2021-03-12','2021-01-31','100');
SELECT INSERTAR_SEMILLA_GERM('2','2021-05-14','2021-09-20','2021-02-11','2021-02-12','200');
SELECT INSERTAR_SEMILLA_GERM('3','2021-11-12','2021-02-20','2021-06-18','2021-03-18','350');
SELECT INSERTAR_SEMILLA_GERM('4','2021-07-23','2021-01-20','2021-07-10','2021-04-17','1121');
SELECT INSERTAR_SEMILLA_GERM('5','2021-05-14','2021-07-25','2021-06-10','2021-08-15','278');
SELECT INSERTAR_SEMILLA_GERM('6','2021-11-12','2021-07-01','2021-09-19','2021-03-14','398');
SELECT INSERTAR_SEMILLA_GERM('7','2021-07-23','2021-03-24','2021-02-10','2021-06-19','8943');
SELECT INSERTAR_SEMILLA_GERM('8','2021-05-14','2021-09-20','2021-11-17','2021-08-15','873');
SELECT INSERTAR_SEMILLA_GERM('9','2021-11-12','2021-05-20','2021-12-17','2021-09-25','98');
SELECT INSERTAR_SEMILLA_GERM('10','2021-07-23','2021-05-22','2021-10-18','2021-04-28','82');
SELECT INSERTAR_SEMILLA_GERM('11','2021-05-14','2021-08-20','2021-10-13','2021-03-10','95');
SELECT INSERTAR_SEMILLA_GERM('12','2021-11-12','2021-01-03','2021-12-13','2021-08-26','30');
SELECT INSERTAR_SEMILLA_GERM('13','2021-07-23','2021-02-05','2021-03-12','2021-06-21','78');
SELECT INSERTAR_SEMILLA_GERM('14','2021-05-14','2021-04-26','2021-02-18','2021-04-30','89');
SELECT INSERTAR_SEMILLA_GERM('15','2021-11-12','2021-06-29','2021-03-12','2021-05-19','54');
