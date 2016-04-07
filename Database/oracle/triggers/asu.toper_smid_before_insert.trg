DROP TRIGGER ASU.TOPER_SMID_BEFORE_INSERT
/

--
-- TOPER_SMID_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TOPER_SMID (Sequence)
--   TOPER_SMID (Table)
--
CREATE OR REPLACE TRIGGER ASU."TOPER_SMID_BEFORE_INSERT" 
  BEFORE INSERT ON ASU.TOPER_SMID   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
Begin
  SELECT asu.SEQ_TOPER_SMID.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

