ALTER TABLE ASU.TRECIPE_DLO_FED_PAC_CATEG
  DROP CONSTRAINT TRECIPE_FEDPAC_CATEG_PK
/

-- 
-- Non Foreign Key Constraints for Table TRECIPE_DLO_FED_PAC_CATEG 
-- 
ALTER TABLE ASU.TRECIPE_DLO_FED_PAC_CATEG ADD (
  CONSTRAINT TRECIPE_FEDPAC_CATEG_PK
 PRIMARY KEY
 (FK_ID))
/
