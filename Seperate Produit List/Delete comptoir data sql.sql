DELETE FROM bonv_ctr_list;
DELETE FROM bonv_ctr;
DELETE FROM regclient WHERE code_bvctr <> 0;
DELETE FROM opt_cas_bnk WHERE code_bvctr <> 0;