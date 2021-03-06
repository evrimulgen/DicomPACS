DROP TRIGGER ASU.TVAC_PRIVATE_PLAN$BI
/

--
-- TVAC_PRIVATE_PLAN$BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_VAC_PRIVATE_PLAN (Sequence)
--   TVAC_PRIVATE_PLAN (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVAC_PRIVATE_PLAN$BI" 
 BEFORE
  INSERT
 ON asu.tvac_private_plan
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
    --  Column "FK_ID" uses sequence SEQ_VAC_PRIVATE_PLAN
    SELECT SEQ_VAC_PRIVATE_PLAN.NEXTVAL INTO :new.FK_ID FROM dual;
END;
/
SHOW ERRORS;


