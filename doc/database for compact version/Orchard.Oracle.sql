
--------------------------------------------------------
--  DDL for Sequence HIBERNATE_SEQUENCE
--------------------------------------------------------

CREATE SEQUENCE  "HIBERNATE_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;


--------------------------------------------------------
--  DDL for Table ORCHARD_FRAMEWORK_CONTENTITEMR
--------------------------------------------------------

  CREATE TABLE "ORCHARD_FRAMEWORK_CONTENTITEMR" 
   (	"ID" NUMBER(10,0), 
	"DATA" NVARCHAR2(2000), 
	"CONTENTTYPE_ID" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ORCHARD_FRAMEWORK_CONTENTITEMV
--------------------------------------------------------

  CREATE TABLE "ORCHARD_FRAMEWORK_CONTENTITEMV" 
   (	"ID" NUMBER(10,0), 
	"VERSIONNUMBER" NUMBER(10,0), 
	"PUBLISHED" NUMBER(1,0), 
	"LATEST" NUMBER(1,0), 
	"DATA" NVARCHAR2(2000), 
	"CONTENTITEMRECORD_ID" NUMBER(10,0)
   )  ;
--------------------------------------------------------
--  DDL for Table ORCHARD_FRAMEWORK_CONTENTTYPER
--------------------------------------------------------

  CREATE TABLE "ORCHARD_FRAMEWORK_CONTENTTYPER" 
   (	"ID" NUMBER(10,0), 
	"NAME" NVARCHAR2(255)
   )  ;
--------------------------------------------------------
--  DDL for Table ORCHARD_FRAMEWORK_CULTURERECOR
--------------------------------------------------------

  CREATE TABLE "ORCHARD_FRAMEWORK_CULTURERECOR" 
   (	"ID" NUMBER(10,0), 
	"CULTURE" NVARCHAR2(255)
   )  ;
--------------------------------------------------------
--  DDL for Table ORCHARD_FRAMEWORK_DATAMIGRATIO
--------------------------------------------------------

  CREATE TABLE "ORCHARD_FRAMEWORK_DATAMIGRATIO" 
   (	"ID" NUMBER(10,0), 
	"DATAMIGRATIONCLASS" NVARCHAR2(255), 
	"VERSION" NUMBER(10,0)
   )  ;

--------------------------------------------------------
--  DDL for Table ORCHARD_THEMES_THEMESITESETTIN
--------------------------------------------------------

  CREATE TABLE "ORCHARD_THEMES_THEMESITESETTIN" 
   (	"ID" NUMBER(10,0), 
	"CURRENTTHEMENAME" NVARCHAR2(255)
   )  ;

--------------------------------------------------------
--  DDL for Table SETTINGS_CONTENTFIELDRECORD
--------------------------------------------------------

  CREATE TABLE "SETTINGS_CONTENTFIELDRECORD" 
   (	"ID" NUMBER(10,0), 
	"NAME" NVARCHAR2(255)
   )  ;
--------------------------------------------------------
--  DDL for Table SETTINGS_CONTENTPARTDEFINITION
--------------------------------------------------------

  CREATE TABLE "SETTINGS_CONTENTPARTDEFINITION" 
   (	"ID" NUMBER(10,0), 
	"NAME" NVARCHAR2(255), 
	"HIDDEN" NUMBER(1,0), 
	"SETTINGS" NVARCHAR2(2000)
   ) ;
--------------------------------------------------------
--  DDL for Table SETTINGS_CONTENTPARTFIELDDEFIN
--------------------------------------------------------

  CREATE TABLE "SETTINGS_CONTENTPARTFIELDDEFIN" 
   (	"ID" NUMBER(10,0), 
	"NAME" NVARCHAR2(255), 
	"SETTINGS" NVARCHAR2(2000), 
	"CONTENTFIELDRECORD_ID" NUMBER(10,0), 
	"CONTENTPARTDEFINITIONRECORD_ID" NUMBER(10,0)
   )  ;
--------------------------------------------------------
--  DDL for Table SETTINGS_CONTENTTYPEDEFINITION
--------------------------------------------------------

  CREATE TABLE "SETTINGS_CONTENTTYPEDEFINITION" 
   (	"ID" NUMBER(10,0), 
	"NAME" NVARCHAR2(255), 
	"DISPLAYNAME" NVARCHAR2(255), 
	"HIDDEN" NUMBER(1,0), 
	"SETTINGS" NVARCHAR2(2000)
   ) ;
--------------------------------------------------------
--  DDL for Table SETTINGS_CONTENTTYPEPARTDEFINI
--------------------------------------------------------

  CREATE TABLE "SETTINGS_CONTENTTYPEPARTDEFINI" 
   (	"ID" NUMBER(10,0), 
	"SETTINGS" NVARCHAR2(2000), 
	"CONTENTPARTDEFINITIONRECORD_ID" NUMBER(10,0), 
	"CONTENTTYPEDEFINITIONRECORD_ID" NUMBER(10,0)
   )  ;
--------------------------------------------------------
--  DDL for Table SETTINGS_SHELLDESCRIPTORRECORD
--------------------------------------------------------

  CREATE TABLE "SETTINGS_SHELLDESCRIPTORRECORD" 
   (	"ID" NUMBER(10,0), 
	"SERIALNUMBER" NUMBER(10,0)
   )  ;
--------------------------------------------------------
--  DDL for Table SETTINGS_SHELLFEATURERECORD
--------------------------------------------------------

  CREATE TABLE "SETTINGS_SHELLFEATURERECORD" 
   (	"ID" NUMBER(10,0), 
	"NAME" NVARCHAR2(255), 
	"SHELLDESCRIPTORRECORD_ID" NUMBER(10,0)
   )  ;
--------------------------------------------------------
--  DDL for Table SETTINGS_SHELLFEATURESTATERECO
--------------------------------------------------------

  CREATE TABLE "SETTINGS_SHELLFEATURESTATERECO" 
   (	"ID" NUMBER(10,0), 
	"NAME" NVARCHAR2(255), 
	"INSTALLSTATE" NVARCHAR2(255), 
	"ENABLESTATE" NVARCHAR2(255), 
	"SHELLSTATERECORD_ID" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SETTINGS_SHELLPARAMETERRECORD
--------------------------------------------------------

  CREATE TABLE "SETTINGS_SHELLPARAMETERRECORD" 
   (	"ID" NUMBER(10,0), 
	"COMPONENT" NVARCHAR2(255), 
	"NAME" NVARCHAR2(255), 
	"VALUE" NVARCHAR2(255), 
	"SHELLDESCRIPTORRECORD_ID" NUMBER(10,0)
   )  ;
--------------------------------------------------------
--  DDL for Table SETTINGS_SHELLSTATERECORD
--------------------------------------------------------

  CREATE TABLE "SETTINGS_SHELLSTATERECORD" 
   (	"ID" NUMBER(10,0), 
	"UNUSED" NVARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SETTINGS_SITESETTINGS2PARTRECO
--------------------------------------------------------

  CREATE TABLE "SETTINGS_SITESETTINGS2PARTRECO" 
   (	"ID" NUMBER(10,0), 
	"BASEURL" NVARCHAR2(2000)
   ) ;
--------------------------------------------------------
--  DDL for Table SETTINGS_SITESETTINGSPARTRECOR
--------------------------------------------------------

  CREATE TABLE "SETTINGS_SITESETTINGSPARTRECOR" 
   (	"ID" NUMBER(10,0), 
	"SITESALT" NVARCHAR2(255), 
	"SITENAME" NVARCHAR2(255), 
	"SUPERUSER" NVARCHAR2(255), 
	"PAGETITLESEPARATOR" NVARCHAR2(255), 
	"HOMEPAGE" NVARCHAR2(255), 
	"SITECULTURE" NVARCHAR2(255), 
	"RESOURCEDEBUGMODE" NVARCHAR2(255) DEFAULT 'FromAppSetting', 
	"PAGESIZE" NUMBER(10,0), 
	"SITETIMEZONE" NVARCHAR2(255)
   )  ;


INSERT INTO "ORCHARD_FRAMEWORK_CONTENTITEMR" VALUES(1,NULL,1);
INSERT INTO "ORCHARD_FRAMEWORK_CONTENTITEMR" VALUES(2,NULL,2);

INSERT INTO "ORCHARD_FRAMEWORK_CONTENTITEMV" VALUES(1,1,1,1,NULL,1);
INSERT INTO "ORCHARD_FRAMEWORK_CONTENTITEMV" VALUES(2,1,1,1,NULL,2);

INSERT INTO "ORCHARD_FRAMEWORK_CONTENTTYPER" VALUES(1,'Site');
INSERT INTO "ORCHARD_FRAMEWORK_CONTENTTYPER" VALUES(2,'User');

INSERT INTO "ORCHARD_FRAMEWORK_CULTURERECOR" VALUES(1,'en-US');

INSERT INTO "ORCHARD_FRAMEWORK_DATAMIGRATIO" VALUES(1,'Orchard.Core.Settings.Migrations',4);
INSERT INTO "ORCHARD_FRAMEWORK_DATAMIGRATIO" VALUES(2,'Orchard.ContentManagement.DataMigrations.FrameworkDataMigration',2);
INSERT INTO "ORCHARD_FRAMEWORK_DATAMIGRATIO" VALUES(10,'Orchard.Themes.ThemesDataMigration',1);

INSERT INTO "ORCHARD_THEMES_THEMESITESETTIN" VALUES(1,'TheThemeMachine');

INSERT INTO "SETTINGS_CONTENTTYPEDEFINITION" VALUES(1,'Site','Site',0,'<settings />');
INSERT INTO "SETTINGS_CONTENTTYPEDEFINITION" VALUES(10,'User','User',0,'<settings ContentTypeSettings.Creatable="False" />');


INSERT INTO "SETTINGS_SHELLDESCRIPTORRECORD" VALUES(1,2);

INSERT INTO "SETTINGS_SHELLFEATURERECORD" VALUES(23,'Orchard.Framework',1);
INSERT INTO "SETTINGS_SHELLFEATURERECORD" VALUES(32,'Settings',1);
INSERT INTO "SETTINGS_SHELLFEATURERECORD" VALUES(33,'Shapes',1);
INSERT INTO "SETTINGS_SHELLFEATURERECORD" VALUES(37,'Orchard.Themes',1);
INSERT INTO "SETTINGS_SHELLFEATURERECORD" VALUES(40,'Orchard.Modules',1);
INSERT INTO "SETTINGS_SHELLFEATURERECORD" VALUES(48,'Orchard.jQuery',1);
INSERT INTO "SETTINGS_SHELLFEATURERECORD" VALUES(49,'Orchard.PublishLater',1);
INSERT INTO "SETTINGS_SHELLFEATURERECORD" VALUES(50,'Orchard.jQuery',1);
INSERT INTO "SETTINGS_SHELLFEATURERECORD" VALUES(91,'TheThemeMachine',1);
INSERT INTO "SETTINGS_SHELLFEATURERECORD" VALUES(92,'Orchard.Home',1);

INSERT INTO "SETTINGS_SHELLFEATURESTATERECO" VALUES(1,'Orchard.Framework','Up','Up',1);
INSERT INTO "SETTINGS_SHELLFEATURESTATERECO" VALUES(10,'Settings','Up','Up',1);
INSERT INTO "SETTINGS_SHELLFEATURESTATERECO" VALUES(11,'Shapes','Up','Up',1);
INSERT INTO "SETTINGS_SHELLFEATURESTATERECO" VALUES(15,'Orchard.Themes','Up','Up',1);
INSERT INTO "SETTINGS_SHELLFEATURESTATERECO" VALUES(18,'Orchard.Modules','Up','Up',1);
INSERT INTO "SETTINGS_SHELLFEATURESTATERECO" VALUES(26,'Orchard.jQuery','Up','Up',1);
INSERT INTO "SETTINGS_SHELLFEATURESTATERECO" VALUES(44,'TheThemeMachine','Up','Up',1);
INSERT INTO "SETTINGS_SHELLFEATURESTATERECO" VALUES(45,'Orchard.Home','Up','Up',1);

INSERT INTO "SETTINGS_SHELLSTATERECORD" VALUES(1,NULL);

INSERT INTO "SETTINGS_SITESETTINGS2PARTRECO" VALUES(1,'http://localhost:30321/OrchardLocal');

INSERT INTO "SETTINGS_SITESETTINGSPARTRECOR" VALUES(1,'c8147e8dab1c4130b33bd24b803163f6','Orchard','admin',' - ',NULL,'en-US','FromAppSetting',10,'China Standard Time');



--------------------------------------------------------
--  Constraints for Table SETTINGS_SHELLFEATURERECORD
--------------------------------------------------------

  ALTER TABLE "SETTINGS_SHELLFEATURERECORD" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table SETTINGS_SHELLFEATURESTATERECO
--------------------------------------------------------

  ALTER TABLE "SETTINGS_SHELLFEATURESTATERECO" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table SETTINGS_SITESETTINGSPARTRECOR
--------------------------------------------------------

  ALTER TABLE "SETTINGS_SITESETTINGSPARTRECOR" ADD PRIMARY KEY ("ID");
--------------------------------------------------------
--  Constraints for Table ORCHARD_FRAMEWORK_DATAMIGRATIO
--------------------------------------------------------

  ALTER TABLE "ORCHARD_FRAMEWORK_DATAMIGRATIO" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table ORCHARD_FRAMEWORK_CULTURERECOR
--------------------------------------------------------

  ALTER TABLE "ORCHARD_FRAMEWORK_CULTURERECOR" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table SETTINGS_SHELLDESCRIPTORRECORD
--------------------------------------------------------

  ALTER TABLE "SETTINGS_SHELLDESCRIPTORRECORD" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table ORCHARD_THEMES_THEMESITESETTIN
--------------------------------------------------------

  ALTER TABLE "ORCHARD_THEMES_THEMESITESETTIN" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table SETTINGS_CONTENTFIELDRECORD
--------------------------------------------------------

  ALTER TABLE "SETTINGS_CONTENTFIELDRECORD" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table SETTINGS_CONTENTTYPEDEFINITION
--------------------------------------------------------

  ALTER TABLE "SETTINGS_CONTENTTYPEDEFINITION" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table SETTINGS_SHELLSTATERECORD
--------------------------------------------------------

  ALTER TABLE "SETTINGS_SHELLSTATERECORD" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table ORCHARD_FRAMEWORK_CONTENTTYPER
--------------------------------------------------------

  ALTER TABLE "ORCHARD_FRAMEWORK_CONTENTTYPER" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table ORCHARD_FRAMEWORK_CONTENTITEMV
--------------------------------------------------------

  ALTER TABLE "ORCHARD_FRAMEWORK_CONTENTITEMV" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table SETTINGS_CONTENTPARTFIELDDEFIN
--------------------------------------------------------

  ALTER TABLE "SETTINGS_CONTENTPARTFIELDDEFIN" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table SETTINGS_CONTENTPARTDEFINITION
--------------------------------------------------------

  ALTER TABLE "SETTINGS_CONTENTPARTDEFINITION" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table SETTINGS_CONTENTTYPEPARTDEFINI
--------------------------------------------------------

  ALTER TABLE "SETTINGS_CONTENTTYPEPARTDEFINI" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table ORCHARD_FRAMEWORK_CONTENTITEMR
--------------------------------------------------------

  ALTER TABLE "ORCHARD_FRAMEWORK_CONTENTITEMR" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table SETTINGS_SHELLPARAMETERRECORD
--------------------------------------------------------

  ALTER TABLE "SETTINGS_SHELLPARAMETERRECORD" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  Constraints for Table SETTINGS_SITESETTINGS2PARTRECO
--------------------------------------------------------

  ALTER TABLE "SETTINGS_SITESETTINGS2PARTRECO" ADD PRIMARY KEY ("ID");

--------------------------------------------------------
--  DDL for Index IDX_CONTENTITEMRECORD_ID
--------------------------------------------------------

  CREATE INDEX "IDX_CONTENTITEMRECORD_ID" ON "ORCHARD_FRAMEWORK_CONTENTITEMV" ("CONTENTITEMRECORD_ID");

--------------------------------------------------------
--  DDL for Index IDX_CONTENTTYPE_ID
--------------------------------------------------------

  CREATE INDEX "IDX_CONTENTTYPE_ID" ON "ORCHARD_FRAMEWORK_CONTENTITEMR" ("CONTENTTYPE_ID");


/
