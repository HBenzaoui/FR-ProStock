CREATE TEMP TABLE tmp_table 
ON COMMIT DROP
AS
SELECT code_p,city,refer_p,nom_p,codebar_p,prixht_p,
prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,
qut_p,perissable_p,alertdays_p,qutmin_p,qutmax_p,alertqut_p,obser_p
FROM produit
WITH NO DATA;
ALTER TABLE tmp_table ADD UNIQUE (city);


copy tmp_table
from 'd:\testddddb200.csv' DELIMITERS ',' CSV HEADER;


INSERT INTO produit
SELECT DISTINCT ON (code_p) *
FROM tmp_table
ON CONFLICT  (code_p) DO UPDATE 
 SET code_p = excluded.code_p; 
    --  city = excluded.city;
	
	
---------- exportation to csv-----
COPY (SELECT code_p,refer_p,nom_p,codebar_p,prixht_p,
prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,
qut_p,perissable_p,alertdays_p,qutmin_p,qutmax_p,alertqut_p,obser_p FROM produit ORDER BY code_p) 
TO 'd:\exported.csv' DELIMITER ';' CSV HEADER;