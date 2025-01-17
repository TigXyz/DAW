--------------------------------------------------------
-- TAREA BD04- BASE DE DATOS DE VENTAS DE MEDICAMENDOS   
--------------------------------------------------------
ALTER SESSION SET NLS_DATE_FORMAT='DD/MM/YYYY';

DROP TABLE "M_FAMILIAS" cascade constraints;
DROP TABLE "M_LABORATORIOS" cascade constraints;
DROP TABLE "M_MEDICAMENTOS" cascade constraints;
DROP TABLE "M_MEDICOS" cascade constraints;
DROP TABLE "M_PACIENTES" cascade constraints;
DROP TABLE "M_PRESENTACIONES" cascade constraints;
DROP TABLE "M_VENTAS_MED" cascade constraints;
DROP TABLE "M_VENTAS_RECETAS" cascade constraints;
--------------------------------------------------------
--  TABLA: M_FAMILIAS
--------------------------------------------------------

  CREATE TABLE "M_FAMILIAS" 
   ("ID_FAM" NUMBER(6,0), 
	"NOMBRE_FAM" VARCHAR2(60)
   ) ;
--------------------------------------------------------
--  TABLA: M_LABORATORIOS
--------------------------------------------------------

  CREATE TABLE "M_LABORATORIOS" 
   ("ID_LAB" NUMBER(6,0), 
	"NOMBRE_LAB" VARCHAR2(50), 
	"DIRECCION" VARCHAR2(60), 
	"POBLACION" VARCHAR2(50), 
	"PROVINCIA" VARCHAR2(30), 
	"TELEFONO" NUMBER(9,0), 
	"FAX" NUMBER(9,0), 
	"EMAIL" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  TABLA: M_MEDICAMENTOS
--------------------------------------------------------

  CREATE TABLE "M_MEDICAMENTOS" 
   ("ID_MED" NUMBER(6,0), 
	"NOMBRE_MED" VARCHAR2(50), 
	"STOCK" NUMBER(5,0), 
	"PRECIO_UNIT" NUMBER(8,2), 
	"CONRECETA" CHAR(1), 
	"ID_FAM" NUMBER(6,0), 
	"ID_PRES" NUMBER(6,0), 
	"ID_LAB" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  TABLA: M_MEDICOS
--------------------------------------------------------

  CREATE TABLE "M_MEDICOS" 
   ("DNIM" VARCHAR2(9), 
	"APELLIDOS" VARCHAR2(80), 
	"NOMBRE" VARCHAR2(50), 
	"CENTRO_SALUD" VARCHAR2(60), 
	"POBLACION" VARCHAR2(50), 
	"PROVINCIA" VARCHAR2(30), 
	"TELEFONO" NUMBER(9,0), 
	"MOVIL" NUMBER(9,0), 
	"EMAIL" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  TABLA: M_PACIENTES
--------------------------------------------------------

  CREATE TABLE "M_PACIENTES" 
   ("DNIP" VARCHAR2(9), 
	"NRO_SEG_SOC" NUMBER(12,0), 
	"APELLIDOS" VARCHAR2(80), 
	"NOMBRE" VARCHAR2(50), 
	"SEXO" CHAR(1), 
	"CENTRO_SALUD" VARCHAR2(60), 
	"DIRECCION" VARCHAR2(60), 
	"POBLACION" VARCHAR2(50), 
	"PROVINCIA" VARCHAR2(30), 
	"TELEFONO" NUMBER(9,0), 
	"MOVIL" NUMBER(9,0), 
	"EMAIL" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  TABLA: M_PRESENTACIONES
--------------------------------------------------------

  CREATE TABLE "M_PRESENTACIONES" 
   ("ID_PRES" NUMBER(6,0), 
	"NOMBRE_PRES" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  TABLA: M_VENTAS_MED
--------------------------------------------------------

  CREATE TABLE "M_VENTAS_MED" 
   ("ID_VENTA" NUMBER(6,0), 
	"ID_MED" NUMBER(6,0), 
	"FECHA_VENTA" DATE, 
	"UNIDADES" NUMBER(4,0)
   ) ;
--------------------------------------------------------
--  TABLA: M_VENTAS_RECETAS
--------------------------------------------------------

  CREATE TABLE "M_VENTAS_RECETAS" 
   ("ID_VENTA" NUMBER(6,0), 
	"DNIM" VARCHAR2(9), 
	"DNIP" VARCHAR2(9)
   ) ;
REM INSERTING into M_FAMILIAS
SET DEFINE OFF;
Insert into M_FAMILIAS (ID_FAM,NOMBRE_FAM) values ('1','ANTIBIÓTICOS');
Insert into M_FAMILIAS (ID_FAM,NOMBRE_FAM) values ('2','ANTIINFLAMATORIOS');
Insert into M_FAMILIAS (ID_FAM,NOMBRE_FAM) values ('3','ANALGESICOS');
Insert into M_FAMILIAS (ID_FAM,NOMBRE_FAM) values ('4','VACUNAS');
Insert into M_FAMILIAS (ID_FAM,NOMBRE_FAM) values ('5','COLIRIOS');
Insert into M_FAMILIAS (ID_FAM,NOMBRE_FAM) values ('6','SUEROS');
Insert into M_FAMILIAS (ID_FAM,NOMBRE_FAM) values ('7','ANTICONCEPTIVOS');
commit;
REM INSERTING into M_LABORATORIOS
SET DEFINE OFF;
Insert into M_LABORATORIOS (ID_LAB,NOMBRE_LAB,DIRECCION,POBLACION,PROVINCIA,TELEFONO,FAX,EMAIL) values ('1','LABORATORIO HERMANOS ROS','SAN SEBAS,14','GETAFE','MADRID','914546474','914546475','hgonzalez@gmail.com');
Insert into M_LABORATORIOS (ID_LAB,NOMBRE_LAB,DIRECCION,POBLACION,PROVINCIA,TELEFONO,FAX,EMAIL) values ('2','LABORATORIO REGIONAL ANDALUZ','CTRA. SALINAS','MÁLAGA','MÁLAGA','954546474','954546475','lfm@hotmail.com');
Insert into M_LABORATORIOS (ID_LAB,NOMBRE_LAB,DIRECCION,POBLACION,PROVINCIA,TELEFONO,FAX,EMAIL) values ('3','LABORATORIO REGIONAL MANCHEGO','NACIONAL 420 KM 56','ALCAZAR DE SAN JUAN','CIUDAD REAL','926546474','926546475','labman@lab.es');
Insert into M_LABORATORIOS (ID_LAB,NOMBRE_LAB,DIRECCION,POBLACION,PROVINCIA,TELEFONO,FAX,EMAIL) values ('4','LABORATORIO REGIONAL MURCIANO','POL. IND.LARACHE','MURCIA','MURCIA','','','');
commit;
REM INSERTING into M_MEDICAMENTOS
SET DEFINE OFF;
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('1','medicamento FIEBRE 1-CÁPSULAS','100','5,7','N','3','1','1');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('2','MEDICAMENTO FIEBRE 1-JARABE','80','8','N','3','2','1');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('3','MEDICAMENTO FIEBRE 2-COMPRIMIDOS','120','3','N','3','3','1');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('4','Medicamento FIEBRE 2-JARABE','200','6','N','3','2','1');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('5','MEDICAMENTO ANTINFLAMATORIO 1-COMPRIMIDOS','100','7','N','2','3','2');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('6','MEDICAMENTO ANTINFLAMATORIO 1-JARABE','160','10','N','2','2','2');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('7','MEDICAMENTO ANTINFLAMATORIO 2-GRANULADO','330','4','N','2','6','1');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('8','MEDICAMENTO ANTINFLAMATORIO 3-CREMA','50','11','N','2','5','3');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('9','Medicamento ANTIBIÓTICO 1-COMPRIMIDOS','241','12','S','1','3','3');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('10','MEDICAMENTO ANTIBIÓTICO 1-JARABE','130','4','S','1','2','3');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('11','MEDICAMENTO ANTIBIÓTICO 2-CÁPSULAS','210','6,6','S','1','1','2');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('12','MEDICAMENTO ANTIBIÓTICO 3-COMPRIMIDOS','90','9,8','S','1','3','1');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('13','MEDICAMENTO VACUNA GRIPE 1','400','25','S','4','7','1');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('14','MEDICAMENTO VACUNA TÉTANO 2','200','21','S','4','7','3');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('15','MEDICAMENTO VACUNA GRIPE UNO','400','20','S','4','7','2');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('16','MEDICAMENTO VACUNA GRIPE UNO','300','23','S','4','7','1');
Insert into M_MEDICAMENTOS (ID_MED,NOMBRE_MED,STOCK,PRECIO_UNIT,CONRECETA,ID_FAM,ID_PRES,ID_LAB) values ('17','MEDICAMENTO DOLOR DOS','40','6,5','S','2','3','3');
commit;
REM INSERTING into M_MEDICOS
SET DEFINE OFF;
Insert into M_MEDICOS (DNIM,APELLIDOS,NOMBRE,CENTRO_SALUD,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('11111111A','apellido11 apellido21','nombre1','CENTRO SALUD 1','CIUDAD REAL','CIUDAD REAL','926111111',null,'nombre1.apellido11@sescam.es');
Insert into M_MEDICOS (DNIM,APELLIDOS,NOMBRE,CENTRO_SALUD,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('22222222B','APELLIDO12 APELLIDO23','NOMBRE2','CENTRO SALUD 2','CIUDAD REAL','Ciudad Real','926222222','611111111','nombre2.apellido12@sescam.es');
Insert into M_MEDICOS (DNIM,APELLIDOS,NOMBRE,CENTRO_SALUD,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('33333333C','APELLIDO13 APELLIDO23','NOMBRE3','CENTRO SALUD 1','CIUDAD REAL','CIUDAD REAL','926222222',null,'nombre3.apellido13@sescam.es');
Insert into M_MEDICOS (DNIM,APELLIDOS,NOMBRE,CENTRO_SALUD,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('44444444D','Apellido17 Apellido24','Nombre1','CENTRO SALUD 1','puertollano','CIUDAD REAL','926331123','622344556','nombre1.apellido17@sescam.es');
Insert into M_MEDICOS (DNIM,APELLIDOS,NOMBRE,CENTRO_SALUD,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('55555555E','apellido15 apellido25','NOMBRE4','CENTRO SALUD 1','Puertollano','Ciudad Real','926353535','62234336','nombre4.apellido15@sescam.es');
Insert into M_MEDICOS (DNIM,APELLIDOS,NOMBRE,CENTRO_SALUD,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('66666666f','APELLIDO16 APELLIDO26','NOMBRE5','CENTRO SALUD 2','Puertollano','CIUDAD REAL','926232323','622331146','nombre5.apellido16@sescam.es');
Insert into M_MEDICOS (DNIM,APELLIDOS,NOMBRE,CENTRO_SALUD,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('77777777G','APELLIDO12 APELLIDO21','NOMBRE1','CENTRO SALUD 2','PUERTOLLANO','CIUDAD REAL','926232424','656334546','nombre1.apellido12@sescam.es');
Insert into M_MEDICOS (DNIM,APELLIDOS,NOMBRE,CENTRO_SALUD,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('88888888H','APELLIDO18 APELLIDO28','NOMBRE8','CENTRO SALUD 3','DAIMIEL','CIUDAD REAL','926212424','656334462','nombre1.apellido18@sescam.es');
Insert into M_MEDICOS (DNIM,APELLIDOS,NOMBRE,CENTRO_SALUD,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('99999999I','APELLIDO11 APELLIDO29','NOMBRE9','CENTRO SALUD 1','DAIMIEL','CIUDAD REAL','926222427','656334461','nombre1.apellido11@sescam.es');
commit;
REM INSERTING into M_PACIENTES
SET DEFINE OFF;
Insert into M_PACIENTES (DNIP,NRO_SEG_SOC,APELLIDOS,NOMBRE,SEXO,CENTRO_SALUD,DIRECCION,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('10000000A','11111','Papellido11 Papellido21','Pnombre1','H','CENTRO SALUD 1','C/COSO,1','CIUDAD REAL','CIUDAD REAL','926111111',null,'nombre1.papellido11@gmail.es');
Insert into M_PACIENTES (DNIP,NRO_SEG_SOC,APELLIDOS,NOMBRE,SEXO,CENTRO_SALUD,DIRECCION,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('20000000B','22222','PAPELLIDO12 PAPELLIDO23','PNOMBRE2','M','CENTRO SALUD 2','C/MORA,12-1A','CIUDAD REAL','Ciudad Real',null,'611111111','pnombre2.papellido12@gmail.es');
Insert into M_PACIENTES (DNIP,NRO_SEG_SOC,APELLIDOS,NOMBRE,SEXO,CENTRO_SALUD,DIRECCION,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('30000000C','33333','PAPELLIDO13 PAPELLIDO23','PNOMBRE3','H','CENTRO SALUD 1','C/POZO,51-1C','TOLEDO','TOLEDOL','926222222',null,'pnombre3.papellido13@hotmail.es');
Insert into M_PACIENTES (DNIP,NRO_SEG_SOC,APELLIDOS,NOMBRE,SEXO,CENTRO_SALUD,DIRECCION,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('40000000D','44444','PApellido17 PApellido24','PNombre1','H','CENTRO SALUD 1',null,'puertollano','CIUDAD REAL','926331123','622344556','pnombre1.papellido17@gmail.es');
Insert into M_PACIENTES (DNIP,NRO_SEG_SOC,APELLIDOS,NOMBRE,SEXO,CENTRO_SALUD,DIRECCION,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('50000000E','55555','Papellido15 Papellido25','PNOMBRE4','M','CENTRO SALUD 1','C/SALSIPUEDES,21','Puertollano','Ciudad Real','926353535','62234336','pnombre4.papellido15@afir.es');
Insert into M_PACIENTES (DNIP,NRO_SEG_SOC,APELLIDOS,NOMBRE,SEXO,CENTRO_SALUD,DIRECCION,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('60000000F','66666','PAPELLIDO16 PAPELLIDO26','PNOMBRE5','M','CENTRO SALUD 2',null,'Puertollano','CIUDAD REAL',null,'622331146','pnombre5.papellido16@palfa.es');
Insert into M_PACIENTES (DNIP,NRO_SEG_SOC,APELLIDOS,NOMBRE,SEXO,CENTRO_SALUD,DIRECCION,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('70000000G','77777','PAPELLIDO12 PAPELLIDO21','PNOMBRE1','H','CENTRO SALUD 2','C/BARRIAL,5','PUERTOLLANO','CIUDAD REAL','926232424','656334546','pnombre1.apellido12@gmail.es');
Insert into M_PACIENTES (DNIP,NRO_SEG_SOC,APELLIDOS,NOMBRE,SEXO,CENTRO_SALUD,DIRECCION,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('80000000H','88888','PAPELLIDO18 PAPELLIDO28','PNOMBRE8','M','CENTRO SALUD 3','C/MATA,21-1A','DAIMIEL','CIUDAD REAL','926212424',null,'pnombre1.papellido18@gmail.es');
Insert into M_PACIENTES (DNIP,NRO_SEG_SOC,APELLIDOS,NOMBRE,SEXO,CENTRO_SALUD,DIRECCION,POBLACION,PROVINCIA,TELEFONO,MOVIL,EMAIL) values ('90000000I','99999','PAPELLIDO11 PAPELLIDO29','PNOMBRE9','M','CENTRO SALUD 1',null,'DAIMIEL','CIUDAD REAL','926222427','656334461','pnombre1.papellido11@hotmail.es');
commit;
REM INSERTING into M_PRESENTACIONES
SET DEFINE OFF;
Insert into M_PRESENTACIONES (ID_PRES,NOMBRE_PRES) values ('1','CÁPSULAS');
Insert into M_PRESENTACIONES (ID_PRES,NOMBRE_PRES) values ('2','JARABE');
Insert into M_PRESENTACIONES (ID_PRES,NOMBRE_PRES) values ('3','COMPRIMIDOS');
Insert into M_PRESENTACIONES (ID_PRES,NOMBRE_PRES) values ('4','SUPOSITORIOS');
Insert into M_PRESENTACIONES (ID_PRES,NOMBRE_PRES) values ('5','CREMAS');
Insert into M_PRESENTACIONES (ID_PRES,NOMBRE_PRES) values ('6','GRANULADOS');
Insert into M_PRESENTACIONES (ID_PRES,NOMBRE_PRES) values ('7','INYECTABLE');
commit;
REM INSERTING into M_VENTAS_MED
SET DEFINE OFF;
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('1','1',to_date('25/10/16','DD/MM/RR'),'2');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('2','1',to_date('30/10/16','DD/MM/RR'),'1');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('3','1',to_date('01/11/16','DD/MM/RR'),'10');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('4','2',to_date('15/10/16','DD/MM/RR'),'5');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('5','2',to_date('23/10/16','DD/MM/RR'),'2');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('6','3',to_date('22/10/16','DD/MM/RR'),'1');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('7','3',to_date('30/10/16','DD/MM/RR'),'1');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('8','5',to_date('12/10/16','DD/MM/RR'),'1');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('9','5',to_date('15/10/16','DD/MM/RR'),'1');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('10','5',to_date('24/10/16','DD/MM/RR'),'1');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('11','5',to_date('30/10/16','DD/MM/RR'),'1');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('12','12',to_date('21/12/16','DD/MM/RR'),'2');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('13','12',to_date('15/10/16','DD/MM/RR'),'3');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('14','12',to_date('11/09/16','DD/MM/RR'),'1');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('15','16',to_date('20/05/16','DD/MM/RR'),'3');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('16','14',to_date('25/11/16','DD/MM/RR'),'5');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('17','14',to_date('10/06/16','DD/MM/RR'),'2');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('18','14',to_date('14/07/16','DD/MM/RR'),'4');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('19','6',to_date('14/08/16','DD/MM/RR'),'2');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('20','6',to_date('04/09/16','DD/MM/RR'),'4');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('21','8',to_date('25/03/16','DD/MM/RR'),'7');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('22','4',to_date('12/12/16','DD/MM/RR'),'1');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('23','9',to_date('12/10/16','DD/MM/RR'),'3');
Insert into M_VENTAS_MED (ID_VENTA,ID_MED,FECHA_VENTA,UNIDADES) values ('24','9',to_date('12/12/16','DD/MM/RR'),'1');
commit;
REM INSERTING into M_VENTAS_RECETAS
SET DEFINE OFF;
Insert into M_VENTAS_RECETAS (ID_VENTA,DNIM,DNIP) values ('3','11111111A','30000000C');
Insert into M_VENTAS_RECETAS (ID_VENTA,DNIM,DNIP) values ('4','11111111A','40000000D');
Insert into M_VENTAS_RECETAS (ID_VENTA,DNIM,DNIP) values ('6','77777777G','80000000H');
Insert into M_VENTAS_RECETAS (ID_VENTA,DNIM,DNIP) values ('10','44444444D','90000000I');
Insert into M_VENTAS_RECETAS (ID_VENTA,DNIM,DNIP) values ('12','22222222B','30000000C');
Insert into M_VENTAS_RECETAS (ID_VENTA,DNIM,DNIP) values ('16','33333333C','50000000E');
Insert into M_VENTAS_RECETAS (ID_VENTA,DNIM,DNIP) values ('18','44444444D','90000000I');
Insert into M_VENTAS_RECETAS (ID_VENTA,DNIM,DNIP) values ('21','77777777G','60000000F');
Insert into M_VENTAS_RECETAS (ID_VENTA,DNIM,DNIP) values ('23','77777777G','50000000E');
Insert into M_VENTAS_RECETAS (ID_VENTA,DNIM,DNIP) values ('24','88888888H','20000000B');
commit;
--------------------------------------------------------
--  Constraints for Table M_FAMILIAS
--------------------------------------------------------

  ALTER TABLE "M_FAMILIAS" ADD CONSTRAINT "PK_M_FAMILIAS" PRIMARY KEY ("ID_FAM") ENABLE;
--------------------------------------------------------
--  Constraints for Table M_LABORATORIOS
--------------------------------------------------------

  ALTER TABLE "M_LABORATORIOS" ADD CONSTRAINT "PK_M_LABORATORIOS" PRIMARY KEY ("ID_LAB") ENABLE;
--------------------------------------------------------
--  Constraints for Table M_MEDICAMENTOS
--------------------------------------------------------

  ALTER TABLE "M_MEDICAMENTOS" ADD CONSTRAINT "PK_M_MEDICAMENTOS" PRIMARY KEY ("ID_MED") ENABLE;
--------------------------------------------------------
--  Constraints for Table M_MEDICOS
--------------------------------------------------------

  ALTER TABLE "M_MEDICOS" ADD CONSTRAINT "PK_M_MEDICOS" PRIMARY KEY ("DNIM") ENABLE;
--------------------------------------------------------
--  Constraints for Table M_PACIENTES
--------------------------------------------------------

  ALTER TABLE "M_PACIENTES" ADD CONSTRAINT "CK_MPACIENTES_SEXO" CHECK (UPPER(SEXO) IN ('H','M')) ENABLE;
 
  ALTER TABLE "M_PACIENTES" ADD CONSTRAINT "PK_M_PACIENTES" PRIMARY KEY ("DNIP") ENABLE;
 
  ALTER TABLE "M_PACIENTES" ADD CONSTRAINT "UK_M_PAC_NSS" UNIQUE ("NRO_SEG_SOC") ENABLE;
--------------------------------------------------------
--  Constraints for Table M_PRESENTACIONES
--------------------------------------------------------

  ALTER TABLE "M_PRESENTACIONES" ADD CONSTRAINT "PK_M_PRESENTACIONES" PRIMARY KEY ("ID_PRES") ENABLE;
--------------------------------------------------------
--  Constraints for Table M_VENTAS_MED
--------------------------------------------------------

  ALTER TABLE "M_VENTAS_MED" ADD CONSTRAINT "PK_M_VENTAS_MED" PRIMARY KEY ("ID_VENTA") ENABLE;
--------------------------------------------------------
--  Constraints for Table M_VENTAS_RECETAS
--------------------------------------------------------

  ALTER TABLE "M_VENTAS_RECETAS" ADD PRIMARY KEY ("ID_VENTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_MEDICAMENTOS
--------------------------------------------------------

  ALTER TABLE "M_MEDICAMENTOS" ADD FOREIGN KEY ("ID_FAM")
	  REFERENCES "M_FAMILIAS" ("ID_FAM") ENABLE;
 
  ALTER TABLE "M_MEDICAMENTOS" ADD FOREIGN KEY ("ID_PRES")
	  REFERENCES "M_PRESENTACIONES" ("ID_PRES") ENABLE;
 
  ALTER TABLE "M_MEDICAMENTOS" ADD FOREIGN KEY ("ID_LAB")
	  REFERENCES "M_LABORATORIOS" ("ID_LAB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_VENTAS_MED
--------------------------------------------------------

  ALTER TABLE "M_VENTAS_MED" ADD CONSTRAINT "FK_VEN_MED" FOREIGN KEY ("ID_MED")
	  REFERENCES "M_MEDICAMENTOS" ("ID_MED") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_VENTAS_RECETAS
--------------------------------------------------------

  ALTER TABLE "M_VENTAS_RECETAS" ADD CONSTRAINT "FK_REC_MED" FOREIGN KEY ("DNIM")
	  REFERENCES "M_MEDICOS" ("DNIM") ENABLE;
 
  ALTER TABLE "M_VENTAS_RECETAS" ADD CONSTRAINT "FK_REC_PAC" FOREIGN KEY ("DNIP")
	  REFERENCES "M_PACIENTES" ("DNIP") ENABLE;
 
  ALTER TABLE "M_VENTAS_RECETAS" ADD CONSTRAINT "FK_REC_VEN" FOREIGN KEY ("ID_VENTA")
	  REFERENCES "M_VENTAS_MED" ("ID_VENTA") ENABLE;
