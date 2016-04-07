DROP TRIGGER ASU.TPUTS_BEFORE_INSERT
/

--
-- TPUTS_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPUTS (Sequence)
--   TPUTS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPUTS_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TPUTS REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TPUTS.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

