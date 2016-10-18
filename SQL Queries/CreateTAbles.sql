*
Navicat PGSQL Data Transfer

Source Server         : PostgreSQL
Source Server Version : 90600
Source Host           : localhost:5432
Source Database       : GSTOCKDC
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90600
File Encoding         : 65001

Date: 2016-10-01 12:42:06
*/
-- ----------------------------
-- Sequence structure for codebarres_code_cb_seq
-- ----------------------------
CREATE SEQUENCE "codebarres_code_cb_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 2147483647
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for produit_code_p_seq
-- ----------------------------
CREATE SEQUENCE "produit_code_p_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 2147483647
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for bona_fac
-- ----------------------------
CREATE TABLE "bona_fac" (
"code_bafac" int4 NOT NULL,
"date_bafac" date,
"time_bafac" time(6),
"code_f" int4,
"montht_bafac" money DEFAULT 0,
"montver_bafac" money DEFAULT 0,
"valider_bafac" bool DEFAULT false,
"num_bafac" varchar(20) COLLATE "default",
"obser_bafac" text COLLATE "default",
"montttc_bafac" money DEFAULT 0,
"remise_bafac" money DEFAULT 0,
"num_cheque_bafac" varchar(50) COLLATE "default",
"code_mdpai" int2,
"code_cmpt" int2,
"timber_bafac" money DEFAULT 0,
"code_ur" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of bona_fac
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for bona_fac_list
-- ----------------------------
CREATE TABLE "bona_fac_list" (
"code_bafacl" int4 NOT NULL,
"code_bafac" int4,
"qut_p" float8 DEFAULT 0,
"prixht_p" money DEFAULT 0,
"cond_p" int4,
"code_p" int4,
"tva_p" int2 DEFAULT 0,
"prixvd_p" money DEFAULT 0,
"prixvr_p" money DEFAULT 0,
"prixvg_p" money DEFAULT 0,
"prixva_p" money DEFAULT 0,
"prixva2_p" money DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of bona_fac_list
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for bona_rec
-- ----------------------------
CREATE TABLE "bona_rec" (
"code_barec" int4 NOT NULL,
"date_barec" date,
"time_barec" time(6),
"code_f" int4,
"montht_barec" money DEFAULT 0,
"montver_barec" money DEFAULT 0,
"valider_barec" bool DEFAULT false,
"num_barec" varchar(20) COLLATE "default",
"obser_barec" text COLLATE "default",
"montttc_barec" money DEFAULT 0,
"remise_barec" money DEFAULT 0,
"num_cheque_barec" varchar(50) COLLATE "default",
"code_mdpai" int2,
"code_cmpt" int2,
"code_ur" int4,
"bon_or_no_barec" bool DEFAULT true
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of bona_rec
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for bona_rec_list
-- ----------------------------
CREATE TABLE "bona_rec_list" (
"code_barecl" int4 NOT NULL,
"code_barec" int4,
"qut_p" float8 DEFAULT 0,
"prixht_p" money DEFAULT 0,
"cond_p" int4,
"code_p" int4,
"tva_p" int2 DEFAULT 0,
"prixvd_p" money DEFAULT 0,
"prixvr_p" money DEFAULT 0,
"prixvg_p" money DEFAULT 0,
"prixva_p" money DEFAULT 0,
"prixva2_p" money DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of bona_rec_list
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for bonv_ctr
-- ----------------------------
CREATE TABLE "bonv_ctr" (
"code_bvctr" int4 NOT NULL,
"date_bvctr" date,
"time_bvctr" time(6),
"code_c" int4,
"montht_bvctr" money DEFAULT 0,
"montver_bvctr" money DEFAULT 0,
"valider_bvctr" bool DEFAULT false,
"num_bvctr" varchar(20) COLLATE "default",
"obser_bvctr" text COLLATE "default",
"montttc_bvctr" money DEFAULT 0,
"remise_bvctr" money DEFAULT 0,
"code_ur" int4,
"marge_bvctr" money DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of bonv_ctr
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for bonv_ctr_list
-- ----------------------------
CREATE TABLE "bonv_ctr_list" (
"code_bvctrl" int4 NOT NULL,
"code_bvctr" int4,
"qut_p" float8 DEFAULT 0,
"prixvd_p" money DEFAULT 0,
"cond_p" int4,
"code_p" int4,
"tva_p" int2 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of bonv_ctr_list
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for bonv_fac
-- ----------------------------
CREATE TABLE "bonv_fac" (
"code_bvfac" int4 NOT NULL,
"date_bvfac" date,
"time_bvfac" time(6),
"code_c" int4,
"montht_bvfac" money DEFAULT 0,
"montver_bvfac" money DEFAULT 0,
"valider_bvfac" bool DEFAULT false,
"num_bvfac" varchar(20) COLLATE "default",
"obser_bvfac" text COLLATE "default",
"montttc_bvfac" money DEFAULT 0,
"remise_bvfac" money DEFAULT 0,
"num_cheque_bvfac" varchar(50) COLLATE "default",
"code_mdpai" int2,
"code_cmpt" int2,
"timber_bvfac" money DEFAULT 0,
"code_ur" int4,
"marge_bvfac" money DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of bonv_fac
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for bonv_fac_list
-- ----------------------------
CREATE TABLE "bonv_fac_list" (
"code_bvfacl" int4 NOT NULL,
"code_bvfac" int4,
"qut_p" float8 DEFAULT 0,
"prixvd_p" money DEFAULT 0,
"cond_p" int4,
"code_p" int4,
"tva_p" int2 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of bonv_fac_list
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for bonv_liv
-- ----------------------------
CREATE TABLE "bonv_liv" (
"code_bvliv" int4 NOT NULL,
"date_bvliv" date,
"time_bvliv" time(6),
"code_c" int4,
"montht_bvliv" money DEFAULT 0,
"montver_bvliv" money DEFAULT 0,
"valider_bvliv" bool DEFAULT false,
"num_bvliv" varchar(20) COLLATE "default",
"obser_bvliv" text COLLATE "default",
"montttc_bvliv" money DEFAULT 0,
"remise_bvliv" money DEFAULT 0,
"num_cheque_bvliv" varchar(50) COLLATE "default",
"code_mdpai" int2,
"code_cmpt" int2,
"code_ur" int4,
"marge_bvliv" money DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of bonv_liv
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for bonv_liv_list
-- ----------------------------
CREATE TABLE "bonv_liv_list" (
"code_bvlivl" int4 NOT NULL,
"code_bvliv" int4,
"qut_p" float8 DEFAULT 0,
"prixvd_p" money DEFAULT 0,
"cond_p" int4,
"code_p" int4,
"tva_p" int2 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of bonv_liv_list
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for client
-- ----------------------------
CREATE TABLE "client" (
"nom_c" varchar(40) COLLATE "default",
"adr_c" varchar(60) COLLATE "default",
"ville_c" varchar(25) COLLATE "default",
"fix_c" char(15) COLLATE "default",
"mob_c" char(15) COLLATE "default",
"email_c" varchar(40) COLLATE "default",
"willaya_c" varchar(25) COLLATE "default",
"fax_c" char(15) COLLATE "default",
"activ_c" bool DEFAULT true,
"mob2_c" char(15) COLLATE "default",
"rc_c" char(25) COLLATE "default",
"nif_c" char(25) COLLATE "default",
"nart_c" char(25) COLLATE "default",
"nis_c" char(25) COLLATE "default",
"obser_c" text COLLATE "default",
"nbank_c" char(25) COLLATE "default",
"rib_c" char(25) COLLATE "default",
"activite_c" char(40) COLLATE "default",
"siteweb_c" varchar(40) COLLATE "default",
"oldcredit_c" money DEFAULT 0,
"maxcredit_c" money DEFAULT 0,
"code_c" int4 NOT NULL,
"tarification_c" int2 DEFAULT 0,
"credit_c" money DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of client
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for codebarres
-- ----------------------------
CREATE TABLE "codebarres" (
"nom_cb" varchar(20) COLLATE "default",
"code_p" int4,
"code_cb" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of codebarres
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for communes
-- ----------------------------
CREATE TABLE "communes" (
"code_cumm" int2 NOT NULL,
"codepostal_cumm" int4,
"nom_cumm" char(25) COLLATE "default",
"code_w" int2
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of communes
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for company
-- ----------------------------
CREATE TABLE "company" (
"code_comp" int4 NOT NULL,
"nom_comp" varchar(40) COLLATE "default",
"fix_comp" char(15) COLLATE "default",
"mob_comp" char(15) COLLATE "default",
"adr_comp" varchar(60) COLLATE "default",
"logo_comp" bytea
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of company
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for compte
-- ----------------------------
CREATE TABLE "compte" (
"code_cmpt" int2 NOT NULL,
"nom_cmpt" varchar(50) COLLATE "default",
"refer_cmpt" varchar(20) COLLATE "default",
"nature_cmpt" bool,
"oldcredit_cmpt" money DEFAULT 0,
"date_cmpt" date
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of compte
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for famproduit
-- ----------------------------
CREATE TABLE "famproduit" (
"code_famp" int2 DEFAULT nextval(('public.famproduit_code_famp_seq'::text)::regclass) NOT NULL,
"nom_famp" varchar(30) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "famproduit"."code_famp" IS '

';

-- ----------------------------
-- Records of famproduit
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for fournisseur
-- ----------------------------
CREATE TABLE "fournisseur" (
"code_f" int4 NOT NULL,
"nom_f" varchar(40) COLLATE "default",
"adr_f" char(50) COLLATE "default",
"ville_f" char(25) COLLATE "default",
"willaya_f" char(25) COLLATE "default",
"fix_f" char(15) COLLATE "default",
"mob_f" char(15) COLLATE "default",
"mob2_f" char(15) COLLATE "default",
"fax_f" char(15) COLLATE "default",
"email_f" char(40) COLLATE "default",
"obser_f" char(250) COLLATE "default",
"activ_f" bool DEFAULT true,
"rc_f" char(25) COLLATE "default",
"nif_f" char(25) COLLATE "default",
"nart_f" char(25) COLLATE "default",
"nis_f" char(25) COLLATE "default",
"nbank_f" char(25) COLLATE "default",
"rib_f" char(25) COLLATE "default",
"siteweb_f" char(40) COLLATE "default",
"oldcredit_f" money DEFAULT 0,
"maxcredit_f" money DEFAULT 0,
"credit_f" money DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of fournisseur
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for localisation
-- ----------------------------
CREATE TABLE "localisation" (
"code_l" int2 DEFAULT nextval(('public.magasin_code_m_seq'::text)::regclass) NOT NULL,
"nom_l" varchar(30) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of localisation
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for mode_paiement
-- ----------------------------
CREATE TABLE "mode_paiement" (
"code_mdpai" int2 NOT NULL,
"nom_mdpai" varchar(40) COLLATE "default",
"code_cmpt" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of mode_paiement
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for opt_cas_bnk
-- ----------------------------
CREATE TABLE "opt_cas_bnk" (
"code_ocb" int4 NOT NULL,
"date_ocb" date,
"nom_ocb" varchar(50) COLLATE "default",
"third_ocb" varchar(50) COLLATE "default",
"encaiss_ocb" money DEFAULT 0,
"decaiss_ocb" money DEFAULT 0,
"code_mdpai" int4,
"code_cmpt" int4,
"time_ocb" time(6),
"nature_ocb" bool,
"code_ur" int4,
"code_barec" int4 DEFAULT 0,
"code_bafac" int4 DEFAULT 0,
"code_bvliv" int4 DEFAULT 0,
"code_bvfac" int4 DEFAULT 0,
"code_bvctr" int4 DEFAULT 0,
"code_rc" int4 DEFAULT 0,
"code_rf" int DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of opt_cas_bnk
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for produit
-- ----------------------------
CREATE TABLE "produit" (
"code_p" int4 NOT NULL,
"nom_p" varchar(150) COLLATE "default",
"refer_p" varchar(20) COLLATE "default",
"qut_p" float8 DEFAULT 0,
"code_famp" int4,
"alertqut_p" int4 DEFAULT 0,
"code_f" int4,
"obser_p" text COLLATE "default",
"logo_p" bytea,
"code_l" int4,
"code_sfamp" int4,
"perissable_p" bool DEFAULT false,
"dateperiss_p" date,
"alertdays_p" int2 DEFAULT 0,
"prixht_p" money DEFAULT 0,
"tva_p" int2 DEFAULT 0,
"prixvd_p" money DEFAULT 0,
"prixvr_p" money DEFAULT 0,
"prixvg_p" money DEFAULT 0,
"prixva_p" money DEFAULT 0,
"prixva2_p" money DEFAULT 0,
"codebar_p" varchar(20) COLLATE "default",
"qutmax_p" float8 DEFAULT 0,
"qutmin_p" float8 DEFAULT 0,
"code_u" int2,
"qutini_p" float8 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of produit
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for regclient
-- ----------------------------
CREATE TABLE "regclient" (
"code_rc" int4 NOT NULL,
"nom_rc" varchar(50) COLLATE "default",
"date_rc" date,
"time_rc" time(6),
"montver_rc" money DEFAULT 0,
"code_mdpai" int4,
"num_cheque_rc" varchar(50) COLLATE "default",
"code_c" int4,
"code_ur" int4,
"obser_rc" text COLLATE "default",
"code_cmpt" int4,
"bon_or_no_rc" int2,
"code_bvliv" int4 DEFAULT 0,
"code_bvfac" int4 DEFAULT 0,
"code_bvctr" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of regclient
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for regfournisseur
-- ----------------------------
CREATE TABLE "regfournisseur" (
"code_rf" int4 NOT NULL,
"nom_rf" varchar(50) COLLATE "default",
"date_rf" date,
"time_rf" time(6),
"montver_rf" money DEFAULT 0,
"code_mdpai" int4,
"num_cheque_rf" varchar(50) COLLATE "default",
"code_f" int4,
"code_ur" int4,
"obser_rf" text COLLATE "default",
"code_cmpt" int4,
"code_barec" int4 DEFAULT 0,
"bon_or_no_rf" int2,
"code_bafac" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of regfournisseur
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for sfamproduit
-- ----------------------------
CREATE TABLE "sfamproduit" (
"code_sfamp" int2 NOT NULL,
"nom_sfamp" varchar(30) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of sfamproduit
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for unite
-- ----------------------------
CREATE TABLE "unite" (
"code_u" int2 DEFAULT nextval(('public.unite_code_u_seq01'::text)::regclass) NOT NULL,
"nom_u" varchar(15) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of unite
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
CREATE TABLE "users" (
"code_ur" int4 NOT NULL,
"nom_ur" varchar(40) COLLATE "default",
"password_ur" varchar(32) COLLATE "default",
"bl_ur" bool,
"fcv_ur" bool,
"rgc_ur" bool,
"br_ur" bool,
"fca_ur" bool,
"rgf_ur" bool,
"caisse_ur" bool,
"bank_ur" bool,
"client_ur" bool,
"four_ur" bool,
"type_ur" int2 DEFAULT 0,
"ctr_ur" bool,
"produit_ur" bool,
"famp_ur" bool,
"sfamp_ur" bool,
"mdpai_ur" bool,
"cmpt_ur" bool,
"unit_ur" bool,
"local_ur" bool
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "users"."ctr_ur" IS '
';

-- ----------------------------
-- Records of users
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Table structure for wilayas
-- ----------------------------
CREATE TABLE "wilayas" (
"code_w" int2 NOT NULL,
"nom_w" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of wilayas
-- ----------------------------
--BEGIN;
--COMMIT;

-- ----------------------------
-- Function structure for truncate_tables
-- ----------------------------
CREATE OR REPLACE FUNCTION "truncate_tables"("username" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$ 
DECLARE statements CURSOR FOR SELECT tablename FROM pg_tables
 WHERE tableowner = username
 AND schemaname ='public';
BEGIN         
  FOR stmt IN statements LOOP 
      EXECUTE 'TRUNCATE TABLE ' || quote_ident(stmt.tablename)
                                || ' CASCADE;'; 
  END LOOP;
END;
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table bona_fac
-- ----------------------------
ALTER TABLE "bona_fac" ADD PRIMARY KEY ("code_bafac");

-- ----------------------------
-- Primary Key structure for table bona_fac_list
-- ----------------------------
ALTER TABLE "bona_fac_list" ADD PRIMARY KEY ("code_bafacl");

-- ----------------------------
-- Primary Key structure for table bona_rec
-- ----------------------------
ALTER TABLE "bona_rec" ADD PRIMARY KEY ("code_barec");

-- ----------------------------
-- Primary Key structure for table bona_rec_list
-- ----------------------------
ALTER TABLE "bona_rec_list" ADD PRIMARY KEY ("code_barecl");

-- ----------------------------
-- Primary Key structure for table bonv_ctr
-- ----------------------------
ALTER TABLE "bonv_ctr" ADD PRIMARY KEY ("code_bvctr");

-- ----------------------------
-- Primary Key structure for table bonv_ctr_list
-- ----------------------------
ALTER TABLE "bonv_ctr_list" ADD PRIMARY KEY ("code_bvctrl");

-- ----------------------------
-- Primary Key structure for table bonv_fac
-- ----------------------------
ALTER TABLE "bonv_fac" ADD PRIMARY KEY ("code_bvfac");

-- ----------------------------
-- Primary Key structure for table bonv_fac_list
-- ----------------------------
ALTER TABLE "bonv_fac_list" ADD PRIMARY KEY ("code_bvfacl");

-- ----------------------------
-- Primary Key structure for table bonv_liv
-- ----------------------------
ALTER TABLE "bonv_liv" ADD PRIMARY KEY ("code_bvliv");

-- ----------------------------
-- Primary Key structure for table bonv_liv_list
-- ----------------------------
ALTER TABLE "bonv_liv_list" ADD PRIMARY KEY ("code_bvlivl");

-- ----------------------------
-- Primary Key structure for table client
-- ----------------------------
ALTER TABLE "client" ADD PRIMARY KEY ("code_c");

-- ----------------------------
-- Primary Key structure for table codebarres
-- ----------------------------
ALTER TABLE "codebarres" ADD PRIMARY KEY ("code_cb");

-- ----------------------------
-- Primary Key structure for table communes
-- ----------------------------
ALTER TABLE "communes" ADD PRIMARY KEY ("code_cumm");

-- ----------------------------
-- Primary Key structure for table company
-- ----------------------------
ALTER TABLE "company" ADD PRIMARY KEY ("code_comp");

-- ----------------------------
-- Primary Key structure for table compte
-- ----------------------------
ALTER TABLE "compte" ADD PRIMARY KEY ("code_cmpt");

-- ----------------------------
-- Primary Key structure for table famproduit
-- ----------------------------
ALTER TABLE "famproduit" ADD PRIMARY KEY ("code_famp");

-- ----------------------------
-- Primary Key structure for table fournisseur
-- ----------------------------
ALTER TABLE "fournisseur" ADD PRIMARY KEY ("code_f");

-- ----------------------------
-- Primary Key structure for table localisation
-- ----------------------------
ALTER TABLE "localisation" ADD PRIMARY KEY ("code_l");

-- ----------------------------
-- Primary Key structure for table mode_paiement
-- ----------------------------
ALTER TABLE "mode_paiement" ADD PRIMARY KEY ("code_mdpai");

-- ----------------------------
-- Primary Key structure for table opt_cas_bnk
-- ----------------------------
ALTER TABLE "opt_cas_bnk" ADD PRIMARY KEY ("code_ocb");

-- ----------------------------
-- Primary Key structure for table produit
-- ----------------------------
ALTER TABLE "produit" ADD PRIMARY KEY ("code_p");

-- ----------------------------
-- Primary Key structure for table regclient
-- ----------------------------
ALTER TABLE "regclient" ADD PRIMARY KEY ("code_rc");

-- ----------------------------
-- Primary Key structure for table regfournisseur
-- ----------------------------
ALTER TABLE "regfournisseur" ADD PRIMARY KEY ("code_rf");

-- ----------------------------
-- Primary Key structure for table sfamproduit
-- ----------------------------
ALTER TABLE "sfamproduit" ADD PRIMARY KEY ("code_sfamp");

-- ----------------------------
-- Primary Key structure for table unite
-- ----------------------------
ALTER TABLE "unite" ADD PRIMARY KEY ("code_u");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "users" ADD PRIMARY KEY ("code_ur");

-- ----------------------------
-- Primary Key structure for table wilayas
-- ----------------------------
ALTER TABLE "wilayas" ADD PRIMARY KEY ("code_w");
